package nl.ndsc.kitkatlauncher;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class q implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ p f440a;

    q(p pVar) {
        this.f440a = pVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        p.a(this.f440a);
    }
}
