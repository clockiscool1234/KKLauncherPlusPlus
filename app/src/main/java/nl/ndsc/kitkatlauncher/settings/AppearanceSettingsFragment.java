package nl.ndsc.kitkatlauncher.settings;

import android.content.Intent;
import android.os.Bundle;
import nl.ndsc.kitkatlauncher.AppCustomizationActivity;
import nl.ndsc.kitkatlauncher.SearchBarLogoSettingsActivity;
import nl.ndsc.kitkatlauncher.R;
import nl.ndsc.kitkatlauncher.b.r;
import com.android.launcher3.IconPackSupport;

public final class AppearanceSettingsFragment extends r {
    @Override
    protected void a(String key) {
        super.a(key);
        if ("setting_icons".equals(key)) {
            b().a(new nl.ndsc.kitkatlauncher.b.l());
        } else if ("setting_icon_pack".equals(key)) {
            IconPackSupport.showPicker(getActivity());
        } else if ("setting_app_appearance".equals(key)) {
            startActivity(new Intent(getActivity(), AppCustomizationActivity.class));
        } else if ("setting_searchbar_logo".equals(key)) {
            startActivity(new Intent(getActivity(), SearchBarLogoSettingsActivity.class));
        }
    }

    @Override
    public void onCreate(Bundle state) {
        super.onCreate(state);
        addPreferencesFromResource(R.xml.settings_appearance);
    }

    @Override
    public void onResume() {
        super.onResume();
        c("Appearance");
        IconPackSupport.updatePreferenceSummary(getActivity());
    }
}
