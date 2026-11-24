package nl.ndsc.kitkatlauncher.b;

import android.os.Bundle;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class t extends r {
    private void a() {
        a("setting_grid_size_key", String.valueOf(a.a.a.c.d.a(getActivity(), 5)) + "x" + a.a.a.c.d.b(getActivity(), 5));
    }

    private void e() {
        int iL = a.a.a.c.d.l(getActivity());
        if (iL == 0) {
            a("setting_number_of_screens_key", "Dynamic");
        } else {
            a("setting_number_of_screens_key", String.valueOf(iL) + " screens");
        }
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    public final void a(String str) {
        if (str.equals("setting_grid_size_key")) {
            nl.ndsc.kitkatlauncher.g gVar = new nl.ndsc.kitkatlauncher.g();
            gVar.setTargetFragment(this, 0);
            gVar.show(getFragmentManager(), nl.ndsc.kitkatlauncher.g.f433a);
        }
        if (str.equals("setting_number_of_screens_key")) {
            nl.ndsc.kitkatlauncher.p pVar = new nl.ndsc.kitkatlauncher.p();
            pVar.setTargetFragment(this, 0);
            pVar.show(getFragmentManager(), "NUMBEROFSCREENSDIALOG");
        }
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    public final void b(String str) {
        if (str.equals("setting_number_of_screens_key")) {
            e();
        }
        if (str.equals("setting_grid_size_columns_key") || str.equals("setting_grid_size_rows_key")) {
            a();
        }
        c();
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.settings_screens);
    }

    @Override // nl.ndsc.kitkatlauncher.b.r, android.app.Fragment
    public final void onResume() {
        super.onResume();
        c("Screens");
        a();
        e();
    }
}
