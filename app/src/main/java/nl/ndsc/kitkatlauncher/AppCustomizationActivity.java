package nl.ndsc.kitkatlauncher;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import com.android.launcher3.AppCustomizationManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class AppCustomizationActivity extends Activity {
    private static final int REQUEST_ICON = 41;
    private LinearLayout appRows;
    private ComponentName pendingIconComponent;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        setTitle("App names and icons");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(16), dp(12), dp(16), dp(8));

        Switch enabled = new Switch(this);
        enabled.setText(getString(R.string.app_custom_names_toggle_label));
        enabled.setChecked(AppCustomizationManager.isEnabled(this));
        enabled.setOnCheckedChangeListener((button, checked) -> {
            AppCustomizationManager.setEnabled(this, checked);
            refreshRows();
        });
        root.addView(enabled, new LinearLayout.LayoutParams(-1, -2));

        TextView help = new TextView(this);
        help.setText(getString(R.string.app_custom_names_help));
        help.setPadding(0, dp(8), 0, dp(12));
        root.addView(help, new LinearLayout.LayoutParams(-1, -2));

        ScrollView scroll = new ScrollView(this);
        appRows = new LinearLayout(this);
        appRows.setOrientation(LinearLayout.VERTICAL);
        scroll.addView(appRows, new ScrollView.LayoutParams(-1, -2));
        root.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        setContentView(root);
        refreshRows();
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    private String defaultLabel(ResolveInfo info) {
        CharSequence label = info.loadLabel(getPackageManager());
        return label == null ? info.activityInfo.name : label.toString();
    }

    private void refreshRows() {
        if (appRows == null) {
            return;
        }
        appRows.removeAllViews();
        Intent query = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> apps = new ArrayList<>(getPackageManager().queryIntentActivities(query, 0));
        apps.removeIf(info -> getPackageName().equals(info.activityInfo.packageName));
        Collections.sort(apps, (first, second) -> defaultLabel(first).compareToIgnoreCase(defaultLabel(second)));

        boolean customizationsEnabled = AppCustomizationManager.isEnabled(this);
        for (ResolveInfo info : apps) {
            ComponentName component = new ComponentName(info.activityInfo.packageName, info.activityInfo.name);
            LinearLayout row = new LinearLayout(this);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setPadding(0, dp(7), 0, dp(7));

            ImageView icon = new ImageView(this);
            android.graphics.drawable.Drawable customIcon = AppCustomizationManager.getIconDrawable(this, component);
            icon.setImageDrawable(customIcon == null ? info.loadIcon(getPackageManager()) : customIcon);
            row.addView(icon, new LinearLayout.LayoutParams(dp(48), dp(48)));

            LinearLayout text = new LinearLayout(this);
            text.setOrientation(LinearLayout.VERTICAL);
            text.setPadding(dp(12), 0, dp(8), 0);
            String displayName = customizationsEnabled ? AppCustomizationManager.getNameOverride(this, component) : null;
            TextView title = new TextView(this);
            title.setText(displayName == null ? defaultLabel(info) : displayName);
            title.setTextSize(16);
            text.addView(title, new LinearLayout.LayoutParams(-1, -2));
            TextView packageName = new TextView(this);
            packageName.setText(info.activityInfo.packageName);
            packageName.setTextSize(12);
            text.addView(packageName, new LinearLayout.LayoutParams(-1, -2));
            row.addView(text, new LinearLayout.LayoutParams(0, -2, 1));

            row.setOnClickListener(view -> showActions(info, component));
            appRows.addView(row, new LinearLayout.LayoutParams(-1, -2));
            View divider = new View(this);
            divider.setBackgroundColor(0x33000000);
            appRows.addView(divider, new LinearLayout.LayoutParams(-1, dp(1)));
        }
    }

    private void showActions(ResolveInfo info, ComponentName component) {
        String[] actions = {"Change name", "Change icon", "Reset name and icon"};
        new AlertDialog.Builder(this)
            .setTitle(defaultLabel(info))
            .setItems(actions, (dialog, which) -> {
                if (which == 0) {
                    showRenameDialog(info, component);
                } else if (which == 1) {
                    chooseIcon(component);
                } else {
                    AppCustomizationManager.reset(this, component);
                    refreshRows();
                }
            })
            .setNegativeButton("Cancel", null)
            .show();
    }

    private void showRenameDialog(ResolveInfo info, ComponentName component) {
        EditText input = new EditText(this);
        String savedName = AppCustomizationManager.getNameOverride(this, component);
        input.setSingleLine(true);
        input.setText(savedName == null ? defaultLabel(info) : savedName);
        new AlertDialog.Builder(this)
            .setTitle("Change app name")
            .setView(input)
            .setPositiveButton("Save", (dialog, which) -> {
                AppCustomizationManager.setName(this, component, input.getText().toString());
                refreshRows();
            })
            .setNegativeButton("Cancel", null)
            .show();
    }

    private void chooseIcon(ComponentName component) {
        pendingIconComponent = component;
        Intent pick = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        pick.addCategory(Intent.CATEGORY_OPENABLE);
        pick.setType("image/*");
        pick.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        startActivityForResult(pick, REQUEST_ICON);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQUEST_ICON || resultCode != RESULT_OK || data == null || data.getData() == null || pendingIconComponent == null) {
            return;
        }
        Uri uri = data.getData();
        try {
            if ((data.getFlags() & Intent.FLAG_GRANT_READ_URI_PERMISSION) != 0) {
                getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION);
            }
        } catch (SecurityException ignored) {
        }
        AppCustomizationManager.setIconUri(this, pendingIconComponent, uri);
        pendingIconComponent = null;
        refreshRows();
    }
}
