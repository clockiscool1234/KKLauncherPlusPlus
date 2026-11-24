package nl.ndsc.kitkatlauncher;

import a.a.a.c.d;
import android.widget.TextView;
import com.android.launcher3.Launcher;

public class KLPLauncher extends Launcher {
    @Override // com.android.launcher3.Launcher
    protected final boolean a() {
        return d.c(this);
    }

    @Override // com.android.launcher3.Launcher
    protected final void b() {
        super.a(new TextView(this), new l(this, this), "");
    }
}
