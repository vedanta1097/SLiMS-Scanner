package com.example.vedanta.slimsscanner.view.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import com.example.vedanta.slimsscanner.view.fragment.ItemLostFragment;
import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.view.fragment.ReportFragment;
import com.example.vedanta.slimsscanner.view.fragment.ItemExistFragment;
import com.example.vedanta.slimsscanner.view.fragment.StockTakeFragment;

import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_EMAIL;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_REAL_NAME;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_USERNAME;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_USER_ID;
import static com.example.vedanta.slimsscanner.util.Constant.sharedPrefFile;

public class MainActivity extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {

    private SharedPreferences mPreferences;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();

        mPreferences = getSharedPreferences(sharedPrefFile, MODE_PRIVATE);
        String name = mPreferences.getString(LOGIN_USERNAME, "");
        String email = mPreferences.getString(LOGIN_EMAIL, "");

        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);
        View headerView = navigationView.getHeaderView(0);

        TextView txNavHeaderName = headerView.findViewById(R.id.nav_header_name);
        TextView txNavHeaderEmail = headerView.findViewById(R.id.nav_header_email);
        txNavHeaderName.setText(name);
        txNavHeaderEmail.setText(email);

        if (savedInstanceState == null) {
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, new StockTakeFragment())
                    .commit();
        }
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_logout) {
            mPreferences = getSharedPreferences(sharedPrefFile, MODE_PRIVATE);
            mPreferences.edit().remove(LOGIN_USER_ID).apply();
            mPreferences.edit().remove(LOGIN_USERNAME).apply();
            mPreferences.edit().remove(LOGIN_REAL_NAME).apply();
            Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
            startActivity(intent);
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        int id = item.getItemId();

        if (id == R.id.nav_stock_take) {
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, new StockTakeFragment())
                    .commit();
        } else if (id == R.id.nav_item_exist) {
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, new ItemExistFragment())
                    .commit();
        } else if (id == R.id.nav_current_lost_item) {
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, new ItemLostFragment())
                    .commit();
        }  else if (id == R.id.nav_stock_take_report) {
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, new ReportFragment())
                    .commit();
        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
}
