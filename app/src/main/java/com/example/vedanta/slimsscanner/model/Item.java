package com.example.vedanta.slimsscanner.model;

import com.google.gson.annotations.SerializedName;

public class Item {

    @SerializedName("item_code")
    private String itemCode;

    @SerializedName("title")
    private String title;

    @SerializedName("checked_by")
    private String checkedBy;

    public Item(String itemCode, String title, String checkedBy) {
        this.itemCode = itemCode;
        this.title = title;
        this.checkedBy = checkedBy;
    }

    public String getItemCode() {
        return itemCode;
    }

    public String getTitle() {
        return title;
    }

    public String getCheckedBy() {
        return checkedBy;
    }
}
