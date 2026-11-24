package nl.ndsc.kitkatlauncher;

import android.content.DialogInterface;

/* JADX INFO: renamed from: nl.ndsc.kitkatlauncher.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC0186b implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ DialogFragmentC0185a f418a;

    DialogInterfaceOnClickListenerC0186b(DialogFragmentC0185a dialogFragmentC0185a) {
        this.f418a = dialogFragmentC0185a;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f418a.f414a.a();
    }
}
