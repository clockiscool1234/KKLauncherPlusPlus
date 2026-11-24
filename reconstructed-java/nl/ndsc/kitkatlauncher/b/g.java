package nl.ndsc.kitkatlauncher.b;

import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.SwitchPreference;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class g extends r {
    private void a() {
        a("setting_google_now_anim", a.a.a.c.d.b(getActivity()));
    }

    private void e() {
        ListPreference listPreference = (ListPreference) findPreference("setting_google_now_anim");
        if (((SwitchPreference) findPreference("setting_google_now_enable")).isChecked()) {
            listPreference.setEnabled(true);
        } else {
            listPreference.setEnabled(false);
        }
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    protected final void a(String str) {
        super.a(str);
        if (str.equals("setting_icons")) {
            b().a(new l());
        }
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    public final void b(String str) {
        if (str.equals("setting_google_now_enable")) {
            e();
        }
        if (str.equals("setting_google_now_anim")) {
            a();
        }
        c();
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.settings_general);
    }

    @Override // nl.ndsc.kitkatlauncher.b.r, android.app.Fragment
    public final void onResume() {
        super.onResume();
        c("General");
        a();
        e();
    }
}
