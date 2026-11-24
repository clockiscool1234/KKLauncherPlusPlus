package com.android.launcher3;

final class CellAndSpan {
    int cellX;
    int cellY;
    int spanX;
    int spanY;

    CellAndSpan() {
    }

    CellAndSpan(int cellX, int cellY, int spanX, int spanY) {
        this.cellX = cellX;
        this.cellY = cellY;
        this.spanX = spanX;
        this.spanY = spanY;
    }

    void copyTo(CellAndSpan target) {
        target.cellX = this.cellX;
        target.cellY = this.cellY;
        target.spanX = this.spanX;
        target.spanY = this.spanY;
    }

    @Override
    public String toString() {
        return "(" + this.cellX + ", " + this.cellY + ": " + this.spanX + ", " + this.spanY + ")";
    }
}
