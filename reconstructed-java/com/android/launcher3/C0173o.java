package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0173o implements InterfaceC0183y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f399a;
    private final /* synthetic */ int b;

    C0173o(AppsCustomizePagedView appsCustomizePagedView, int i) {
        this.f399a = appsCustomizePagedView;
        this.b = i;
    }

    @Override // com.android.launcher3.InterfaceC0183y
    public final void a(AsyncTaskC0166h asyncTaskC0166h, C0184z c0184z) {
        try {
            try {
                Thread.sleep(this.b);
            } finally {
                if (asyncTaskC0166h.isCancelled()) {
                    c0184z.a(true);
                }
            }
        } catch (Exception e) {
        }
        AppsCustomizePagedView.a(this.f399a, asyncTaskC0166h, c0184z);
    }
}
