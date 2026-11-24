package com.android.launcher3;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;

/* JADX INFO: renamed from: com.android.launcher3.fv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0161fv extends SQLiteOpenHelper {
    public C0161fv(Context context) {
        super(context, new File(context.getCacheDir(), "widgetpreviews.db").getPath(), (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (name TEXT NOT NULL, size TEXT NOT NULL, preview_bitmap BLOB NOT NULL, PRIMARY KEY (name, size) );");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i != i2) {
            sQLiteDatabase.execSQL("DELETE FROM shortcut_and_widget_previews");
        }
    }
}
