package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0174p implements InterfaceC0183y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f400a;

    C0174p(AppsCustomizePagedView appsCustomizePagedView) {
        this.f400a = appsCustomizePagedView;
    }

    @Override // com.android.launcher3.InterfaceC0183y
    public final void a(AsyncTaskC0166h asyncTaskC0166h, C0184z c0184z) {
        this.f400a.f70a.remove(asyncTaskC0166h);
        if (asyncTaskC0166h.isCancelled()) {
            return;
        }
        this.f400a.a(c0184z, false);
    }
}
