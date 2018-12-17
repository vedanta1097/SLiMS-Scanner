package com.example.vedanta.slimsscanner.view.activity;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.Toast;

import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.model.StockTakeItem;
import com.example.vedanta.slimsscanner.service.RestManager;
import com.google.zxing.Result;

import me.dm7.barcodescanner.zxing.ZXingScannerView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_REAL_NAME;
import static com.example.vedanta.slimsscanner.util.Constant.sharedPrefFile;

public class ScannerActivity extends AppCompatActivity implements ZXingScannerView.ResultHandler {

    private ZXingScannerView mScannerView;
    private RestManager mRestManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_scanner);
        setupToolbar();

        mRestManager = new RestManager();

        ViewGroup contentFrame = (ViewGroup) findViewById(R.id.content_frame);
        mScannerView = new ZXingScannerView(this);
        contentFrame.addView(mScannerView);
    }

    @Override
    public void onResume() {
        super.onResume();
        mScannerView.setResultHandler(this);
        mScannerView.startCamera();
    }

    @Override
    public void onPause() {
        super.onPause();
        mScannerView.stopCamera();
    }

    @Override
    public void handleResult(Result rawResult) {
        String itemCode = rawResult.getText();
        stockTake(itemCode);

        // Wait 2 seconds to resume the preview.
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                mScannerView.resumeCameraPreview(ScannerActivity.this);
            }
        }, 2000);
    }

    private void stockTake(String itemCode) {
        SharedPreferences prefs = this.getSharedPreferences(sharedPrefFile, MODE_PRIVATE);
        String realName = prefs.getString(LOGIN_REAL_NAME, "");

        Call<StockTakeItem> call = mRestManager.getDataService().stockTakeAction(itemCode, realName);
        call.enqueue(new Callback<StockTakeItem>() {
            @Override
            public void onResponse(Call<StockTakeItem> call, Response<StockTakeItem> response) {
                if (response.isSuccessful()) {
                    StockTakeItem itemInfo = response.body();
                    createAlertDialog(false, itemInfo.getMessage()).show();
                } else {
                    createAlertDialog(true, "error code: " + response.code()).show();
                }
            }

            @Override
            public void onFailure(Call<StockTakeItem> call, Throwable t) {
                Toast.makeText(getApplicationContext(), t.getMessage(), Toast.LENGTH_LONG).show();
            }
        });
    }

    private Dialog createAlertDialog(boolean error, String message) {
        String alertTitle;
        alertTitle = error ? "Scan Error" : "Scan Success";
        return new android.app.AlertDialog.Builder(this)
                .setTitle(alertTitle)
                .setMessage(message)
                .create();
    }

    private void setupToolbar() {
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        final ActionBar ab = getSupportActionBar();
        if(ab != null) {
            ab.setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            Intent intent = new Intent(this, MainActivity.class);
            startActivity(intent);
            finish();
        }
        return super.onOptionsItemSelected(item);
    }
}
