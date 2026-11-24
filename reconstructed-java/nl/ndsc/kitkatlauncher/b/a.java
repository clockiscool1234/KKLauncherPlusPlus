package nl.ndsc.kitkatlauncher.b;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class a extends r {
    private String a() {
        String str = "";
        try {
            str = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return String.valueOf(str) + (nl.ndsc.kitkatlauncher.o.f438a ? " PRO" : "");
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    protected final void a(String str) {
        super.a(str);
        if (str.equals("setting_about_github")) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://github.com/bvermeule/Launcher3"));
            startActivity(intent);
        }
        if (str.equals("setting_about_playstore")) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setData(Uri.parse("market://search?q=pub:Björn+Vermeule"));
            startActivity(intent2);
        }
        if (str.equals("setting_about_version")) {
            Intent intent3 = new Intent("android.intent.action.VIEW");
            intent3.setData(Uri.parse("market://details?id=nl.ndsc.kitkatlauncher"));
            startActivity(intent3);
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
