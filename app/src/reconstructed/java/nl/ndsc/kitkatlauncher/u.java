package nl.ndsc.kitkatlauncher;

import android.widget.NumberPicker;

/* JADX INFO: loaded from: classes.dex */
final class u implements NumberPicker.OnValueChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ p f443a;

    u(p pVar) {
        this.f443a = pVar;
    }

    @Override // android.widget.NumberPicker.OnValueChangeListener
    public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
        p.a(this.f443a, numberPicker, i, i2);
    }
}
