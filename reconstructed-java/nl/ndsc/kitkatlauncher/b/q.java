package nl.ndsc.kitkatlauncher.b;

import android.content.Context;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
final class q implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ l f430a;

    q(l lVar) {
        this.f430a = lVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.f430a.b();
        } else {
            l.f(this.f430a);
        }
        this.f430a.e = z;
        a.a.a.c.d.a(this.f430a.getActivity(), z);
        a.a.a.c.d.b((Context) this.f430a.getActivity(), true);
        this.f430a.c();
    }
}
