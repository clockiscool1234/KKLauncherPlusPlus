package nl.ndsc.kitkatlauncher;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class h implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ g f434a;

    h(g gVar) {
        this.f434a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        g.a(this.f434a);
    }
}
