package com.android.launcher3;

import android.graphics.Rect;
import java.util.Collections;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

final class ViewCluster {
    static final int LEFT = 0;
    static final int TOP = 1;
    static final int RIGHT = 2;
    static final int BOTTOM = 3;

    final ArrayList<View> views;
    final ItemConfiguration configuration;
    final int[] leftEdge;
    final int[] rightEdge;
    final int[] topEdge;
    final int[] bottomEdge;
    final PositionComparator positionComparator;
    private final Rect boundingRect = new Rect();
    private boolean leftEdgeDirty;
    private boolean rightEdgeDirty;
    private boolean topEdgeDirty;
    private boolean bottomEdgeDirty;
    private boolean boundingRectDirty;

    ViewCluster(int columnCount, int rowCount, List<View> views, ItemConfiguration configuration) {
        this.views = new ArrayList<>(views);
        this.configuration = configuration;
        this.leftEdge = new int[rowCount];
        this.rightEdge = new int[rowCount];
        this.topEdge = new int[columnCount];
        this.bottomEdge = new int[columnCount];
        this.positionComparator = new PositionComparator(this);
        resetEdges();
    }

    void resetEdges() {
        for (int i = 0; i < this.leftEdge.length; i++) {
            this.leftEdge[i] = -1;
            this.rightEdge[i] = -1;
        }
        for (int i = 0; i < this.topEdge.length; i++) {
            this.topEdge[i] = -1;
            this.bottomEdge[i] = -1;
        }
        this.leftEdgeDirty = true;
        this.rightEdgeDirty = true;
        this.topEdgeDirty = true;
        this.bottomEdgeDirty = true;
        this.boundingRectDirty = true;
    }

    void computeEdge(int edge, int[] values) {
        for (View view : this.views) {
            CellAndSpan cell = this.configuration.cells.get(view);
            switch (edge) {
                case LEFT:
                    for (int y = cell.cellY; y < cell.cellY + cell.spanY; y++) {
                        if (values[y] < 0 || cell.cellX < values[y]) {
                            values[y] = cell.cellX;
                        }
                    }
                    break;
                case TOP:
                    for (int x = cell.cellX; x < cell.cellX + cell.spanX; x++) {
                        if (values[x] < 0 || cell.cellY < values[x]) {
                            values[x] = cell.cellY;
                        }
                    }
                    break;
                case RIGHT:
                    for (int y = cell.cellY; y < cell.cellY + cell.spanY; y++) {
                        if (cell.cellX + cell.spanX > values[y]) {
                            values[y] = cell.cellX + cell.spanX;
                        }
                    }
                    break;
                case BOTTOM:
                    for (int x = cell.cellX; x < cell.cellX + cell.spanX; x++) {
                        if (cell.cellY + cell.spanY > values[x]) {
                            values[x] = cell.cellY + cell.spanY;
                        }
                    }
                    break;
                default:
                    throw new IllegalArgumentException("Unknown edge: " + edge);
            }
        }
        switch (edge) {
            case LEFT: this.leftEdgeDirty = false; break;
            case TOP: this.topEdgeDirty = false; break;
            case RIGHT: this.rightEdgeDirty = false; break;
            case BOTTOM: this.bottomEdgeDirty = false; break;
        }
    }

    int[] getEdge(int edge) {
        switch (edge) {
            case LEFT:
                if (this.leftEdgeDirty) computeEdge(LEFT, this.leftEdge);
                return this.leftEdge;
            case TOP:
                if (this.topEdgeDirty) computeEdge(TOP, this.topEdge);
                return this.topEdge;
            case RIGHT:
                if (this.rightEdgeDirty) computeEdge(RIGHT, this.rightEdge);
                return this.rightEdge;
            case BOTTOM:
                if (this.bottomEdgeDirty) computeEdge(BOTTOM, this.bottomEdge);
                return this.bottomEdge;
            default:
                throw new IllegalArgumentException("Unknown edge: " + edge);
        }
    }

    boolean isViewTouchingEdge(View view, int edge) {
        CellAndSpan cell = this.configuration.cells.get(view);
        int[] values = getEdge(edge);
        switch (edge) {
            case LEFT:
                for (int y = cell.cellY; y < cell.cellY + cell.spanY; y++) {
                    if (values[y] == cell.cellX + cell.spanX) return true;
                }
                return false;
            case TOP:
                for (int x = cell.cellX; x < cell.cellX + cell.spanX; x++) {
                    if (values[x] == cell.cellY + cell.spanY) return true;
                }
                return false;
            case RIGHT:
                for (int y = cell.cellY; y < cell.cellY + cell.spanY; y++) {
                    if (values[y] == cell.cellX) return true;
                }
                return false;
            case BOTTOM:
                for (int x = cell.cellX; x < cell.cellX + cell.spanX; x++) {
                    if (values[x] == cell.cellY) return true;
                }
                return false;
            default:
                throw new IllegalArgumentException("Unknown edge: " + edge);
        }
    }

    void shift(int edge, int delta) {
        for (View view : this.views) {
            CellAndSpan cell = this.configuration.cells.get(view);
            switch (edge) {
                case LEFT: cell.cellX -= delta; break;
                case TOP: cell.cellY -= delta; break;
                case RIGHT: cell.cellX += delta; break;
                case BOTTOM: cell.cellY += delta; break;
                default: throw new IllegalArgumentException("Unknown edge: " + edge);
            }
        }
        resetEdges();
    }

    void addView(View view) {
        this.views.add(view);
        resetEdges();
    }

    void sortConfigurationForEdgePush(int edge) {
        this.positionComparator.edge = edge;
        Collections.sort(this.configuration.sortedViews, this.positionComparator);
    }

    Rect getBoundingRect() {
        if (this.boundingRectDirty) {
            boolean first = true;
            for (View view : this.views) {
                CellAndSpan cell = this.configuration.cells.get(view);
                if (first) {
                    this.boundingRect.set(cell.cellX, cell.cellY, cell.cellX + cell.spanX, cell.cellY + cell.spanY);
                    first = false;
                } else {
                    this.boundingRect.union(cell.cellX, cell.cellY, cell.cellX + cell.spanX, cell.cellY + cell.spanY);
                }
            }
            if (first) this.boundingRect.setEmpty();
            this.boundingRectDirty = false;
        }
        return this.boundingRect;
    }
}
