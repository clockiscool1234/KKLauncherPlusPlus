package com.android.launcher3;

import android.view.View;
import java.util.Comparator;

final class PositionComparator implements Comparator<View> {
    int edge;
    private final ViewCluster cluster;

    PositionComparator(ViewCluster cluster) {
        this.cluster = cluster;
    }

    @Override
    public int compare(View left, View right) {
        CellAndSpan leftCell = this.cluster.configuration.cells.get(left);
        CellAndSpan rightCell = this.cluster.configuration.cells.get(right);
        switch (this.edge) {
            case ViewCluster.LEFT:
                return rightCell.cellX + rightCell.spanX - leftCell.cellX - leftCell.spanX;
            case ViewCluster.TOP:
                return rightCell.cellY + rightCell.spanY - leftCell.cellY - leftCell.spanY;
            case ViewCluster.RIGHT:
                return leftCell.cellX - rightCell.cellX;
            default:
                return leftCell.cellY - rightCell.cellY;
        }
    }
}
