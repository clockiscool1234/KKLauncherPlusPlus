package com.android.launcher3;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class aN implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f131a;

    aN(int i) {
        this.f131a = i;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) ((View) obj).getLayoutParams();
        CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) ((View) obj2).getLayoutParams();
        return (layoutParams.f74a + (layoutParams.b * this.f131a)) - (layoutParams2.f74a + (layoutParams2.b * this.f131a));
    }
}
