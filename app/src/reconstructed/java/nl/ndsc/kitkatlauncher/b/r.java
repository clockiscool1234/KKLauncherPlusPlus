package nl.ndsc.kitkatlauncher.b;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import nl.ndsc.kitkatlauncher.SettingsActivity;
import nl.ndsc.kitkatlauncher.x;

/* JADX INFO: loaded from: classes.dex */
public class r extends PreferenceFragment implements SharedPreferences.OnSharedPreferenceChangeListener {
    protected void a(String str) {
    }

    protected final void a(String str, String str2) {
        findPreference(str).setSummary(str2);
    }

    protected final SettingsActivity b() {
        Activity activity = getActivity();
        if (activity != null) {
            return (SettingsActivity) activity;
        }
        return null;
    }

    protected void b(String str) {
    }

    protected final void c() {
        a.a.a.c.d.b((Context) getActivity(), true);
    }

    protected final void c(String str) {
        ActionBar actionBar = b().getActionBar();
        if (str == null) {
            actionBar.setSubtitle("");
        }
        actionBar.setSubtitle(str);
    }

    protected final void d() {
        x xVar = new x();
        xVar.setTargetFragment(this, 0);
        xVar.show(getFragmentManager(), "PRODIALOG");
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // android.preference.PreferenceFragment
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        a(preference.getKey());
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        c(null);
        getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        b(str);
    }
}
