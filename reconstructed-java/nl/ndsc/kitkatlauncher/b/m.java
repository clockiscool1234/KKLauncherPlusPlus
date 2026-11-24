package nl.ndsc.kitkatlauncher.b;

import android.content.Context;
import android.widget.SeekBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
final class m implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ l f426a;
    private final /* synthetic */ TextView b;

    m(l lVar, TextView textView) {
        this.f426a = lVar;
        this.b = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.b.setText(String.valueOf((i * 10) + 50) + "%");
        this.f426a.c = (float) ((((double) i) + 5.0d) / 10.0d);
        this.f426a.c();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        a.a.a.c.d.c(this.f426a.getActivity(), new StringBuilder().append(this.f426a.c).toString());
        a.a.a.c.d.b((Context) this.f426a.getActivity(), true);
    }
}
