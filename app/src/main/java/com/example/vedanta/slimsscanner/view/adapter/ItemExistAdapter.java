package com.example.vedanta.slimsscanner.view.adapter;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.example.vedanta.slimsscanner.R;
import com.example.vedanta.slimsscanner.model.Item;

import java.util.List;

public class ItemExistAdapter extends RecyclerView.Adapter<ItemExistAdapter.ItemViewHolder> {

    private List<Item> mItems;

    public ItemExistAdapter(List<Item> items) {
        mItems = items;
    }

    @NonNull
    @Override
    public ItemExistAdapter.ItemViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_row, viewGroup, false);
        return new ItemViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ItemExistAdapter.ItemViewHolder holder, int position) {
        if (mItems != null) {
            holder.textViewItemCode.setText(mItems.get(position).getItemCode());
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
