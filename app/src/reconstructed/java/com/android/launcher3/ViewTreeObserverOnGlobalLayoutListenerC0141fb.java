package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.android.launcher3.fb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewTreeObserverOnGlobalLayoutListenerC0141fb implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eS f372a;
    private final /* synthetic */ HorizontalScrollView b;

    ViewTreeObserverOnGlobalLayoutListenerC0141fb(eS eSVar, HorizontalScrollView horizontalScrollView) {
        this.f372a = eSVar;
        this.b = horizontalScrollView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.b.scrollTo(((LinearLayout) this.f372a.findViewById(R.id.master_wallpaper_list)).getWidth(), 0);
        this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
