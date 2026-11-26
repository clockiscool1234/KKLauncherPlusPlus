package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;

public final class AppCustomizationManager {
    private static final String ENABLED_KEY = "custom_app_appearance_enabled";
    private static final String OVERRIDES_KEY = "custom_app_appearance_v1";

    private AppCustomizationManager() {
    }

    public static boolean isEnabled(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(ENABLED_KEY, true);
    }

    public static void setEnabled(Context context, boolean enabled) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(ENABLED_KEY, enabled).apply();
        refreshAll();
    }

    public static String getNameOverride(Context context, ComponentName component) {
        if (!isEnabled(context)) {
            return null;
        }
        String name = entry(context, component).optString("name", "").trim();
        return name.isEmpty() ? null : name;
    }

    public static Drawable getIconDrawable(Context context, ComponentName component) {
        if (!isEnabled(context)) {
            return null;
        }
        String iconUri = entry(context, component).optString("icon", "");
        if (iconUri.isEmpty()) {
            return null;
        }
        try (InputStream input = context.getContentResolver().openInputStream(Uri.parse(iconUri))) {
            if (input == null) {
                return null;
            }
            Bitmap bitmap = BitmapFactory.decodeStream(input);
            return bitmap == null ? null : new BitmapDrawable(context.getResources(), bitmap);
        } catch (Exception ignored) {
            return null;
        }
    }

    public static void setName(Context context, ComponentName component, String name) {
        String value = name == null ? "" : name.trim();
        updateEntry(context, component, "name", value.isEmpty() ? null : value);
        refreshComponent(component);
    }

    public static void setIconUri(Context context, ComponentName component, Uri uri) {
        updateEntry(context, component, "icon", uri == null ? null : uri.toString());
        refreshComponent(component);
    }

    public static void reset(Context context, ComponentName component) {
        JSONObject overrides = load(context);
        overrides.remove(component.flattenToString());
        save(context, overrides);
        refreshComponent(component);
    }

    private static JSONObject entry(Context context, ComponentName component) {
        JSONObject value = load(context).optJSONObject(component.flattenToString());
        return value == null ? new JSONObject() : value;
    }

    private static void updateEntry(Context context, ComponentName component, String key, String value) {
        JSONObject overrides = load(context);
        String componentKey = component.flattenToString();
        JSONObject item = overrides.optJSONObject(componentKey);
        if (item == null) {
            item = new JSONObject();
        }
        try {
            if (value == null) {
                item.remove(key);
            } else {
                item.put(key, value);
            }
            if (item.length() == 0) {
                overrides.remove(componentKey);
            } else {
                overrides.put(componentKey, item);
            }
        } catch (JSONException ignored) {
        }
        save(context, overrides);
    }

    private static JSONObject load(Context context) {
        String saved = PreferenceManager.getDefaultSharedPreferences(context).getString(OVERRIDES_KEY, "{}");
        try {
            return new JSONObject(saved);
        } catch (JSONException ignored) {
            return new JSONObject();
        }
    }

    private static void save(Context context, JSONObject overrides) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(OVERRIDES_KEY, overrides.toString()).apply();
    }

    private static void refreshComponent(ComponentName component) {
        cB model = cB.a();
        if (model.e() != null) {
            model.e().a(component);
        }
        if (model.f() != null) {
            model.f().c();
        }
    }

    private static void refreshAll() {
        cB model = cB.a();
        if (model.e() != null) {
            model.e().b();
        }
        if (model.f() != null) {
            model.f().c();
        }
    }
}
