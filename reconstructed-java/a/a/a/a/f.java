package a.a.a.a;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class f implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ ComponentCallbacksC0004e f5a;

    f(ComponentCallbacksC0004e componentCallbacksC0004e) {
        this.f5a = componentCallbacksC0004e;
    }

    @Override // a.a.a.a.m
    public final View a(int i) {
        if (this.f5a.H == null) {
            throw new IllegalStateException("Fragment does not have a view");
        }
        return this.f5a.H.findViewById(i);
    }
}
