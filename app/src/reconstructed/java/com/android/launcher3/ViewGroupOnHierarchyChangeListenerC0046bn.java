package com.android.launcher3;

import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* JADX INFO: renamed from: com.android.launcher3.bn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewGroupOnHierarchyChangeListenerC0046bn implements ViewGroup.OnHierarchyChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f199a = new HashMap();
    private boolean b = false;

    public final void a(View view) {
        this.b = false;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
    }
}
