package nl.ndsc.kitkatlauncher.b;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class p implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ l f429a;

    p(l lVar) {
        this.f429a = lVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (nl.ndsc.kitkatlauncher.o.f438a) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.f429a.a();
        }
        return true;
    }
}
