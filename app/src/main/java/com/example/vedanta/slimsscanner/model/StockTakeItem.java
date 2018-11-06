package com.example.vedanta.slimsscanner.model;

import com.google.gson.annotations.SerializedName;

public class StockTakeItem {

    @SerializedName("error")
    private boolean error;

    @SerializedName("message")
    private String message;

    public StockTakeItem(boolean error, String message) {
        this.error = error;
        this.message = message;
    }

    public boolean isError() {
        return error;
    }

    public String getMessage() {
        return message;
    }
}
