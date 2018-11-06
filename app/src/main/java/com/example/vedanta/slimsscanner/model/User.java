package com.example.vedanta.slimsscanner.model;

import com.google.gson.annotations.SerializedName;

public class User {

    @SerializedName("user_id")
    private int userId;

    @SerializedName("username")
    private String username;

    @SerializedName("real_name")
    private String realName;

    @SerializedName("email")
    private String email;

    public User(int userId, String username, String realName, String email) {
        this.userId = userId;
        this.username = username;
        this.realName = realName;
        this.email = email;
    }

    public int getUserId() {
        return userId;
    }

    public String getUsername() {
        return username;
    }

    public String getRealName() {
        return realName;
    }

    public String getEmail() {
        return email;
    }
}
