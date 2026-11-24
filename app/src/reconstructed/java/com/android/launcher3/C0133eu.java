package com.android.launcher3;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;

/* JADX INFO: renamed from: com.android.launcher3.eu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0133eu extends SQLiteOpenHelper {
    public C0133eu(Context context) {
        super(context, context.getDatabasePath("saved_wallpaper_images.db").getPath(), (SQLiteDatabase.CursorFactory) null, 1);
    }

    public static void a(Context context) {
        File file = new File(context.getCacheDir(), "saved_wallpaper_images.db");
        File databasePath = context.getDatabasePath("saved_wallpaper_images.db");
        if (file.exists()) {
            file.renameTo(databasePath);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS saved_wallpaper_images (id INTEGER NOT NULL, image_thumbnail TEXT NOT NULL, image TEXT NOT NULL, PRIMARY KEY (id ASC) );");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i != i2) {
            sQLiteDatabase.execSQL("DELETE FROM saved_wallpaper_images");
        }
    }
}
