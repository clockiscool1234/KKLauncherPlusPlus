package nl.ndsc.kitkatlauncher.settings;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import nl.ndsc.kitkatlauncher.R;
import nl.ndsc.kitkatlauncher.b.r;

/* JADX INFO: loaded from: classes.dex */
public class AboutSettingsFragment extends r {
    private String a() {
        String str = "";
        try {
            str = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return str;
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    protected final void a(String str) {
        super.a(str);
        if (str.equals("setting_about_github")) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://github.com/clockiscool1234/KKLauncherPlusPlus"));
            startActivity(intent);
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.settings_about);
    }

    @Override // nl.ndsc.kitkatlauncher.b.r, android.app.Fragment
    public final void onResume() {
        super.onResume();
        c("About");
        findPreference("setting_about_version").setSummary(a());
    }
}
