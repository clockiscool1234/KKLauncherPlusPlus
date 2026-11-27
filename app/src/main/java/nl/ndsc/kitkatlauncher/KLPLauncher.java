package nl.ndsc.kitkatlauncher;

import a.a.a.c.d;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.AppCustomizationManager;
import com.android.launcher3.EditDropTarget;
import com.android.launcher3.IconPackSupport;
import com.android.launcher3.Launcher;
import com.android.launcher3.SearchBarLogoView;

public class KLPLauncher extends Launcher {
    private String lastIconPack;

    @Override // com.android.launcher3.Launcher
    protected final boolean a() {
        return d.c(this);
    }

    @Override // com.android.launcher3.Launcher
    protected final void b() {
        super.a(new TextView(this), new l(this, this), "");
    }

    @Override
    protected void onResume() {
        super.onResume();
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
        String selectedIconPack = preferences.getString(IconPackSupport.PREFERENCE_KEY, "");
        if (selectedIconPack == null) {
            selectedIconPack = "";
        }
        if (!selectedIconPack.equals(lastIconPack)) {
            lastIconPack = selectedIconPack;
            AppCustomizationManager.refreshAll();
        }
        View editTarget = findViewById(R.id.edit_target_text);
        if (editTarget instanceof EditDropTarget) {
            ((EditDropTarget) editTarget).registerWith(this);
        }
        View searchLogo = findViewById(R.id.search_button);
        if (searchLogo instanceof SearchBarLogoView) {
            ((SearchBarLogoView) searchLogo).refreshLogo();
        }
        AppCustomizationManager.refreshLauncherViews(this);
    }
}
