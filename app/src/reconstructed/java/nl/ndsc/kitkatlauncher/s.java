package nl.ndsc.kitkatlauncher;

import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
final class s implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ p f441a;

    s(p pVar) {
        this.f441a = pVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.f441a.f439a.setVisibility(8);
            this.f441a.a().setVisibility(8);
        }
    }
}
