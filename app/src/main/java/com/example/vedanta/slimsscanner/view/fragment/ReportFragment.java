package com.example.vedanta.slimsscanner.view.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.model.Report;
import com.example.vedanta.slimsscanner.service.RestManager;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.PercentFormatter;

import java.text.DecimalFormat;
import java.util.ArrayList;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ReportFragment extends Fragment {

    private TextView textViewName, textViewStartDate, textViewTotalItem, textViewItemLost, textViewItemLoan;
    private PieChart chart;
    private LinearLayout mContent, mProgressBar;
    private RestManager mRestManager;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_report, container, false);
        getActivity().setTitle(getString(R.string.nav_laporan_inventarisasi));

        mRestManager = new RestManager();

        mContent = rootView.findViewById(R.id.linear_layout_content);
        mProgressBar = rootView.findViewById(R.id.progressBar);
        mContent.setVisibility(View.INVISIBLE);
        mProgressBar.setVisibility(View.VISIBLE);

        chart = rootView.findViewById(R.id.pie_chart);

        textViewName = rootView.findViewById(R.id.report_name);
        textViewStartDate = rootView.findViewById(R.id.start_date);
        textViewTotalItem = rootView.findViewById(R.id.total_item);
        textViewItemLost = rootView.findViewById(R.id.total_item_lost);
        textViewItemLoan = rootView.findViewById(R.id.total_item_loan);

        getReport();

        return rootView;
    }

    private void getReport() {
        Call<Report> call = mRestManager.getDataService().getReport();
        call.enqueue(new Callback<Report>() {
            @Override
            public void onResponse(Call<Report> call, Response<Report> response) {
                if (response.isSuccessful()) {
                    Report report = response.body();
                    textViewName.setText(report.getName());
                    textViewStartDate.setText(report.getStartDate());
                    textViewTotalItem.setText(String.valueOf(report.getTotalItem()));
                    textViewItemLost.setText(String.valueOf(report.getItemLost()));
                    textViewItemLoan.setText(String.valueOf(report.getItemLoan()));

                    showPieChart(report.getTotalItem(), report.getItemLost());

                }  else {
                    Toast.makeText(getContext(), "error code: " + response.code(), Toast.LENGTH_LONG).show();
                }
                mContent.setVisibility(View.VISIBLE);
                mProgressBar.setVisibility(View.INVISIBLE);
            }

            @Override
            public void onFailure(Call<Report> call, Throwable t) {
                mContent.setVisibility(View.VISIBLE);
                mProgressBar.setVisibility(View.INVISIBLE);
                Toast.makeText(getContext(), t.getMessage(), Toast.LENGTH_LONG).show();
            }
        });
    }

    private void showPieChart(int totalItem, int itemLost) {
        int itemExist = totalItem - itemLost;
        float itemExistPercent = ((float) itemExist / (float) totalItem) * (float) 100;
        float itemLostPercent = ((float) itemLost / (float) totalItem) * (float) 100;

        ArrayList<PieEntry> entries = new ArrayList<>();
        entries.add(new PieEntry(itemExistPercent, "Eksemplar Tersedia"));
        entries.add(new PieEntry(itemLostPercent, "Eksemplar Hilang"));

        PieDataSet dataSet = new PieDataSet(entries, "");
        dataSet.setColors(new int[] { R.color.pieChartItemExist, R.color.pieChartItemLost}, getContext());
        dataSet.setValueTextSize(16f);

        PieData data = new PieData(dataSet);
        data.setValueFormatter(new PercentFormatter());
        //data.setValueTextColor(Color.WHITE);

        chart.setData(data);
        chart.setEntryLabelTextSize(14f);
        chart.setEntryLabelColor(R.color.colorBlack);
        chart.invalidate();
    }

    public ReportFragment() {
        // Required empty public constructor
    }
}
