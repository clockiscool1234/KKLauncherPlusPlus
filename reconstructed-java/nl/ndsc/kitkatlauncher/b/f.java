package nl.ndsc.kitkatlauncher.b;

import android.os.Bundle;
import android.preference.Preference;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class f extends r {
    private void a() {
        a("setting_grid_size_drawer_key", String.valueOf(a.a.a.c.d.c(getActivity(), 5)) + "x" + a.a.a.c.d.d(getActivity(), 5));
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    protected final void a(String str) {
        if (str.equals("setting_grid_size_drawer_key")) {
            nl.ndsc.kitkatlauncher.g gVar = new nl.ndsc.kitkatlauncher.g();
            gVar.setTargetFragment(this, 0);
            gVar.show(getFragmentManager(), nl.ndsc.kitkatlauncher.g.b);
        }
        if (str.equals("setting_hide_apps")) {
            if (nl.ndsc.kitkatlauncher.o.f438a) {
                b().a(new h());
            } else {
                d();
            }
        }
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    public final void b(String str) {
        if (str.equals("setting_grid_size_drawer_columns_key") || str.equals("setting_grid_size_drawer_rows_key")) {
            a();
        }
        c();
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.settings_drawer);
    }

    @Override // nl.ndsc.kitkatlauncher.b.r, android.app.Fragment
    public final void onResume() {
        super.onResume();
        c("Drawer");
        a();
        Preference preferenceFindPreference = findPreference("setting_hide_apps");
        if (nl.ndsc.kitkatlauncher.o.f438a) {
            return;
        }
        preferenceFindPreference.setWidgetLayoutResource(R.layout.klp_preference_pro);
    }
}
