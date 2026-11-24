package nl.ndsc.kitkatlauncher;

import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
final class t implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ p f442a;

    t(p pVar) {
        this.f442a = pVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.f442a.f439a.setVisibility(0);
            this.f442a.a().setVisibility(4);
        }
    }
}
