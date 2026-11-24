package nl.ndsc.kitkatlauncher;

import android.widget.TextView;
import com.android.launcher3.Launcher;

/* JADX INFO: loaded from: classes.dex */
public class KLPLauncher extends Launcher {
    @Override // com.android.launcher3.Launcher
    protected final boolean a() {
        return a.a.a.c.d.c(this);
    }

    @Override // com.android.launcher3.Launcher
    protected final void b() {
        super.a(new TextView(this), new l(this, this), "");
    }
}
