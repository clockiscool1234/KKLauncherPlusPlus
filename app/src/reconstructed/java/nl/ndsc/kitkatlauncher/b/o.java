package nl.ndsc.kitkatlauncher.b;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class o implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ l f428a;

    o(l lVar) {
        this.f428a = lVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (nl.ndsc.kitkatlauncher.o.f438a) {
            return !this.f428a.f;
        }
        if (motionEvent.getAction() != 0) {
            return true;
        }
        this.f428a.a();
        return true;
    }
}
