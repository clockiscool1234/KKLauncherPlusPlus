package com.android.launcher3;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

final class ItemConfiguration {
    final HashMap<View, CellAndSpan> cells = new HashMap<>();
    final ArrayList<View> sortedViews = new ArrayList<>();
    ArrayList<View> intersectingViews;
    boolean isSolution;
    int dragX;
    int dragY;
    int dragSpanX;
    int dragSpanY;
    private final HashMap<View, CellAndSpan> savedCells = new HashMap<>();

    void save() {
        for (View view : this.cells.keySet()) {
            this.cells.get(view).copyTo(this.savedCells.get(view));
        }
    }

    void add(View view, CellAndSpan cell) {
        this.cells.put(view, cell);
        this.savedCells.put(view, new CellAndSpan());
        this.sortedViews.add(view);
    }

    void restore() {
        for (View view : this.savedCells.keySet()) {
            this.savedCells.get(view).copyTo(this.cells.get(view));
        }
    }

    int area() {
        return this.dragSpanX * this.dragSpanY;
    }
}
