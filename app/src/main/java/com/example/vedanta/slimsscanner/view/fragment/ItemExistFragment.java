package com.example.vedanta.slimsscanner.view.fragment;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.model.Item;
import com.example.vedanta.slimsscanner.service.RestManager;
import com.example.vedanta.slimsscanner.view.adapter.ItemExistAdapter;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static android.content.Context.MODE_PRIVATE;
import static com.example.vedanta.slimsscanner.util.Constant.LOGIN_REAL_NAME;
import static com.example.vedanta.slimsscanner.util.Constant.sharedPrefFile;

public class ItemExistFragment extends Fragment {

    private RecyclerView mRecyclerView;
    private LinearLayout mProgressBar;
    private RestManager mRestManager;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_item_exist, container, false);
        getActivity().setTitle(getString(R.string.nav_eksemplar_tersedia));

        mRestManager = new RestManager();

        mProgressBar = rootView.findViewById(R.id.progressBar);
        mProgressBar.setVisibility(View.INVISIBLE);

        mRecyclerView = rootView.findViewById(R.id.recycler_view_item_list);
        mRecyclerView.addItemDecoration(new SimpleDividerItemDecoration(getContext()));
        mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));

        getAllItemExist();

        return rootView;
    }

    private void getAllItemExist() {
        mRecyclerView.setVisibility(View.INVISIBLE);
        mProgressBar.setVisibility(View.VISIBLE);

        SharedPreferences prefs = getContext().getSharedPreferences(sharedPrefFile, MODE_PRIVATE);
        String realName = prefs.getString(LOGIN_REAL_NAME, "");

        Call<List<Item>> call = mRestManager.getDataService().getItemExist(realName);

        call.enqueue(new Callback<List<Item>>() {
            @Override
            public void onResponse(Call<List<Item>> call, Response<List<Item>> response) {
                if (response.isSuccessful()) {
                    ItemExistAdapter adapter = new ItemExistAdapter(response.body());
                    mRecyclerView.setAdapter(adapter);
                } else {
                    Toast.makeText(getContext(), "error code: " + response.code(), Toast.LENGTH_LONG).show();
                }
                mRecyclerView.setVisibility(View.VISIBLE);
                mProgressBar.setVisibility(View.INVISIBLE);
            }

            @Override
            public void onFailure(Call<List<Item>> call, Throwable t) {
                mRecyclerView.setVisibility(View.VISIBLE);
                mProgressBar.setVisibility(View.INVISIBLE);
                Toast.makeText(getContext(), t.getMessage(), Toast.LENGTH_LONG).show();
            }
        });
    }

    public ItemExistFragment() {
        // Required empty public constructor
    }
}
