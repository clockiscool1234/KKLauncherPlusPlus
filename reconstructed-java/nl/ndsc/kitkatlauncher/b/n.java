package nl.ndsc.kitkatlauncher.b;

import android.content.Context;
import android.widget.SeekBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
final class n implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ l f427a;
    private final /* synthetic */ TextView b;

    n(l lVar, TextView textView) {
        this.f427a = lVar;
        this.b = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.b.setText(String.valueOf((i * 10) + 50) + "%");
        this.f427a.d = (float) ((((double) i) + 5.0d) / 10.0d);
        this.f427a.c();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        a.a.a.c.d.d(this.f427a.getActivity(), new StringBuilder().append(this.f427a.d).toString());
        a.a.a.c.d.b((Context) this.f427a.getActivity(), true);
    }
}
