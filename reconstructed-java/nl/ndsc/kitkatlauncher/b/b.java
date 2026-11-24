package nl.ndsc.kitkatlauncher.b;

import android.os.Bundle;
import android.preference.Preference;
import com.android.launcher3.R;
import nl.ndsc.kitkatlauncher.B;
import nl.ndsc.kitkatlauncher.D;
import nl.ndsc.kitkatlauncher.DialogFragmentC0185a;
import nl.ndsc.kitkatlauncher.InterfaceC0188d;

/* JADX INFO: loaded from: classes.dex */
public final class b extends r implements D, InterfaceC0188d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f419a = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        a("setting_backup_key", "Last backup: " + a.a.a.c.d.j(getActivity()));
    }

    @Override // nl.ndsc.kitkatlauncher.InterfaceC0188d
    public final void a() {
        new c(this, getActivity()).execute(new Void[0]);
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    public final void a(String str) {
        if (this.f419a) {
            return;
        }
        if (str.equals("setting_backup_key")) {
            if (nl.ndsc.kitkatlauncher.o.f438a) {
                DialogFragmentC0185a dialogFragmentC0185a = new DialogFragmentC0185a();
                dialogFragmentC0185a.setTargetFragment(this, 0);
                dialogFragmentC0185a.show(getFragmentManager(), "BACKUPDIALOG");
            } else {
                d();
            }
        }
        if (str.equals("setting_restore_key")) {
            if (!nl.ndsc.kitkatlauncher.o.f438a) {
                d();
                return;
            }
            B b = new B();
            b.setTargetFragment(this, 0);
            b.show(getFragmentManager(), "RESTOREDIALOG");
        }
    }

    @Override // nl.ndsc.kitkatlauncher.D
    public final void a(nl.ndsc.kitkatlauncher.a.c cVar) {
        if (cVar.f417a != null) {
            new d(this, getActivity()).execute(cVar.f417a);
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.settings_backup);
    }

    @Override // nl.ndsc.kitkatlauncher.b.r, android.app.Fragment
    public final void onResume() {
        super.onResume();
        c("Backup");
        e();
        a("setting_restore_key", "Last restore: " + a.a.a.c.d.k(getActivity()));
        Preference preferenceFindPreference = findPreference("setting_backup_key");
        Preference preferenceFindPreference2 = findPreference("setting_restore_key");
        if (nl.ndsc.kitkatlauncher.o.f438a) {
            preferenceFindPreference.setWidgetLayoutResource(R.layout.klp_preference_spinner);
            preferenceFindPreference2.setWidgetLayoutResource(R.layout.klp_preference_spinner);
        } else {
            preferenceFindPreference.setWidgetLayoutResource(R.layout.klp_preference_pro);
            preferenceFindPreference2.setWidgetLayoutResource(R.layout.klp_preference_pro);
        }
    }
}
