package com.android.launcher3;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

final class DefaultWorkspaceSeeder {
    private static final String PREFS = "com.android.launcher3.prefs";
    private static final String SEEDED_KEY = "DEFAULT_CORE_APPS_SEEDED_V1";

    private DefaultWorkspaceSeeder() {
    }

    static void seed(Context context, SQLiteDatabase database) {
        SharedPreferences preferences = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        if (preferences.getBoolean(SEEDED_KEY, false)) {
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        Set<String> existingPackages = new HashSet<>();
        Set<Integer> occupiedDock = new HashSet<>();
        readExisting(database, existingPackages, occupiedDock);
        boolean seeded = false;
        database.beginTransaction();
        try {
            List<AppChoice> dockChoices = new ArrayList<>();
            dockChoices.add(choice(packageManager, new Intent(Intent.ACTION_DIAL),
                "com.google.android.dialer", "com.android.dialer", "com.samsung.android.dialer", "com.android.phone"));
            dockChoices.add(choice(packageManager, new Intent(Intent.ACTION_SENDTO, Uri.parse("smsto:")),
                "com.google.android.apps.messaging", "com.samsung.android.messaging", "com.android.messaging", "com.android.mms"));
            dockChoices.add(choice(packageManager, new Intent(Intent.ACTION_VIEW, Uri.parse("https://example.com")),
                "com.android.chrome", "com.google.android.apps.chrome", "org.mozilla.firefox", "com.microsoft.emmx"));
            dockChoices.add(choice(packageManager, new Intent("android.media.action.IMAGE_CAPTURE"),
                "com.google.android.GoogleCamera", "com.sec.android.app.camera", "com.android.camera2", "com.android.camera"));
            dockChoices.add(choice(packageManager, new Intent(Intent.ACTION_VIEW).setType("image/*"),
                "com.google.android.apps.photos", "com.sec.android.gallery3d", "com.android.gallery3d", "com.google.android.gallery3d"));

            int dockSlot = 0;
            for (AppChoice choice : dockChoices) {
                if (choice == null || existingPackages.contains(choice.component.getPackageName())) {
                    continue;
                }
                while (dockSlot < 5 && occupiedDock.contains(dockSlot)) {
                    dockSlot++;
                }
                if (dockSlot >= 5) {
                    break;
                }
                insert(database, choice, -101L, dockSlot, dockSlot, 0);
                existingPackages.add(choice.component.getPackageName());
                occupiedDock.add(dockSlot++);
            }

            long screenId = firstWorkspaceScreen(database);
            Set<String> occupiedCells = readOccupiedCells(database, screenId);
            AppChoice settings = choice(packageManager, new Intent(Settings.ACTION_SETTINGS), "com.android.settings");
            insertOnWorkspace(database, settings, existingPackages, occupiedCells, screenId);
            AppChoice gallery = choice(packageManager, new Intent(Intent.ACTION_VIEW).setType("image/*"),
                "com.google.android.apps.photos", "com.sec.android.gallery3d", "com.android.gallery3d", "com.google.android.gallery3d");
            insertOnWorkspace(database, gallery, existingPackages, occupiedCells, screenId);
            database.setTransactionSuccessful();
            seeded = true;
        } catch (RuntimeException exception) {
            android.util.Log.e("Launcher.DefaultApps", "Could not seed default workspace apps", exception);
        } finally {
            database.endTransaction();
        }
        if (seeded) {
            preferences.edit().putBoolean(SEEDED_KEY, true).apply();
        }
    }

    private static AppChoice choice(PackageManager packageManager, Intent query, String... preferredPackages) {
        List<ResolveInfo> results = packageManager.queryIntentActivities(query, 0);
        if (results == null || results.isEmpty()) {
            return null;
        }
        ResolveInfo selected = null;
        for (String preferredPackage : preferredPackages) {
            for (ResolveInfo result : results) {
                if (result.activityInfo != null && preferredPackage.equals(result.activityInfo.packageName)) {
                    selected = result;
                    break;
                }
            }
            if (selected != null) {
                break;
            }
        }
        if (selected == null) {
            for (ResolveInfo result : results) {
                if (result.activityInfo != null) {
                    selected = result;
                    break;
                }
            }
        }
        if (selected == null || selected.activityInfo == null) {
            return null;
        }
        ComponentName component = new ComponentName(selected.activityInfo.packageName, selected.activityInfo.name);
        if (component.getPackageName().equals("com.clockiscool.kklauncherplusplus")) {
            return null;
        }
        Intent launchIntent = new Intent(query).setComponent(component);
        CharSequence label = selected.loadLabel(packageManager);
        String title = label == null ? component.getPackageName() : label.toString();
        return new AppChoice(component, launchIntent, title);
    }

    private static void readExisting(SQLiteDatabase database, Set<String> packages, Set<Integer> dockSlots) {
        try (Cursor cursor = database.rawQuery("SELECT intent, container, screen FROM favorites", null)) {
            int intentColumn = cursor.getColumnIndexOrThrow("intent");
            int containerColumn = cursor.getColumnIndexOrThrow("container");
            int screenColumn = cursor.getColumnIndexOrThrow("screen");
            while (cursor.moveToNext()) {
                try {
                    Intent intent = Intent.parseUri(cursor.getString(intentColumn), 0);
                    ComponentName component = intent.getComponent();
                    if (component != null) {
                        packages.add(component.getPackageName());
                    }
                } catch (Exception ignored) {
                }
                if (!cursor.isNull(containerColumn) && cursor.getLong(containerColumn) == -101L && !cursor.isNull(screenColumn)) {
                    dockSlots.add(cursor.getInt(screenColumn));
                }
            }
        }
    }

    private static long firstWorkspaceScreen(SQLiteDatabase database) {
        try (Cursor cursor = database.rawQuery("SELECT _id FROM workspaceScreens ORDER BY screenRank LIMIT 1", null)) {
            if (cursor.moveToFirst()) {
                return cursor.getLong(0);
            }
        }
        long screenId = 0;
        long screenRank = 0;
        try (Cursor cursor = database.rawQuery("SELECT COALESCE(MAX(_id), -1) + 1, COALESCE(MAX(screenRank), -1) + 1 FROM workspaceScreens", null)) {
            if (cursor.moveToFirst()) {
                screenId = cursor.getLong(0);
                screenRank = cursor.getLong(1);
            }
        }
        ContentValues screen = new ContentValues();
        screen.put("_id", screenId);
        screen.put("screenRank", screenRank);
        database.insertOrThrow("workspaceScreens", null, screen);
        return screenId;
    }

    private static Set<String> readOccupiedCells(SQLiteDatabase database, long screenId) {
        Set<String> occupied = new HashSet<>();
        try (Cursor cursor = database.rawQuery(
                "SELECT cellX, cellY, spanX, spanY FROM favorites WHERE container=-100 AND screen=?",
                new String[]{Long.toString(screenId)})) {
            while (cursor.moveToNext()) {
                int cellX = cursor.getInt(0);
                int cellY = cursor.getInt(1);
                int spanX = Math.max(cursor.getInt(2), 1);
                int spanY = Math.max(cursor.getInt(3), 1);
                for (int x = cellX; x < cellX + spanX; x++) {
                    for (int y = cellY; y < cellY + spanY; y++) {
                        occupied.add(x + ":" + y);
                    }
                }
            }
        }
        return occupied;
    }

    private static void insertOnWorkspace(SQLiteDatabase database, AppChoice choice, Set<String> existingPackages,
            Set<String> occupiedCells, long screenId) {
        if (choice == null || existingPackages.contains(choice.component.getPackageName())) {
            return;
        }
        for (int y = 0; y < 3; y++) {
            for (int x = 0; x < 3; x++) {
                String cell = x + ":" + y;
                if (!occupiedCells.contains(cell)) {
                    insert(database, choice, -100L, screenId, x, y);
                    existingPackages.add(choice.component.getPackageName());
                    occupiedCells.add(cell);
                    return;
                }
            }
        }
    }

    private static void insert(SQLiteDatabase database, AppChoice choice, long container, long screen, int cellX, int cellY) {
        ContentValues values = new ContentValues();
        values.put("title", choice.title);
        values.put("intent", choice.intent.toUri(0));
        values.put("container", container);
        values.put("screen", screen);
        values.put("cellX", cellX);
        values.put("cellY", cellY);
        values.put("spanX", 1);
        values.put("spanY", 1);
        values.put("itemType", 0);
        values.put("appWidgetId", -1);
        database.insertOrThrow("favorites", null, values);
    }

    private static final class AppChoice {
        final ComponentName component;
        final Intent intent;
        final String title;

        AppChoice(ComponentName component, Intent intent, String title) {
            this.component = component;
            this.intent = intent;
            this.title = title;
        }
    }
}
