package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.widget.Toast;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class UninstallShortcutReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ArrayList f111a = new ArrayList();
    private static boolean b = false;

    static void a() {
        b = true;
    }

    static void a(Context context) {
        b = false;
        Iterator it = f111a.iterator();
        while (it.hasNext()) {
            a(context, (eH) it.next());
            it.remove();
        }
    }

    private static void a(Context context, eH eHVar) {
        Intent intent = eHVar.f309a;
        cB.a(context.getApplicationContext());
        synchronized (cB.a()) {
            Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
            String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
            boolean booleanExtra = intent.getBooleanExtra("duplicate", true);
            if (intent2 != null && stringExtra != null) {
                ContentResolver contentResolver = context.getContentResolver();
                Cursor cursorQuery = contentResolver.query(dF.f261a, new String[]{"_id", "intent"}, "title=?", new String[]{stringExtra}, null);
                int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("intent");
                int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("_id");
                boolean z = false;
                while (cursorQuery.moveToNext()) {
                    try {
                        try {
                            if (intent2.filterEquals(Intent.parseUri(cursorQuery.getString(columnIndexOrThrow), 0))) {
                                contentResolver.delete(dF.a(cursorQuery.getLong(columnIndexOrThrow2), false), null, null);
                                if (!booleanExtra) {
                                    z = true;
                                    break;
                                }
                                z = true;
                            } else {
                                continue;
                            }
                        } catch (URISyntaxException e) {
                        }
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                }
                cursorQuery.close();
                if (z) {
                    contentResolver.notifyChange(dF.f261a, null);
                    Toast.makeText(context, context.getString(R.string.shortcut_uninstalled, stringExtra), 0).show();
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.android.launcher.action.UNINSTALL_SHORTCUT".equals(intent.getAction())) {
            eH eHVar = new eH(intent);
            if (b) {
                f111a.add(eHVar);
            } else {
                a(context, eHVar);
            }
        }
    }
}
