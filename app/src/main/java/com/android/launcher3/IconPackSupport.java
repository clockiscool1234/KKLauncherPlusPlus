package com.android.launcher3;

import android.app.Activity;
import android.app.AlertDialog;
import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.preference.PreferenceManager;
import android.util.Log;
import android.widget.Toast;
import org.xmlpull.v1.XmlPullParser;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class IconPackSupport {
    public static final String PREFERENCE_KEY = "setting_icon_pack";
    private static final String TAG = "KKLauncher++";
    private static final String[] THEME_ACTIONS = {
        "org.adw.launcher.THEMES",
        "com.novalauncher.THEME",
        "com.anddoes.launcher.THEME",
        "com.teslacoilsw.launcher.THEME",
        "com.gau.go.launcherex.theme",
        "com.dlto.atom.launcher.THEME"
    };
    private static final Map<String, Map<String, String>> FILTERS = new ConcurrentHashMap<>();

    private IconPackSupport() {
    }

    public static void showPicker(Activity activity) {
        List<ResolveInfo> packs = findInstalledPacks(activity);
        CharSequence[] labels = new CharSequence[packs.size() + 1];
        labels[0] = "Default launcher icons";
        for (int i = 0; i < packs.size(); i++) {
            labels[i + 1] = packs.get(i).loadLabel(activity.getPackageManager());
        }
        String selected = PreferenceManager.getDefaultSharedPreferences(activity).getString(PREFERENCE_KEY, "");
        int checked = 0;
        for (int i = 0; i < packs.size(); i++) {
            if (packs.get(i).activityInfo.packageName.equals(selected)) {
                checked = i + 1;
                break;
            }
        }
        new AlertDialog.Builder(activity)
            .setTitle("Icon theme")
            .setSingleChoiceItems(labels, checked, (dialog, which) -> {
                SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(activity);
                SharedPreferences.Editor editor = preferences.edit();
                if (which == 0) {
                    editor.remove(PREFERENCE_KEY);
                } else {
                    editor.putString(PREFERENCE_KEY, packs.get(which - 1).activityInfo.packageName);
                }
                editor.apply();
                FILTERS.clear();
                AppCustomizationManager.refreshAll();
                dialog.dismiss();
            })
            .setNegativeButton(android.R.string.cancel, null)
            .show();
        if (packs.isEmpty()) {
            Toast.makeText(activity, "No compatible icon themes are installed.", Toast.LENGTH_SHORT).show();
        }
    }

    public static Drawable loadIcon(Context context, ComponentName componentName) {
        String packageName = PreferenceManager.getDefaultSharedPreferences(context).getString(PREFERENCE_KEY, "");
        if (packageName == null || packageName.isEmpty()) {
            return null;
        }
        try {
            Map<String, String> filter = FILTERS.get(packageName);
            if (filter == null) {
                filter = loadFilter(context.getPackageManager().getResourcesForApplication(packageName), packageName);
                FILTERS.put(packageName, filter);
            }
            String drawableName = filter.get(componentName.flattenToString());
            if (drawableName == null) {
                drawableName = filter.get(componentName.getPackageName() + "/" + componentName.getClassName());
            }
            if (drawableName == null) {
                return null;
            }
            Resources resources = context.getPackageManager().getResourcesForApplication(packageName);
            int resourceId = resources.getIdentifier(drawableName, "drawable", packageName);
            if (resourceId == 0) {
                resourceId = resources.getIdentifier(drawableName, "mipmap", packageName);
            }
            return resourceId == 0 ? null : resources.getDrawable(resourceId);
        } catch (PackageManager.NameNotFoundException | RuntimeException exception) {
            Log.w(TAG, "Unable to load icon from theme " + packageName, exception);
            return null;
        }
    }

    private static Map<String, String> loadFilter(Resources resources, String packageName) {
        Map<String, String> filter = new LinkedHashMap<>();
        InputStream input = null;
        try {
            int xmlId = resources.getIdentifier("appfilter", "xml", packageName);
            XmlPullParser parser;
            if (xmlId != 0) {
                parser = resources.getXml(xmlId);
                int event = parser.getEventType();
                while (event != XmlPullParser.END_DOCUMENT) {
                    if (event == XmlPullParser.START_TAG && "item".equals(parser.getName())) {
                        addMapping(filter, parser.getAttributeValue(null, "component"), parser.getAttributeValue(null, "drawable"));
                    }
                    event = parser.next();
                }
            } else {
                input = resources.getAssets().open("appfilter.xml");
                org.xmlpull.v1.XmlPullParserFactory factory = org.xmlpull.v1.XmlPullParserFactory.newInstance();
                parser = factory.newPullParser();
                parser.setInput(input, "UTF-8");
                int event = parser.getEventType();
                while (event != XmlPullParser.END_DOCUMENT) {
                    if (event == XmlPullParser.START_TAG && "item".equals(parser.getName())) {
                        addMapping(filter, parser.getAttributeValue(null, "component"), parser.getAttributeValue(null, "drawable"));
                    }
                    event = parser.next();
                }
            }
        } catch (Exception exception) {
            Log.w(TAG, "Unable to read appfilter.xml from " + packageName, exception);
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (Exception ignored) {
                }
            }
        }
        return filter;
    }

    private static void addMapping(Map<String, String> filter, String componentValue, String drawableName) {
        if (componentValue == null || drawableName == null || drawableName.isEmpty()) {
            return;
        }
        String value = componentValue;
        int open = value.indexOf('{');
        int close = value.lastIndexOf('}');
        if (open >= 0 && close > open) {
            value = value.substring(open + 1, close);
        }
        ComponentName componentName = ComponentName.unflattenFromString(value);
        if (componentName != null) {
            filter.put(componentName.flattenToString(), drawableName);
            filter.put(componentName.getPackageName() + "/" + componentName.getClassName(), drawableName);
        }
    }

    public static final class PackIcon {
        public final String name;
        public final Drawable drawable;
        public final boolean mappedToApp;

        PackIcon(String name, Drawable drawable, boolean mappedToApp) {
            this.name = name;
            this.drawable = drawable;
            this.mappedToApp = mappedToApp;
        }
    }

    @SuppressLint("DiscouragedApi")
    public static List<PackIcon> getPackIcons(Context context, String packageName) {
        ArrayList<PackIcon> icons = new ArrayList<>();
        try {
            Resources resources = context.getPackageManager().getResourcesForApplication(packageName);
            Set<String> mappedNames = new LinkedHashSet<>(loadFilter(resources, packageName).values());
            Set<String> allNames = new LinkedHashSet<>(mappedNames);
            try {
                Context packContext = context.createPackageContext(packageName, Context.CONTEXT_INCLUDE_CODE | Context.CONTEXT_IGNORE_SECURITY);
                for (String type : new String[] {"drawable", "mipmap"}) {
                    Class<?> resourceClass = Class.forName(packageName + ".R$" + type, false, packContext.getClassLoader());
                    for (Field field : resourceClass.getDeclaredFields()) {
                        if (Modifier.isStatic(field.getModifiers()) && field.getType() == int.class) {
                            try {
                                int resourceId = field.getInt(null);
                                String name = resources.getResourceEntryName(resourceId);
                                allNames.add(name);
                            } catch (Exception ignored) {
                            }
                        }
                    }
                }
            } catch (Exception ignored) {
            }
            ArrayList<String> names = new ArrayList<>(allNames);
            Collections.sort(names, String.CASE_INSENSITIVE_ORDER);
            for (String name : names) {
                int resourceId = resources.getIdentifier(name, "drawable", packageName);
                if (resourceId == 0) {
                    resourceId = resources.getIdentifier(name, "mipmap", packageName);
                }
                if (resourceId == 0) {
                    continue;
                }
                try {
                    icons.add(new PackIcon(name, resources.getDrawable(resourceId), mappedNames.contains(name)));
                } catch (Resources.NotFoundException ignored) {
                }
            }
        } catch (PackageManager.NameNotFoundException | RuntimeException exception) {
            Log.w(TAG, "Unable to enumerate icon pack " + packageName, exception);
        }
        return icons;
    }

    public static List<ResolveInfo> findInstalledPacks(Context context) {
        PackageManager packageManager = context.getPackageManager();
        LinkedHashMap<String, ResolveInfo> packs = new LinkedHashMap<>();
        for (String action : THEME_ACTIONS) {
            Intent intent = new Intent(action);
            for (ResolveInfo info : packageManager.queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY)) {
                if (info.activityInfo != null) {
                    packs.put(info.activityInfo.packageName, info);
                }
            }
        }
        ArrayList<ResolveInfo> result = new ArrayList<>(packs.values());
        result.sort((left, right) -> left.loadLabel(packageManager).toString().compareToIgnoreCase(right.loadLabel(packageManager).toString()));
        return result;
    }
}
