package nl.ndsc.kitkatlauncher;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class C implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ B f411a;

    C(B b) {
        this.f411a = b;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f411a.dismiss();
    }
}
