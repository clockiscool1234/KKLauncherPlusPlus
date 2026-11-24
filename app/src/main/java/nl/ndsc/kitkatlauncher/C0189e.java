package nl.ndsc.kitkatlauncher;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.List;
import org.json.JSONObject;

public final class C0189e extends BackupManager {
    public C0189e(Context context) {
        super(context);
    }

    public static List b() {
        return BackupManager.listBackups();
    }

    public static JSONObject b(File file) throws IOException {
        return BackupManager.readBackup(file);
    }

    public void a() throws Exception {
        createBackup();
    }

    public void a(File file) throws Exception {
        restoreBackup(file);
    }
}
