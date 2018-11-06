package com.example.vedanta.slimsscanner.service;

import com.example.vedanta.slimsscanner.model.Item;
import com.example.vedanta.slimsscanner.model.Login;
import com.example.vedanta.slimsscanner.model.Report;
import com.example.vedanta.slimsscanner.model.StockTakeItem;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface DataService {

    @FormUrlEncoded
    @POST("login.php")
    Call<Login> loginUser(
            @Field("username") String username,
            @Field("password") String password
    );

    @FormUrlEncoded
    @POST("stock_take_action.php")
    Call<StockTakeItem> stockTakeAction(
            @Field("item_code") String itemCode,
            @Field("real_name") String realName
    );

    @GET("stock_take_item_exist.php")
    Call<List<Item>> getItemExist();

    @GET("stock_take_item_lost.php")
    Call<List<Item>> getItemLost();

    @GET("stock_take_report.php")
    Call<Report> getReport();
}
