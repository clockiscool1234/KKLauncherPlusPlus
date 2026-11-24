package nl.ndsc.kitkatlauncher;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class z implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ x f447a;

    z(x xVar) {
        this.f447a = xVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f447a.dismiss();
    }
}
