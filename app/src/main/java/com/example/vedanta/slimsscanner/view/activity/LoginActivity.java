package com.example.vedanta.slimsscanner.view.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.model.Login;
import com.example.vedanta.slimsscanner.service.RestManager;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_EMAIL;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_REAL_NAME;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_USERNAME;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_USER_ID;
import static com.example.vedanta.slimsscanner.util.Constant.sharedPrefFile;

public class LoginActivity extends AppCompatActivity {

    private RestManager mRestManager;
    private SharedPreferences mPreferences;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        final EditText mUsernameEditText = findViewById(R.id.edit_text_username);
        final EditText mPasswordEditText = findViewById(R.id.edit_text_password);
        Button mLoginButton = findViewById(R.id.button_login);

        mPreferences = getSharedPreferences(sharedPrefFile, MODE_PRIVATE);
        int loginUserId = mPreferences.getInt(LOGIN_USER_ID, -1);
        if (loginUserId != -1) {
            Intent intent = new Intent(getApplicationContext(), MainActivity.class);
            startActivity(intent);
            killActivity();
        }

        mLoginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (TextUtils.isEmpty(mUsernameEditText.getText()) || TextUtils.isEmpty(mPasswordEditText.getText())) {
                    Toast.makeText(getApplicationContext(), "Username atau password harus diisi.", Toast.LENGTH_SHORT).show();
                } else {
                    String username = mUsernameEditText.getText().toString();
                    String password = mPasswordEditText.getText().toString();
                    mRestManager = new RestManager();
                    handleLogin(username, password);
                }
            }
        });
    }

    public void handleLogin(String username, String password) {
        Call<Login> loginCall = mRestManager.getDataService().loginUser(username, password);

        loginCall.enqueue(new Callback<Login>() {
            @Override
            public void onResponse(Call<Login> call, Response<Login> response) {
                if (response.isSuccessful()) {
                    Login loginData = response.body();
                    Toast.makeText(getApplicationContext(), loginData.getMessage(), Toast.LENGTH_LONG).show();
                    if (!loginData.isError()) {
                        setLoginPreferences(loginData);
                        Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                        startActivity(intent);
                        killActivity();
                    }
                } else {
                    Toast.makeText(getApplicationContext(), "error code: " + response.code(), Toast.LENGTH_LONG).show();
                }
            }

            @Override
            public void onFailure(Call<Login> call, Throwable t) {
                Toast.makeText(getApplicationContext(), t.getMessage(), Toast.LENGTH_LONG).show();
            }
        });
    }

    private void setLoginPreferences(Login loginData) {
        SharedPreferences.Editor preferencesEditor = mPreferences.edit();
        preferencesEditor.putInt(LOGIN_USER_ID, loginData.getUser().getUserId());
        preferencesEditor.putString(LOGIN_USERNAME, loginData.getUser().getUsername());
        preferencesEditor.putString(LOGIN_REAL_NAME, loginData.getUser().getRealName());
        preferencesEditor.putString(LOGIN_EMAIL, loginData.getUser().getEmail());
        preferencesEditor.apply();
    }

    private void killActivity() {
        finish();
    }
}
