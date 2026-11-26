package nl.ndsc.kitkatlauncher;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import com.android.launcher3.IconPackSupport;
import com.android.launcher3.AppCustomizationManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

public final class AppCustomizationActivity extends Activity {
    public static final String EXTRA_COMPONENT = "edit_component";
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
        String requestedComponent = getIntent().getStringExtra(EXTRA_COMPONENT);
        if (requestedComponent != null) {
            ComponentName component = ComponentName.unflattenFromString(requestedComponent);
            if (component != null) {
                appRows.post(() -> openActionsFor(component));
            }
        }
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
        String[] sources = {"System icons", "Icons from installed apps", "Icons from icon packs", "Choose a picture", "Reset to original app icon"};
        new AlertDialog.Builder(this)
            .setTitle("Choose icon source")
            .setItems(sources, (dialog, which) -> {
                if (which == 0) {
                    showSystemIcons(component);
                } else if (which == 1) {
                    showAppIcons(component);
                } else if (which == 2) {
                    showIconPacks(component);
                } else if (which == 3) {
                    choosePictureIcon(component);
                } else {
                    AppCustomizationManager.resetIcon(this, component);
                    refreshRows();
                }
            })
            .setNegativeButton("Cancel", null)
            .show();
    }

    private void openActionsFor(ComponentName component) {
        Intent query = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
        for (ResolveInfo info : getPackageManager().queryIntentActivities(query, 0)) {
            ComponentName candidate = new ComponentName(info.activityInfo.packageName, info.activityInfo.name);
            if (candidate.equals(component)) {
                showActions(info, component);
                return;
            }
        }
        android.widget.Toast.makeText(this, "That app is no longer installed.", android.widget.Toast.LENGTH_SHORT).show();
    }

    private void showSystemIcons(ComponentName component) {
        ArrayList<IconChoice> icons = new ArrayList<>();
        for (Field field : android.R.drawable.class.getFields()) {
            if (!Modifier.isStatic(field.getModifiers()) || field.getType() != int.class || !isUsefulSystemIcon(field.getName())) {
                continue;
            }
            try {
                int resourceId = field.getInt(null);
                Drawable drawable = getResources().getDrawable(resourceId);
                icons.add(new IconChoice(humanize(field.getName()), "Built-in Android icon", drawable));
            } catch (Exception ignored) {
            }
        }
        icons.sort((first, second) -> first.title.compareToIgnoreCase(second.title));
        showIconChoices(component, "System icons", icons);
    }

    private boolean isUsefulSystemIcon(String name) {
        return name.startsWith("ic_menu_") || name.startsWith("ic_media_") || name.startsWith("ic_dialog_")
            || name.startsWith("ic_lock_") || name.startsWith("stat_sys_") || name.startsWith("sym_")
            || name.startsWith("btn_") || name.startsWith("presence_") || name.startsWith("ic_input_");
    }

    private void showAppIcons(ComponentName component) {
        ArrayList<IconChoice> icons = new ArrayList<>();
        Intent query = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> apps = new ArrayList<>(getPackageManager().queryIntentActivities(query, 0));
        apps.removeIf(info -> getPackageName().equals(info.activityInfo.packageName));
        apps.sort((first, second) -> defaultLabel(first).compareToIgnoreCase(defaultLabel(second)));
        for (ResolveInfo info : apps) {
            try {
                icons.add(new IconChoice(defaultLabel(info), info.activityInfo.packageName, info.loadIcon(getPackageManager())));
            } catch (RuntimeException ignored) {
            }
        }
        showIconChoices(component, "Icons from installed apps", icons);
    }

    private void showIconPacks(ComponentName component) {
        List<ResolveInfo> packs = IconPackSupport.findInstalledPacks(this);
        if (packs.isEmpty()) {
            android.widget.Toast.makeText(this, "No compatible icon packs are installed.", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }
        CharSequence[] labels = new CharSequence[packs.size()];
        for (int i = 0; i < packs.size(); i++) {
            labels[i] = packs.get(i).loadLabel(getPackageManager());
        }
        new AlertDialog.Builder(this)
            .setTitle("Choose icon pack")
            .setItems(labels, (dialog, which) -> {
                ResolveInfo pack = packs.get(which);
                String packageName = pack.activityInfo.packageName;
                List<IconPackSupport.PackIcon> packIcons = IconPackSupport.getPackIcons(this, packageName);
                ArrayList<IconChoice> icons = new ArrayList<>();
                for (IconPackSupport.PackIcon packIcon : packIcons) {
                    icons.add(new IconChoice(packIcon.name,
                        packIcon.mappedToApp ? "Assigned to an app in this pack" : "Unused icon in this pack",
                        packIcon.drawable));
                }
                showIconChoices(component, pack.loadLabel(getPackageManager()).toString(), icons);
            })
            .setNegativeButton("Cancel", null)
            .show();
    }

    private void showIconChoices(ComponentName component, String title, List<IconChoice> icons) {
        if (icons.isEmpty()) {
            android.widget.Toast.makeText(this, "No icons are available in that source.", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }
        new AlertDialog.Builder(this)
            .setTitle(title)
            .setAdapter(new IconChoiceAdapter(icons), (dialog, which) -> {
                AppCustomizationManager.setIconDrawable(this, component, icons.get(which).drawable);
                refreshRows();
            })
            .setNegativeButton("Cancel", null)
            .show();
    }

    private String humanize(String name) {
        String[] parts = name.replace('_', ' ').split("\\s+");
        StringBuilder label = new StringBuilder();
        for (String part : parts) {
            if (part.isEmpty()) {
                continue;
            }
            if (label.length() > 0) {
                label.append(' ');
            }
            label.append(Character.toUpperCase(part.charAt(0))).append(part.substring(1));
        }
        return label.toString();
    }

    private void choosePictureIcon(ComponentName component) {
        pendingIconComponent = component;
        Intent pick = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        pick.addCategory(Intent.CATEGORY_OPENABLE);
        pick.setType("image/*");
        pick.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        startActivityForResult(pick, REQUEST_ICON);
    }

    private final class IconChoiceAdapter extends BaseAdapter {
        private final List<IconChoice> choices;
        private final int iconId = View.generateViewId();
        private final int titleId = View.generateViewId();
        private final int subtitleId = View.generateViewId();

        IconChoiceAdapter(List<IconChoice> choices) {
            this.choices = choices;
        }

        @Override
        public int getCount() {
            return choices.size();
        }

        @Override
        public Object getItem(int position) {
            return choices.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LinearLayout row = (LinearLayout) convertView;
            if (row == null) {
                row = new LinearLayout(AppCustomizationActivity.this);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding(dp(12), dp(7), dp(12), dp(7));
                ImageView image = new ImageView(AppCustomizationActivity.this);
                image.setId(iconId);
                row.addView(image, new LinearLayout.LayoutParams(dp(48), dp(48)));
                LinearLayout labels = new LinearLayout(AppCustomizationActivity.this);
                labels.setOrientation(LinearLayout.VERTICAL);
                labels.setPadding(dp(12), 0, 0, 0);
                TextView title = new TextView(AppCustomizationActivity.this);
                title.setId(titleId);
                title.setTextSize(15);
                labels.addView(title, new LinearLayout.LayoutParams(-1, -2));
                TextView subtitle = new TextView(AppCustomizationActivity.this);
                subtitle.setId(subtitleId);
                subtitle.setTextSize(12);
                labels.addView(subtitle, new LinearLayout.LayoutParams(-1, -2));
                row.addView(labels, new LinearLayout.LayoutParams(0, -2, 1));
            }
            IconChoice choice = choices.get(position);
            ImageView image = row.findViewById(iconId);
            Drawable drawable = choice.drawable.getConstantState() == null
                ? choice.drawable
                : choice.drawable.getConstantState().newDrawable(getResources()).mutate();
            image.setImageDrawable(drawable);
            ((TextView) row.findViewById(titleId)).setText(choice.title);
            ((TextView) row.findViewById(subtitleId)).setText(choice.subtitle);
            return row;
        }
    }

    private static final class IconChoice {
        final String title;
        final String subtitle;
        final Drawable drawable;

        IconChoice(String title, String subtitle, Drawable drawable) {
            this.title = title;
            this.subtitle = subtitle;
            this.drawable = drawable;
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQUEST_ICON) {
            return;
        }
        if (resultCode != RESULT_OK || data == null || data.getData() == null || pendingIconComponent == null) {
            pendingIconComponent = null;
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
