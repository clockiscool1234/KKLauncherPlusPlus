package nl.ndsc.kitkatlauncher;

import a.a.a.c.d;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Base64;
import com.android.launcher3.dF;
import com.android.launcher3.dG;
import com.android.launcher3.cB;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BackupManager {
    private static volatile Context applicationContext;
    private final Context context;

    private static final String[] ITEM_COLUMNS = {
        "_id", "title", "intent", "container", "screen", "cellX", "cellY",
        "spanX", "spanY", "itemType", "appWidgetId", "iconType", "iconPackage",
        "iconResource", "uri", "displayMode", "appWidgetProvider"
    };

    public BackupManager(Context context) {
        this.context = context.getApplicationContext();
        applicationContext = this.context;
    }

    private static String value(JSONObject object, String key) throws JSONException {
        return object.isNull(key) ? null : object.getString(key);
    }

    private static ContentValues itemValues(JSONObject object) throws JSONException {
        ContentValues values = new ContentValues();
        if (object.getInt("itemType") == 1) {
            String icon = value(object, "icon");
            if (icon != null && !icon.isEmpty()) {
                values.put("icon", Base64.decode(icon, Base64.DEFAULT));
            }
        }
        for (String column : ITEM_COLUMNS) {
            String columnValue = value(object, column);
            if (columnValue != null) {
                values.put(column, columnValue);
            }
        }
        return values;
    }

    private static ContentValues screenValues(JSONObject object) throws JSONException {
        ContentValues values = new ContentValues();
        values.put("_id", object.getLong("id"));
        values.put("screenRank", object.getInt("screenRank"));
        return values;
    }

    private static File backupDirectory(Context context) throws IOException {
        File externalDirectory = context.getExternalFilesDir(null);
        File baseDirectory = externalDirectory != null ? externalDirectory : context.getFilesDir();
        File directory = new File(baseDirectory, "KitKatLauncherPlus");
        if (!directory.isDirectory() && !directory.mkdirs() && !directory.isDirectory()) {
            throw new IOException("Could not create backup directory: " + directory);
        }
        return directory;
    }

    public static List listBackups() {
        Context context = applicationContext;
        if (context == null) {
            context = cB.b();
        }
        return context == null ? Collections.emptyList() : listBackups(context);
    }

    public static List listBackups(Context context) {
        ArrayList backups = new ArrayList();
        File[] files;
        try {
            files = backupDirectory(context.getApplicationContext()).listFiles(
                file -> file.isFile() && file.getName().toLowerCase(java.util.Locale.ROOT).endsWith(".json"));
        } catch (IOException exception) {
            return backups;
        }
        if (files == null) {
            return backups;
        }
        Arrays.sort(files, Comparator.comparing(File::getName).reversed());
        for (File file : files) {
            try {
                JSONObject backup = readBackup(file);
                JSONArray items = backup.getJSONArray("items");
                JSONArray screens = backup.getJSONArray("screens");
                Object entry = createBackupEntry(file, items.length(), screens.length());
                backups.add(entry);
            } catch (Exception ignored) {
            }
        }
        return backups;
    }

    private static Object createBackupEntry(File file, int itemCount, int screenCount) throws ReflectiveOperationException {
        Class<?> entryClass = Class.forName("nl.ndsc.kitkatlauncher.a.c");
        Object entry = entryClass.getDeclaredConstructor().newInstance();
        entryClass.getMethod("setBackupFile", File.class).invoke(entry, file);
        entryClass.getMethod("setItemCount", int.class).invoke(entry, itemCount);
        entryClass.getMethod("setScreenCount", int.class).invoke(entry, screenCount);
        return entry;
    }

    public static JSONObject readBackup(File file) throws IOException {
        StringBuilder contents = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(
                new FileInputStream(file), StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                contents.append(line);
            }
        }
        try {
            return new JSONObject(contents.toString());
        } catch (JSONException exception) {
            throw new IOException("Invalid backup JSON", exception);
        }
    }

    private JSONArray readItems() throws Exception {
        ContentResolver resolver = context.getContentResolver();
        JSONArray items = new JSONArray();
        try (Cursor cursor = resolver.query(dF.a, null, null, null, null)) {
            if (cursor == null) {
                throw new IOException("Could not read launcher items");
            }
            int itemTypeColumn = cursor.getColumnIndexOrThrow("itemType");
            while (cursor.moveToNext()) {
                if (cursor.getInt(itemTypeColumn) == 4) {
                    continue;
                }
                JSONObject item = new JSONObject();
                for (String column : ITEM_COLUMNS) {
                    int index = cursor.getColumnIndex(column);
                    if (index >= 0 && !cursor.isNull(index)) {
                        item.put(column, cursor.getString(index));
                    }
                }
                int iconIndex = cursor.getColumnIndex("icon");
                if (cursor.getInt(itemTypeColumn) == 1 && iconIndex >= 0 && !cursor.isNull(iconIndex)) {
                    byte[] icon = cursor.getBlob(iconIndex);
                    if (icon != null && icon.length > 0) {
                        item.put("icon", Base64.encodeToString(icon, Base64.DEFAULT));
                    }
                }
                items.put(item);
            }
        }
        return items;
    }

    private JSONArray readScreens() throws IOException, JSONException {
        JSONArray screens = new JSONArray();
        try (Cursor cursor = context.getContentResolver().query(dG.f262a, null, null, null, null)) {
            if (cursor == null) {
                throw new IOException("Could not read launcher screens");
            }
            int idColumn = cursor.getColumnIndexOrThrow("_id");
            int rankColumn = cursor.getColumnIndexOrThrow("screenRank");
            while (cursor.moveToNext()) {
                JSONObject screen = new JSONObject();
                screen.put("id", cursor.getLong(idColumn));
                screen.put("screenRank", cursor.getInt(rankColumn));
                screens.put(screen);
            }
        }
        return screens;
    }

    private JSONObject buildBackup() throws Exception {
        JSONArray screens = readScreens();
        if (screens.length() == 0) {
            throw new IOException("No launcher screens found");
        }
        JSONObject backup = new JSONObject();
        backup.put("formatVersion", 2);
        backup.put("screens", screens);
        backup.put("items", readItems());
        backup.put("settings", d.q(context));
        return backup;
    }

    public void createBackup() throws Exception {
        JSONObject backup = buildBackup();
        File directory = backupDirectory(context);
        File temporary = File.createTempFile("backup-", ".tmp", directory);
        File destination = new File(directory, System.currentTimeMillis() + ".json");
        try {
            try (OutputStreamWriter writer = new OutputStreamWriter(
                    new FileOutputStream(temporary), StandardCharsets.UTF_8)) {
                writer.write(backup.toString());
                writer.flush();
            }
            if (!temporary.renameTo(destination)) {
                throw new IOException("Could not finish writing backup");
            }
        } finally {
            if (temporary.exists()) {
                temporary.delete();
            }
        }
    }

    public void createBackup(Uri destination) throws Exception {
        if (destination == null) {
            throw new IOException("No backup file was selected");
        }
        try (java.io.OutputStream output = context.getContentResolver().openOutputStream(destination, "wt")) {
            if (output == null) {
                throw new IOException("Could not open the selected file for writing");
            }
            output.write(buildBackup().toString().getBytes(StandardCharsets.UTF_8));
            output.flush();
        }
    }

    public void restoreBackup(File file) throws Exception {
        restoreBackup(readBackup(file));
    }

    public void restoreBackup(Uri source) throws Exception {
        if (source == null) {
            throw new IOException("No backup file was selected");
        }
        StringBuilder contents = new StringBuilder();
        java.io.InputStream input = context.getContentResolver().openInputStream(source);
        if (input == null) {
            throw new IOException("Could not open the selected backup file");
        }
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(input, StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                contents.append(line);
            }
        }
        try {
            restoreBackup(new JSONObject(contents.toString()));
        } catch (JSONException exception) {
            throw new IOException("The selected file is not a valid launcher backup", exception);
        }
    }

    private void restoreBackup(JSONObject backup) throws Exception {
        JSONArray items = backup.getJSONArray("items");
        JSONArray screens = backup.getJSONArray("screens");
        if (screens.length() == 0) {
            throw new IOException("The selected backup has no launcher screens");
        }

        ArrayList<ContentProviderOperation> operations = new ArrayList<>();
        operations.add(ContentProviderOperation.newDelete(dG.f262a).build());
        operations.add(ContentProviderOperation.newDelete(dF.a).build());
        for (int i = 0; i < screens.length(); i++) {
            operations.add(ContentProviderOperation.newInsert(dG.f262a)
                .withValues(screenValues(screens.getJSONObject(i))).build());
        }
        for (int i = 0; i < items.length(); i++) {
            operations.add(ContentProviderOperation.newInsert(dF.c)
                .withValues(itemValues(items.getJSONObject(i))).build());
        }
        context.getContentResolver().applyBatch(context.getPackageName() + ".settings", operations);

        JSONObject settings = backup.optJSONObject("settings");
        if (settings != null) {
            d.a(context, settings);
        }
    }
}
