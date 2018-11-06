package com.example.vedanta.slimsscanner.model;

import com.google.gson.annotations.SerializedName;

public class Report {

    @SerializedName("stock_take_name")
    private String name;

    @SerializedName("start_date")
    private String startDate;

    @SerializedName("total_item")
    private int totalItem;

    @SerializedName("total_item_lost")
    private int itemLost;

    @SerializedName("total_item_loan")
    private int itemLoan;

    public Report(String name, String startDate, int itemTaked, int itemLost, int itemLoan) {
        this.name = name;
        this.startDate = startDate;
        this.totalItem = itemTaked;
        this.itemLost = itemLost;
        this.itemLoan = itemLoan;
    }

    public String getName() {
        return name;
    }

    public String getStartDate() {
        return startDate;
    }

    public int getTotalItem() {
        return totalItem;
    }

    public int getItemLost() {
        return itemLost;
    }

    public int getItemLoan() {
        return itemLoan;
    }
}
