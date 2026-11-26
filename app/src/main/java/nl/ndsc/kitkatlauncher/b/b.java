package nl.ndsc.kitkatlauncher.b;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.Preference;
import android.widget.Toast;
import nl.ndsc.kitkatlauncher.R;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import nl.ndsc.kitkatlauncher.BackupManager;

public final class b extends r {
    private static final int REQUEST_CREATE_BACKUP = 4101;
    private static final int REQUEST_RESTORE_BACKUP = 4102;

    @Override
    protected void a(String key) {
        super.a(key);
        if ("setting_backup_key".equals(key)) {
            Intent intent = new Intent(Intent.ACTION_CREATE_DOCUMENT);
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType("application/json");
            intent.putExtra(Intent.EXTRA_TITLE, "kklauncherplusplus-" +
                    new SimpleDateFormat("yyyy-MM-dd-HHmmss", Locale.US).format(new Date()) + ".json");
            launchDocumentPicker(intent, REQUEST_CREATE_BACKUP);
        } else if ("setting_restore_key".equals(key)) {
            new AlertDialog.Builder(getActivity())
                    .setTitle("Replace launcher layout?")
                    .setMessage("Restoring replaces the current home screen, dock, and launcher settings. Continue by choosing a backup file?")
                    .setNegativeButton("Cancel", null)
                    .setPositiveButton("Choose backup", (dialog, which) -> chooseRestoreFile())
                    .show();
        }
    }

    private void chooseRestoreFile() {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("application/json");
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        launchDocumentPicker(intent, REQUEST_RESTORE_BACKUP);
    }

    private void launchDocumentPicker(Intent intent, int requestCode) {
        try {
            startActivityForResult(intent, requestCode);
        } catch (ActivityNotFoundException exception) {
            Toast.makeText(getActivity(), "No file picker is available on this device", Toast.LENGTH_LONG).show();
        }
    }

    @Override
    public void onCreate(Bundle state) {
        super.onCreate(state);
        addPreferencesFromResource(R.xml.settings_backup);
    }

    @Override
    public void onResume() {
        super.onResume();
        c("Backup");
        Preference backup = findPreference("setting_backup_key");
        Preference restore = findPreference("setting_restore_key");
        if (backup != null) {
            backup.setSummary("Save a backup file that includes your home screen, dock, and settings");
        }
        if (restore != null) {
            restore.setSummary("Choose a KKLauncher++ backup file to restore");
        }
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if ((requestCode != REQUEST_CREATE_BACKUP && requestCode != REQUEST_RESTORE_BACKUP)
                || resultCode != Activity.RESULT_OK || data == null || data.getData() == null) {
            return;
        }
        runBackup(data.getData(), requestCode == REQUEST_RESTORE_BACKUP);
    }

    private void runBackup(Uri uri, boolean restore) {
        Context context = getActivity().getApplicationContext();
        Handler main = new Handler(Looper.getMainLooper());
        Thread worker = new Thread(() -> {
            String message;
            try {
                BackupManager manager = new BackupManager(context);
                if (restore) {
                    manager.restoreBackup(uri);
                    message = "Launcher backup restored";
                } else {
                    manager.createBackup(uri);
                    message = "Launcher backup saved";
                }
            } catch (Exception exception) {
                message = (restore ? "Could not restore backup: " : "Could not save backup: ") +
                        (exception.getMessage() == null ? exception.getClass().getSimpleName() : exception.getMessage());
            }
            String result = message;
            main.post(() -> Toast.makeText(context, result, Toast.LENGTH_LONG).show());
        }, "launcher-backup");
        worker.start();
    }
}
