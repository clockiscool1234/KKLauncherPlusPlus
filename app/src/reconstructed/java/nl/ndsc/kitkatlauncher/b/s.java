package nl.ndsc.kitkatlauncher.b;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class s extends r {
    @Override // nl.ndsc.kitkatlauncher.b.r
    public final void a(String str) {
        if (str.equals("pref_main_general")) {
            b().a(new g());
        }
        if (str.equals("pref_main_screens")) {
            b().a(new t());
        }
        if (str.equals("pref_main_drawer")) {
            b().a(new f());
        }
        if (str.equals("pref_main_behavior")) {
            b().a(new e());
        }
        if (str.equals("pref_main_backup")) {
            b().a(new b());
        }
        if (str.equals("pref_main_about")) {
            b().a(new a());
        }
        if (str.equals("pref_main_prokey")) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("market://details?id=nl.ndsc.kitkatlauncherkey"));
            startActivity(intent);
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.settings_main);
        if (nl.ndsc.kitkatlauncher.o.f438a) {
            getPreferenceScreen().removePreference(findPreference("pref_main_prokey"));
        }
    }

    @Override // nl.ndsc.kitkatlauncher.b.r, android.app.Fragment
    public final void onResume() {
        super.onResume();
        c("Settings");
    }
}
