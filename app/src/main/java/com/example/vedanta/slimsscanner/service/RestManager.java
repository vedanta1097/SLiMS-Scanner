package com.example.vedanta.slimsscanner.service;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

import static com.example.vedanta.slimsscanner.util.Constant.API_BASE_URL;

public class RestManager {

    private DataService mDataService;

    public DataService getDataService() {

        if (mDataService == null) {
            Retrofit retrofit = new Retrofit.Builder()
                    .baseUrl(API_BASE_URL)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();

            mDataService = retrofit.create(DataService.class);
        }

        return mDataService;
    }
}
