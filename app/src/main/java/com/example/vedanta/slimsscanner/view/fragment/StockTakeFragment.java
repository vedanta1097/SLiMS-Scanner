package com.example.vedanta.slimsscanner.view.fragment;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;

import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.model.StockTakeItem;
import com.example.vedanta.slimsscanner.service.RestManager;
import com.example.vedanta.slimsscanner.view.activity.ScannerActivity;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static android.content.Context.MODE_PRIVATE;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_REAL_NAME;
import static com.example.vedanta.slimsscanner.util.Constant.sharedPrefFile;

public class StockTakeFragment extends Fragment {

    private RestManager mRestManager;
    private EditText itemCodeEditText;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_stock_take, container, false);
        getActivity().setTitle(getString(R.string.nav_stock_take));

        mRestManager = new RestManager();

        itemCodeEditText = rootView.findViewById(R.id.item_code_edit_text);
        final Button changeStatusBtn = rootView.findViewById(R.id.change_status_btn);
        final ImageButton launchBarcodeScannerBtn = rootView.findViewById(R.id.launch_scanner_btn);

        changeStatusBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SharedPreferences prefs = getActivity().getSharedPreferences(sharedPrefFile, MODE_PRIVATE);
                String realName = prefs.getString(LOGIN_REAL_NAME, "");

                if (TextUtils.isEmpty(itemCodeEditText.getText())) {
                    Toast.makeText(getContext(), "Kode buku harus diisi.", Toast.LENGTH_SHORT).show();
                } else {
                    String itemCode = itemCodeEditText.getText().toString();
                    stockTakeAction(itemCode, realName);
                }
            }
        });

        launchBarcodeScannerBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getContext(), ScannerActivity.class);
                startActivity(intent);
            }
        });

        return rootView;
    }

    private void stockTakeAction(final String itemCode, String realName) {
        Call<StockTakeItem> call = mRestManager.getDataService().stockTakeAction(itemCode, realName);
        call.enqueue(new Callback<StockTakeItem>() {
            @Override
            public void onResponse(Call<StockTakeItem> call, Response<StockTakeItem> response) {
                if (response.isSuccessful()) {
                    StockTakeItem itemInfo = response.body();
                    createAlertDialog(false, itemInfo.getMessage()).show();
                    itemCodeEditText.setText("");
                } else {
                    createAlertDialog(true, "error code: " + response.code()).show();
                }
            }

            @Override
            public void onFailure(Call<StockTakeItem> call, Throwable t) {
                Toast.makeText(getContext(), "Kode buku tidak valid.", Toast.LENGTH_LONG).show();
            }
        });
    }

    private Dialog createAlertDialog(boolean error, String message) {
        String alertTitle;
        alertTitle = error ? "Error" : "Success";
        return new AlertDialog.Builder(getContext())
                .setTitle(alertTitle)
                .setMessage(message)
                .create();
    }

    public StockTakeFragment() {
        // Required empty public constructor
    }
}
