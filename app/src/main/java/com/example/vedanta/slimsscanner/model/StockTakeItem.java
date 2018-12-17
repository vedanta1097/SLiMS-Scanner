package com.example.vedanta.slimsscanner.model;

import com.google.gson.annotations.SerializedName;

public class StockTakeItem {

    @SerializedName("message")
    private String message;

    public StockTakeItem(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}
