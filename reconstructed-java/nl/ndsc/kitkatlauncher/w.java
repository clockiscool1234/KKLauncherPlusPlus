package nl.ndsc.kitkatlauncher;

import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
final class w implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ v f445a;
    private final /* synthetic */ nl.ndsc.kitkatlauncher.a.a b;
    private final /* synthetic */ View c;

    w(v vVar, nl.ndsc.kitkatlauncher.a.a aVar, View view) {
        this.f445a = vVar;
        this.b = aVar;
        this.c = view;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Log.d("KLP", "onCheckedChange " + this.b.c + " : " + z);
        if (z) {
            a.a.a.c.d.a(this.f445a.getContext(), this.b);
            this.f445a.a(this.c);
        } else {
            a.a.a.c.d.b(this.f445a.getContext(), this.b);
            v vVar = this.f445a;
            v.a(this.c, true);
        }
        a.a.a.c.d.b(this.f445a.f444a, true);
    }
}
