package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;
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
        try {
            Bitmap bitmap;
            if (iconUri.startsWith("local:")) {
                File iconFile = localIconFile(context, iconUri.substring("local:".length()));
                bitmap = iconFile != null && iconFile.isFile() ? BitmapFactory.decodeFile(iconFile.getAbsolutePath()) : null;
            } else {
                try (InputStream input = context.getContentResolver().openInputStream(Uri.parse(iconUri))) {
                    bitmap = input == null ? null : BitmapFactory.decodeStream(input);
                }
            }
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
        deleteStoredIcon(context, component);
        updateEntry(context, component, "icon", uri == null ? null : uri.toString());
        refreshComponent(component);
    }

    public static void setIconDrawable(Context context, ComponentName component, Drawable drawable) {
        if (drawable == null) {
            resetIcon(context, component);
            return;
        }
        int size = 192;
        Bitmap bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Drawable icon = drawable.getConstantState() == null
            ? drawable.mutate()
            : drawable.getConstantState().newDrawable(context.getResources()).mutate();
        int intrinsicWidth = Math.max(1, icon.getIntrinsicWidth());
        int intrinsicHeight = Math.max(1, icon.getIntrinsicHeight());
        float scale = Math.min((float) size / intrinsicWidth, (float) size / intrinsicHeight);
        int width = Math.max(1, Math.round(intrinsicWidth * scale));
        int height = Math.max(1, Math.round(intrinsicHeight * scale));
        int left = (size - width) / 2;
        int top = (size - height) / 2;
        icon.setBounds(left, top, left + width, top + height);
        icon.draw(canvas);
        canvas.setBitmap(null);

        File directory = new File(context.getFilesDir(), "custom-icons");
        File iconFile = new File(directory, UUID.randomUUID().toString() + ".png");
        try {
            if (!directory.isDirectory() && !directory.mkdirs()) {
                bitmap.recycle();
                return;
            }
            try (FileOutputStream output = new FileOutputStream(iconFile)) {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, output);
            }
            deleteStoredIcon(context, component);
            updateEntry(context, component, "icon", "local:" + iconFile.getName());
            refreshComponent(component);
        } catch (Exception ignored) {
            if (iconFile.exists()) {
                iconFile.delete();
            }
        } finally {
            bitmap.recycle();
        }
    }

    public static void resetIcon(Context context, ComponentName component) {
        deleteStoredIcon(context, component);
        updateEntry(context, component, "icon", null);
        refreshComponent(component);
    }

    public static void reset(Context context, ComponentName component) {
        deleteStoredIcon(context, component);
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

    private static File localIconFile(Context context, String name) {
        if (name == null || !name.matches("[A-Za-z0-9._-]+")) {
            return null;
        }
        return new File(new File(context.getFilesDir(), "custom-icons"), name);
    }

    private static void deleteStoredIcon(Context context, ComponentName component) {
        String icon = entry(context, component).optString("icon", "");
        if (icon.startsWith("local:")) {
            File file = localIconFile(context, icon.substring("local:".length()));
            if (file != null) {
                file.delete();
            }
        }
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

    public static void refreshLauncherViews(Launcher launcher) {
        if (launcher == null || launcher.getWindow() == null) {
            return;
        }
        bw iconCache = cB.a().e();
        if (iconCache != null) {
            refreshShortcutViews(launcher.getWindow().getDecorView(), iconCache);
        }
    }

    private static void refreshShortcutViews(View view, bw iconCache) {
        if (view instanceof BubbleTextView) {
            Object tag = view.getTag();
            if (tag instanceof ey) {
                ey shortcut = (ey) tag;
                if (!shortcut.b && shortcut.d == null && shortcut.a != null && shortcut.a.getComponent() != null) {
                    shortcut.b((Bitmap) null);
                    ((BubbleTextView) view).a(shortcut, iconCache);
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int index = 0; index < group.getChildCount(); index++) {
                refreshShortcutViews(group.getChildAt(index), iconCache);
            }
        }
    }

    public static void refreshAll() {
        cB model = cB.a();
        if (model.e() != null) {
            model.e().b();
        }
        if (model.f() != null) {
            model.f().c();
        }
    }
}
