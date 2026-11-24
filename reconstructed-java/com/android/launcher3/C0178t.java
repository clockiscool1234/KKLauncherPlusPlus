package com.android.launcher3;

import android.view.View;
import android.widget.TabHost;

/* JADX INFO: renamed from: com.android.launcher3.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0178t implements TabHost.TabContentFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AppsCustomizePagedView f404a;

    C0178t(AppsCustomizeTabHost appsCustomizeTabHost, AppsCustomizePagedView appsCustomizePagedView) {
        this.f404a = appsCustomizePagedView;
    }

    @Override // android.widget.TabHost.TabContentFactory
    public final View createTabContent(String str) {
        return this.f404a;
    }
}
