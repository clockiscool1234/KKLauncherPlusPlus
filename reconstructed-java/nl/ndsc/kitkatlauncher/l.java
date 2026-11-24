package nl.ndsc.kitkatlauncher;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.TextView;
import android.widget.Toast;
import com.android.launcher3.InterfaceC0077cr;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
final class l implements InterfaceC0077cr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f435a = false;
    private /* synthetic */ KLPLauncher b;
    private final /* synthetic */ Context c;

    l(KLPLauncher kLPLauncher, Context context) {
        this.b = kLPLauncher;
        this.c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.b.h().setBackgroundAlpha(0.0f);
        this.b.h().e(1, false);
    }

    static /* synthetic */ void b(l lVar) {
        Intent intent = new Intent();
        intent.addFlags(65536);
        intent.setClassName("com.google.android.googlequicksearchbox", "com.google.android.googlequicksearchbox.SearchActivity");
        if (!(lVar.b.getPackageManager().queryIntentActivities(intent, 65536).size() > 0)) {
            lVar.b();
            lVar.f435a = false;
            Toast.makeText(lVar.c, "Failed to start Google Now", 0).show();
        } else {
            lVar.b.a(new TextView(lVar.c), intent, intent);
            if (a.a.a.c.d.b(lVar.c).equals("Slide")) {
                lVar.b.overridePendingTransition(R.anim.push_left_in, R.anim.fade_out_fast);
            } else {
                lVar.b.overridePendingTransition(R.anim.fade_in_fast, R.anim.fade_out_fast);
            }
            new Handler().postDelayed(new m(lVar), 500L);
        }
    }

    @Override // com.android.launcher3.InterfaceC0077cr
    public final void a() {
        if (this.f435a) {
            return;
        }
        this.f435a = true;
        new Handler().postDelayed(new n(this), 100L);
    }
}
