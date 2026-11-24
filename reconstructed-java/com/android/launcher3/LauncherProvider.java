package com.android.launcher3;

import android.content.ContentProvider;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LauncherProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Uri f95a = Uri.parse("content://nl.ndsc.kitkatlauncher.settings/appWidgetReset");
    private static boolean c;
    private dB b;

    static /* synthetic */ long a(dB dBVar, SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        return b(dBVar, sQLiteDatabase, str, null, contentValues);
    }

    static String a(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int length = iArr.length - 1; length >= 0; length--) {
            sb.append(str).append("=").append(iArr[length]);
            if (length > 0) {
                sb.append(" OR ");
            }
        }
        return sb.toString();
    }

    private static void a(ContentValues contentValues) {
        contentValues.put("modified", Long.valueOf(System.currentTimeMillis()));
    }

    static /* synthetic */ void a(SQLiteDatabase sQLiteDatabase, long j) {
        dC dCVar = new dC(dF.a(j, false), null, null);
        sQLiteDatabase.delete(dCVar.f259a, dCVar.b, dCVar.c);
    }

    private void a(Uri uri) {
        String queryParameter = uri.getQueryParameter("notify");
        if (queryParameter == null || "true".equals(queryParameter)) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
    }

    static /* synthetic */ boolean a(Context context) {
        context.getResources().getBoolean(R.bool.is_tablet);
        return false;
    }

    private static long b(dB dBVar, SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        if (contentValues == null) {
            throw new RuntimeException("Error: attempting to insert null values");
        }
        if (!contentValues.containsKey("_id")) {
            throw new RuntimeException("Error: attempting to add item without specifying an id");
        }
        dBVar.a(str, contentValues);
        return sQLiteDatabase.insert(str, str2, contentValues);
    }

    public final synchronized void a(int i) {
        int i2;
        SharedPreferences sharedPreferences = getContext().getSharedPreferences("com.android.launcher3.prefs", 0);
        if (sharedPreferences.getBoolean("EMPTY_DATABASE_CREATED", false)) {
            Log.d("Launcher.LauncherProvider", "loading default workspace");
            if (i == 0) {
                i2 = sharedPreferences.getInt("DEFAULT_WORKSPACE_RESOURCE_ID", cB.o() ? R.xml.default_workspace_no_all_apps : R.xml.default_workspace);
            } else {
                i2 = i;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove("EMPTY_DATABASE_CREATED");
            if (i != 0) {
                editorEdit.putInt("DEFAULT_WORKSPACE_RESOURCE_ID", i);
            }
            this.b.a(this.b.getWritableDatabase(), i2);
            this.b.d();
            editorEdit.commit();
        }
    }

    public final void a(long j) {
        this.b.a(j);
    }

    public final boolean a() {
        return this.b.a();
    }

    @Override // android.content.ContentProvider
    public ContentProviderResult[] applyBatch(ArrayList arrayList) {
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentProviderResult[] contentProviderResultArrApplyBatch = super.applyBatch(arrayList);
            writableDatabase.setTransactionSuccessful();
            return contentProviderResultArrApplyBatch;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final long b() {
        return this.b.b();
    }

    public final void b(long j) {
        this.b.b(j);
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        dC dCVar = new dC(uri);
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int length = contentValuesArr.length;
            for (int i = 0; i < length; i++) {
                a(contentValuesArr[i]);
                if (b(this.b, writableDatabase, dCVar.f259a, null, contentValuesArr[i]) < 0) {
                    writableDatabase.endTransaction();
                    return 0;
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            a(uri);
            return contentValuesArr.length;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
            throw th;
        }
    }

    public final long c() {
        return this.b.c();
    }

    public final synchronized boolean d() {
        boolean z = true;
        synchronized (this) {
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("com.android.launcher3.prefs", 0);
            boolean z2 = c;
            c = false;
            if (sharedPreferences.getBoolean("UPGRADED_FROM_OLD_DATABASE", false)) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.remove("UPGRADED_FROM_OLD_DATABASE");
                editorEdit.commit();
            } else {
                z = z2;
            }
        }
        return z;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        dC dCVar = new dC(uri, str, strArr);
        int iDelete = this.b.getWritableDatabase().delete(dCVar.f259a, dCVar.b, dCVar.c);
        if (iDelete > 0) {
            a(uri);
        }
        return iDelete;
    }

    public final void e() {
        this.b.a(this.b.getWritableDatabase(), dF.b);
    }

    public final void f() {
        File file = new File(this.b.getWritableDatabase().getPath());
        this.b.close();
        if (file.exists()) {
            SQLiteDatabase.deleteDatabase(file);
        }
        this.b = new dB(getContext());
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        dC dCVar = new dC(uri, null, null);
        return TextUtils.isEmpty(dCVar.b) ? "vnd.android.cursor.dir/" + dCVar.f259a : "vnd.android.cursor.item/" + dCVar.f259a;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        dC dCVar = new dC(uri);
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        a(contentValues);
        long jB = b(this.b, writableDatabase, dCVar.f259a, null, contentValues);
        if (jB <= 0) {
            return null;
        }
        Uri uriWithAppendedId = ContentUris.withAppendedId(uri, jB);
        a(uriWithAppendedId);
        return uriWithAppendedId;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.b = new dB(getContext());
        cB.a(this);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        dC dCVar = new dC(uri, str, strArr2);
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(dCVar.f259a);
        Cursor cursorQuery = sQLiteQueryBuilder.query(this.b.getWritableDatabase(), strArr, dCVar.b, dCVar.c, null, null, str2);
        cursorQuery.setNotificationUri(getContext().getContentResolver(), uri);
        return cursorQuery;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        dC dCVar = new dC(uri, str, strArr);
        a(contentValues);
        int iUpdate = this.b.getWritableDatabase().update(dCVar.f259a, contentValues, dCVar.b, dCVar.c);
        if (iUpdate > 0) {
            a(uri);
        }
        return iUpdate;
    }
}
