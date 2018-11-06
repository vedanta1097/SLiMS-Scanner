package com.example.vedanta.slimsscanner.view.adapter;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.model.Item;

import java.util.List;

public class ItemLostAdapter extends RecyclerView.Adapter<ItemLostAdapter.ItemViewHolder> {

    private List<Item> mItems;
    private Context mContext;

    public ItemLostAdapter(Context context, List<Item> items) {
        this.mItems = items;
        mContext = context;
    }

    @NonNull
    @Override
    public ItemLostAdapter.ItemViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_row, viewGroup, false);
        return new ItemViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ItemLostAdapter.ItemViewHolder holder, int position) {
        if (mItems != null) {
            holder.textViewItemCode.setText(mItems.get(position).getItemCode());
            holder.textViewItemCode.setTextColor(ContextCompat.getColor(mContext, R.color.colorItemCodeLost));
            holder.textViewItemTitle.setText(mItems.get(position).getTitle());
            holder.textViewItemCheckedBy.setText(mItems.get(position).getCheckedBy());
        }
    }

    @Override
    public int getItemCount() {
        if (mItems != null) {
            return mItems.size();
        } else {
            return 0;
        }
    }

    public class ItemViewHolder extends RecyclerView.ViewHolder {
        private final TextView textViewItemCode, textViewItemTitle, textViewItemCheckedBy;

        public ItemViewHolder(@NonNull View itemView) {
            super(itemView);
            textViewItemCode = itemView.findViewById(R.id.row_item_code);
            textViewItemTitle = itemView.findViewById(R.id.row_item_title);
            textViewItemCheckedBy = itemView.findViewById(R.id.row_item_checked_by);
        }
    }
}
