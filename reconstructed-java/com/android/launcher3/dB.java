package com.android.launcher3;

import android.app.SearchManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class dB extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f258a;
    private final AppWidgetHost b;
    private long c;
    private long d;
    private boolean e;

    public dB(Context context) {
        super(context, "launcher.db", (SQLiteDatabase.CursorFactory) null, 18);
        this.c = -1L;
        this.d = -1L;
        this.e = false;
        this.f258a = context;
        this.b = new AppWidgetHost(context, 1024);
        if (this.c == -1) {
            this.c = b(getWritableDatabase());
        }
        if (this.d == -1) {
            this.d = c(getWritableDatabase());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(SQLiteDatabase sQLiteDatabase, int i) throws PackageManager.NameNotFoundException {
        int i2;
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        ContentValues contentValues = new ContentValues();
        PackageManager packageManager = this.f258a.getPackageManager();
        int iA = 0;
        try {
            XmlResourceParser xml = this.f258a.getResources().getXml(i);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            a(xml, "favorites");
            int depth = xml.getDepth();
            while (true) {
                int next = xml.next();
                if (next == 3 && xml.getDepth() <= depth) {
                    i2 = iA;
                    break;
                }
                if (next == 1) {
                    i2 = iA;
                    break;
                }
                if (next == 2) {
                    boolean zA = false;
                    String name = xml.getName();
                    if ("include".equals(name)) {
                        TypedArray typedArrayObtainStyledAttributes = this.f258a.obtainStyledAttributes(attributeSetAsAttributeSet, nl.ndsc.kitkatlauncher.A.h);
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                        if (resourceId == 0 || resourceId == i) {
                            Log.w("Launcher.LauncherProvider", String.format("Skipping <include workspace=0x%08x>", Integer.valueOf(resourceId)));
                        } else {
                            iA += a(sQLiteDatabase, resourceId);
                        }
                        typedArrayObtainStyledAttributes.recycle();
                    } else {
                        TypedArray typedArrayObtainStyledAttributes2 = this.f258a.obtainStyledAttributes(attributeSetAsAttributeSet, nl.ndsc.kitkatlauncher.A.f);
                        long jLongValue = typedArrayObtainStyledAttributes2.hasValue(2) ? Long.valueOf(typedArrayObtainStyledAttributes2.getString(2)).longValue() : -100L;
                        String string = typedArrayObtainStyledAttributes2.getString(3);
                        String string2 = typedArrayObtainStyledAttributes2.getString(4);
                        String string3 = typedArrayObtainStyledAttributes2.getString(5);
                        contentValues.clear();
                        contentValues.put("container", Long.valueOf(jLongValue));
                        contentValues.put("screen", string);
                        contentValues.put("cellX", string2);
                        contentValues.put("cellY", string3);
                        if (!"favorite".equals(name)) {
                            if (!"search".equals(name)) {
                                if (!"clock".equals(name)) {
                                    if (!"appwidget".equals(name)) {
                                        if (!"shortcut".equals(name)) {
                                            if ("folder".equals(name)) {
                                                int resourceId2 = typedArrayObtainStyledAttributes2.getResourceId(9, -1);
                                                contentValues.put("title", resourceId2 != -1 ? this.f258a.getResources().getString(resourceId2) : this.f258a.getResources().getString(R.string.folder_name));
                                                contentValues.put("itemType", (Integer) 2);
                                                contentValues.put("spanX", (Integer) 1);
                                                contentValues.put("spanY", (Integer) 1);
                                                long jB = b();
                                                contentValues.put("_id", Long.valueOf(jB));
                                                long j = LauncherProvider.a(this, sQLiteDatabase, "favorites", null, contentValues) <= 0 ? -1L : jB;
                                                zA = j >= 0;
                                                ArrayList arrayList = new ArrayList();
                                                int depth2 = xml.getDepth();
                                                while (true) {
                                                    int next2 = xml.next();
                                                    if (next2 == 3 && xml.getDepth() <= depth2) {
                                                        if (arrayList.size() >= 2 || j < 0) {
                                                            break;
                                                            break;
                                                        }
                                                        LauncherProvider.a(sQLiteDatabase, j);
                                                        if (arrayList.size() > 0) {
                                                            LauncherProvider.a(sQLiteDatabase, ((Long) arrayList.get(0)).longValue());
                                                        }
                                                        zA = false;
                                                        break;
                                                    }
                                                    if (next2 == 2) {
                                                        String name2 = xml.getName();
                                                        TypedArray typedArrayObtainStyledAttributes3 = this.f258a.obtainStyledAttributes(attributeSetAsAttributeSet, nl.ndsc.kitkatlauncher.A.f);
                                                        contentValues.clear();
                                                        contentValues.put("container", Long.valueOf(j));
                                                        if ("favorite".equals(name2) && j >= 0) {
                                                            long jA = a(sQLiteDatabase, contentValues, typedArrayObtainStyledAttributes3, packageManager, intent);
                                                            if (jA >= 0) {
                                                                arrayList.add(Long.valueOf(jA));
                                                            }
                                                        } else {
                                                            if (!"shortcut".equals(name2) || j < 0) {
                                                                throw new RuntimeException("Folders can contain only shortcuts");
                                                            }
                                                            long jA2 = a(sQLiteDatabase, contentValues, typedArrayObtainStyledAttributes3);
                                                            if (jA2 >= 0) {
                                                                arrayList.add(Long.valueOf(jA2));
                                                            }
                                                        }
                                                        typedArrayObtainStyledAttributes3.recycle();
                                                    }
                                                }
                                            }
                                        } else {
                                            zA = a(sQLiteDatabase, contentValues, typedArrayObtainStyledAttributes2) >= 0;
                                        }
                                    } else {
                                        zA = a(xml, attributeSetAsAttributeSet, sQLiteDatabase, contentValues, typedArrayObtainStyledAttributes2, packageManager);
                                    }
                                } else {
                                    zA = a(sQLiteDatabase, contentValues, new ComponentName("com.android.alarmclock", "com.android.alarmclock.AnalogAppWidgetProvider"), 2, 2, (Bundle) null);
                                }
                            } else {
                                zA = a(sQLiteDatabase, contentValues, f(), 4, 1, (Bundle) null);
                            }
                        } else {
                            zA = a(sQLiteDatabase, contentValues, typedArrayObtainStyledAttributes2, packageManager, intent) >= 0;
                        }
                        if (zA) {
                            iA++;
                        }
                        typedArrayObtainStyledAttributes2.recycle();
                    }
                }
            }
        } catch (IOException e) {
            i2 = iA;
            Log.w("Launcher.LauncherProvider", "Got exception parsing favorites.", e);
        } catch (RuntimeException e2) {
            i2 = iA;
            Log.w("Launcher.LauncherProvider", "Got exception parsing favorites.", e2);
        } catch (XmlPullParserException e3) {
            i2 = iA;
            Log.w("Launcher.LauncherProvider", "Got exception parsing favorites.", e3);
        }
        if (this.c == -1) {
            this.c = b(sQLiteDatabase);
        }
        return i2;
    }

    private int a(SQLiteDatabase sQLiteDatabase, Cursor cursor, dA dAVar) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow("_id");
        int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow("intent");
        int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow("title");
        int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow("iconType");
        int columnIndexOrThrow5 = cursor.getColumnIndexOrThrow("icon");
        int columnIndexOrThrow6 = cursor.getColumnIndexOrThrow("iconPackage");
        int columnIndexOrThrow7 = cursor.getColumnIndexOrThrow("iconResource");
        int columnIndexOrThrow8 = cursor.getColumnIndexOrThrow("container");
        int columnIndexOrThrow9 = cursor.getColumnIndexOrThrow("itemType");
        int columnIndexOrThrow10 = cursor.getColumnIndexOrThrow("screen");
        int columnIndexOrThrow11 = cursor.getColumnIndexOrThrow("cellX");
        int columnIndexOrThrow12 = cursor.getColumnIndexOrThrow("cellY");
        int columnIndexOrThrow13 = cursor.getColumnIndexOrThrow("uri");
        int columnIndexOrThrow14 = cursor.getColumnIndexOrThrow("displayMode");
        ContentValues[] contentValuesArr = new ContentValues[cursor.getCount()];
        int i = 0;
        while (cursor.moveToNext()) {
            ContentValues contentValues = new ContentValues(cursor.getColumnCount());
            contentValues.put("_id", Long.valueOf(cursor.getLong(columnIndexOrThrow)));
            contentValues.put("intent", cursor.getString(columnIndexOrThrow2));
            contentValues.put("title", cursor.getString(columnIndexOrThrow3));
            contentValues.put("iconType", Integer.valueOf(cursor.getInt(columnIndexOrThrow4)));
            contentValues.put("icon", cursor.getBlob(columnIndexOrThrow5));
            contentValues.put("iconPackage", cursor.getString(columnIndexOrThrow6));
            contentValues.put("iconResource", cursor.getString(columnIndexOrThrow7));
            contentValues.put("container", Integer.valueOf(cursor.getInt(columnIndexOrThrow8)));
            contentValues.put("itemType", Integer.valueOf(cursor.getInt(columnIndexOrThrow9)));
            contentValues.put("appWidgetId", (Integer) (-1));
            contentValues.put("screen", Integer.valueOf(cursor.getInt(columnIndexOrThrow10)));
            contentValues.put("cellX", Integer.valueOf(cursor.getInt(columnIndexOrThrow11)));
            contentValues.put("cellY", Integer.valueOf(cursor.getInt(columnIndexOrThrow12)));
            contentValues.put("uri", cursor.getString(columnIndexOrThrow13));
            contentValues.put("displayMode", Integer.valueOf(cursor.getInt(columnIndexOrThrow14)));
            if (dAVar != null) {
                dAVar.a(contentValues);
            }
            contentValuesArr[i] = contentValues;
            i++;
        }
        if (i <= 0) {
            return 0;
        }
        sQLiteDatabase.beginTransaction();
        try {
            int i2 = 0;
            for (ContentValues contentValues2 : contentValuesArr) {
                if (LauncherProvider.a(this, sQLiteDatabase, "favorites", null, contentValues2) < 0) {
                    return 0;
                }
                i2++;
            }
            sQLiteDatabase.setTransactionSuccessful();
            return i2;
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    private long a(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, TypedArray typedArray) {
        String string;
        Resources resources = this.f258a.getResources();
        int resourceId = typedArray.getResourceId(8, 0);
        int resourceId2 = typedArray.getResourceId(9, 0);
        try {
            string = typedArray.getString(10);
            try {
                Intent uri = Intent.parseUri(string, 0);
                if (resourceId == 0 || resourceId2 == 0) {
                    Log.w("Launcher.LauncherProvider", "Shortcut is missing title or icon resource ID");
                    return -1L;
                }
                long jB = b();
                uri.setFlags(268435456);
                contentValues.put("intent", uri.toUri(0));
                contentValues.put("title", resources.getString(resourceId2));
                contentValues.put("itemType", (Integer) 1);
                contentValues.put("spanX", (Integer) 1);
                contentValues.put("spanY", (Integer) 1);
                contentValues.put("iconType", (Integer) 0);
                contentValues.put("iconPackage", this.f258a.getPackageName());
                contentValues.put("iconResource", resources.getResourceName(resourceId));
                contentValues.put("_id", Long.valueOf(jB));
                if (LauncherProvider.a(this, sQLiteDatabase, "favorites", null, contentValues) >= 0) {
                    return jB;
                }
                return -1L;
            } catch (URISyntaxException e) {
                Log.w("Launcher.LauncherProvider", "Shortcut has malformed uri: " + string);
                return -1L;
            }
        } catch (URISyntaxException e2) {
            string = null;
        }
    }

    private long a(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, TypedArray typedArray, PackageManager packageManager, Intent intent) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo;
        ComponentName componentName;
        long jB;
        PackageManager.NameNotFoundException e;
        String string = typedArray.getString(1);
        String string2 = typedArray.getString(0);
        try {
            try {
                ComponentName componentName2 = new ComponentName(string, string2);
                activityInfo = packageManager.getActivityInfo(componentName2, 0);
                componentName = componentName2;
            } catch (PackageManager.NameNotFoundException e2) {
                ComponentName componentName3 = new ComponentName(packageManager.currentToCanonicalPackageNames(new String[]{string})[0], string2);
                activityInfo = packageManager.getActivityInfo(componentName3, 0);
                componentName = componentName3;
            }
            jB = b();
            try {
                intent.setComponent(componentName);
                intent.setFlags(270532608);
                contentValues.put("intent", intent.toUri(0));
                contentValues.put("title", activityInfo.loadLabel(packageManager).toString());
                contentValues.put("itemType", (Integer) 0);
                contentValues.put("spanX", (Integer) 1);
                contentValues.put("spanY", (Integer) 1);
                contentValues.put("_id", Long.valueOf(b()));
                if (LauncherProvider.a(this, sQLiteDatabase, "favorites", null, contentValues) < 0) {
                    return -1L;
                }
                return jB;
            } catch (PackageManager.NameNotFoundException e3) {
                e = e3;
                Log.w("Launcher.LauncherProvider", "Unable to add favorite: " + string + "/" + string2, e);
                return jB;
            }
        } catch (PackageManager.NameNotFoundException e4) {
            jB = -1;
            e = e4;
            Log.w("Launcher.LauncherProvider", "Unable to add favorite: " + string + "/" + string2, e);
            return jB;
        }
    }

    static /* synthetic */ long a(dB dBVar, long j) {
        return j >= 2 ? j - 2 : 3 + j;
    }

    private static final void a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (!xmlPullParser.getName().equals(str)) {
            throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
        }
    }

    private boolean a(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, SQLiteDatabase sQLiteDatabase, ContentValues contentValues, TypedArray typedArray, PackageManager packageManager) {
        String string = typedArray.getString(1);
        String string2 = typedArray.getString(0);
        if (string == null || string2 == null) {
            return false;
        }
        boolean z = true;
        ComponentName componentName = new ComponentName(string, string2);
        try {
            packageManager.getReceiverInfo(componentName, 0);
        } catch (Exception e) {
            componentName = new ComponentName(packageManager.currentToCanonicalPackageNames(new String[]{string})[0], string2);
            try {
                packageManager.getReceiverInfo(componentName, 0);
            } catch (Exception e2) {
                z = false;
            }
        }
        if (!z) {
            return false;
        }
        int i = typedArray.getInt(6, 0);
        int i2 = typedArray.getInt(7, 0);
        Bundle bundle = new Bundle();
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                return a(sQLiteDatabase, contentValues, componentName, i, i2, bundle);
            }
            if (next == 2) {
                TypedArray typedArrayObtainStyledAttributes = this.f258a.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.e);
                if (!"extra".equals(xmlResourceParser.getName())) {
                    throw new RuntimeException("Widgets can contain only extras");
                }
                String string3 = typedArrayObtainStyledAttributes.getString(0);
                String string4 = typedArrayObtainStyledAttributes.getString(1);
                if (string3 == null || string4 == null) {
                    throw new RuntimeException("Widget extras must have a key and value");
                }
                bundle.putString(string3, string4);
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x010f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int[]] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    private boolean a(SQLiteDatabase sQLiteDatabase) throws Throwable {
        Cursor cursorQuery = null;
        int[] filterTypes = {1};
        String strA = LauncherProvider.a("itemType", filterTypes);
        sQLiteDatabase.beginTransaction();
        try {
            try {
                cursorQuery = sQLiteDatabase.query("favorites", new String[]{"_id", "intent"}, strA, null, null, null, null);
                if (cursorQuery == null) {
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
                try {
                    int columnIndex = cursorQuery.getColumnIndex("_id");
                    int columnIndex2 = cursorQuery.getColumnIndex("intent");
                    while (cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(columnIndex);
                        String string = cursorQuery.getString(columnIndex2);
                        if (string != null) {
                            try {
                                Intent uri = Intent.parseUri(string, 0);
                                Log.d("Home", uri.toString());
                                Uri data = uri.getData();
                                if (data != null) {
                                    String string2 = data.toString();
                                    if ("android.intent.action.VIEW".equals(uri.getAction()) || "com.android.contacts.action.QUICK_CONTACT".equals(uri.getAction())) {
                                        if (string2.startsWith("content://contacts/people/") || string2.startsWith("content://com.android.contacts/contacts/lookup/")) {
                                            Intent intent = new Intent("com.android.contacts.action.QUICK_CONTACT");
                                            intent.addFlags(268468224);
                                            intent.putExtra("com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION", true);
                                            intent.setData(data);
                                            intent.setDataAndType(data, intent.resolveType(this.f258a));
                                            ContentValues contentValues = new ContentValues();
                                            contentValues.put("intent", intent.toUri(0));
                                            sQLiteDatabase.update("favorites", contentValues, "_id=" + j, null);
                                        }
                                    }
                                }
                            } catch (RuntimeException e) {
                                Log.e("Launcher.LauncherProvider", "Problem upgrading shortcut", e);
                            } catch (URISyntaxException e2) {
                                Log.e("Launcher.LauncherProvider", "Problem upgrading shortcut", e2);
                            }
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return true;
                } catch (SQLException e3) {
                    e = e3;
                    Log.w("Launcher.LauncherProvider", "Problem while upgrading contacts", e);
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase.endTransaction();
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (SQLException e4) {
            e = e4;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            sQLiteDatabase.endTransaction();
            if (r1 != 0) {
                r1.close();
            }
            throw th;
        }
    }

    private boolean a(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, ComponentName componentName, int i, int i2, Bundle bundle) {
        boolean z;
        RuntimeException e;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f258a);
        try {
            int iAllocateAppWidgetId = this.b.allocateAppWidgetId();
            contentValues.put("itemType", (Integer) 4);
            contentValues.put("spanX", Integer.valueOf(i));
            contentValues.put("spanY", Integer.valueOf(i2));
            contentValues.put("appWidgetId", Integer.valueOf(iAllocateAppWidgetId));
            contentValues.put("appWidgetProvider", componentName.flattenToString());
            contentValues.put("_id", Long.valueOf(b()));
            LauncherProvider.a(this, sQLiteDatabase, "favorites", null, contentValues);
            z = true;
            try {
                appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, componentName);
                if (bundle != null && !bundle.isEmpty()) {
                    Intent intent = new Intent("com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE");
                    intent.setComponent(componentName);
                    intent.putExtras(bundle);
                    intent.putExtra("appWidgetId", iAllocateAppWidgetId);
                    this.f258a.sendBroadcast(intent);
                }
            } catch (RuntimeException e2) {
                e = e2;
                Log.e("Launcher.LauncherProvider", "Problem allocating appWidgetId", e);
            }
        } catch (RuntimeException e3) {
            z = false;
            e = e3;
        }
        return z;
    }

    private boolean a(SQLiteDatabase sQLiteDatabase, Uri uri, dA dAVar, boolean z) throws Throwable {
        Cursor cursorQuery;
        boolean z2;
        ContentResolver contentResolver = this.f258a.getContentResolver();
        try {
            cursorQuery = contentResolver.query(uri, null, null, null, null);
        } catch (Exception e) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            try {
                if (cursorQuery.getCount() > 0) {
                    boolean z3 = a(sQLiteDatabase, cursorQuery, dAVar) > 0;
                    if (z3 && z) {
                        contentResolver.delete(uri, null, null);
                        z2 = z3;
                    } else {
                        z2 = z3;
                    }
                } else {
                    z2 = false;
                }
            } finally {
                cursorQuery.close();
            }
        } else {
            z2 = false;
        }
        if (z2) {
            d(sQLiteDatabase);
            this.c = b(sQLiteDatabase);
        }
        return z2;
    }

    private static long b(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT MAX(_id) FROM favorites", null);
        long j = (cursorRawQuery == null || !cursorRawQuery.moveToNext()) ? -1L : cursorRawQuery.getLong(0);
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        if (j == -1) {
            throw new RuntimeException("Error: could not query max item id");
        }
        return j;
    }

    private static long c(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT MAX(_id) FROM workspaceScreens", null);
        long j = (cursorRawQuery == null || !cursorRawQuery.moveToNext()) ? -1L : cursorRawQuery.getLong(0);
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        if (j == -1) {
            throw new RuntimeException("Error: could not query max screen id");
        }
        Launcher.a("Launcher.LauncherProvider", "11683562 - initializeMaxScreenId(): " + j, true);
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        SharedPreferences.Editor editorEdit = this.f258a.getSharedPreferences("com.android.launcher3.prefs", 0).edit();
        editorEdit.putBoolean("UPGRADED_FROM_OLD_DATABASE", true);
        editorEdit.putBoolean("EMPTY_DATABASE_CREATED", false);
        editorEdit.commit();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00e8  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    private void d(SQLiteDatabase sQLiteDatabase) throws Throwable {
        Cursor cursorQuery;
        Cursor cursorForCleanup = null;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f258a);
        String strA = LauncherProvider.a("itemType", new int[]{1000, 1002, 1001});
        sQLiteDatabase.beginTransaction();
        try {
            try {
                cursorQuery = sQLiteDatabase.query("favorites", new String[]{"_id", "itemType"}, strA, null, null, null, null);
                cursorForCleanup = cursorQuery;
                try {
                    ContentValues contentValues = new ContentValues();
                    while (cursorQuery != null && cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(0);
                        int i = cursorQuery.getInt(1);
                        try {
                            int iAllocateAppWidgetId = this.b.allocateAppWidgetId();
                            contentValues.clear();
                            contentValues.put("itemType", (Integer) 4);
                            contentValues.put("appWidgetId", Integer.valueOf(iAllocateAppWidgetId));
                            if (i == 1001) {
                                contentValues.put("spanX", (Integer) 4);
                                contentValues.put("spanY", (Integer) 1);
                            } else {
                                contentValues.put("spanX", (Integer) 2);
                                contentValues.put("spanY", (Integer) 2);
                            }
                            sQLiteDatabase.update("favorites", contentValues, "_id=" + j, null);
                            if (i == 1000) {
                                appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, new ComponentName("com.android.alarmclock", "com.android.alarmclock.AnalogAppWidgetProvider"));
                            } else if (i == 1002) {
                                appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, new ComponentName("com.android.camera", "com.android.camera.PhotoAppWidgetProvider"));
                            } else if (i == 1001) {
                                appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, f());
                            }
                        } catch (RuntimeException e) {
                            Log.e("Launcher.LauncherProvider", "Problem allocating appWidgetId", e);
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (SQLException e2) {
                    e = e2;
                    Log.w("Launcher.LauncherProvider", "Problem while allocating appWidgetIds for existing widgets", e);
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase.endTransaction();
                if (cursorForCleanup != null) {
                    cursorForCleanup.close();
                }
                throw th;
            }
        } catch (SQLException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase.endTransaction();
            if (cursorForCleanup != null) {
                cursorForCleanup.close();
            }
            throw th;
        }
        this.c = b(sQLiteDatabase);
    }

    private void e() {
        SharedPreferences.Editor editorEdit = this.f258a.getSharedPreferences("com.android.launcher3.prefs", 0).edit();
        editorEdit.putBoolean("EMPTY_DATABASE_CREATED", true);
        editorEdit.putBoolean("UPGRADED_FROM_OLD_DATABASE", false);
        editorEdit.commit();
    }

    private ComponentName f() {
        ComponentName globalSearchActivity = ((SearchManager) this.f258a.getSystemService("search")).getGlobalSearchActivity();
        if (globalSearchActivity == null) {
            return null;
        }
        String packageName = globalSearchActivity.getPackageName();
        List<AppWidgetProviderInfo> installedProviders = AppWidgetManager.getInstance(this.f258a).getInstalledProviders();
        if (installedProviders == null) {
            return null;
        }
        int size = installedProviders.size();
        for (int i = 0; i < size; i++) {
            ComponentName componentName = installedProviders.get(i).provider;
            if (componentName != null && componentName.getPackageName().equals(packageName)) {
                return componentName;
            }
        }
        return null;
    }

    public final void a(long j) {
        this.c = 1 + j;
    }

    public final void a(SQLiteDatabase sQLiteDatabase, Uri uri) {
        Cursor cursorQuery;
        int i;
        int i2;
        int i3 = 0;
        try {
            cursorQuery = this.f258a.getContentResolver().query(uri, null, null, null, "title ASC");
        } catch (Exception e) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            try {
                if (cursorQuery.getCount() > 0) {
                    int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
                    int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("intent");
                    int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("title");
                    int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("iconType");
                    int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("icon");
                    int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("iconPackage");
                    int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow("iconResource");
                    int columnIndexOrThrow8 = cursorQuery.getColumnIndexOrThrow("container");
                    int columnIndexOrThrow9 = cursorQuery.getColumnIndexOrThrow("itemType");
                    int columnIndexOrThrow10 = cursorQuery.getColumnIndexOrThrow("screen");
                    int columnIndexOrThrow11 = cursorQuery.getColumnIndexOrThrow("cellX");
                    int columnIndexOrThrow12 = cursorQuery.getColumnIndexOrThrow("cellY");
                    int columnIndexOrThrow13 = cursorQuery.getColumnIndexOrThrow("uri");
                    int columnIndexOrThrow14 = cursorQuery.getColumnIndexOrThrow("displayMode");
                    int i4 = 0;
                    C0017al c0017alA = cB.a().i().a();
                    int i5 = (int) c0017alA.d;
                    int i6 = (int) c0017alA.c;
                    int i7 = (int) c0017alA.e;
                    PackageManager packageManager = this.f258a.getPackageManager();
                    HashSet hashSet = new HashSet(cursorQuery.getCount());
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    SparseArray sparseArray = new SparseArray();
                    while (cursorQuery.moveToNext()) {
                        int i8 = cursorQuery.getInt(columnIndexOrThrow9);
                        if (i8 == 0 || i8 == 1 || i8 == 2) {
                            int i9 = cursorQuery.getInt(columnIndexOrThrow11);
                            int i10 = cursorQuery.getInt(columnIndexOrThrow12);
                            int i11 = cursorQuery.getInt(columnIndexOrThrow10);
                            int i12 = cursorQuery.getInt(columnIndexOrThrow8);
                            String string = cursorQuery.getString(columnIndexOrThrow2);
                            Launcher.a("Launcher.LauncherProvider", "migrating \"" + cursorQuery.getString(columnIndexOrThrow3) + "\" (" + i9 + "," + i10 + "@" + dF.a(i12) + "/" + i11 + "): " + string, true);
                            if (i8 != 2) {
                                try {
                                    Intent uri2 = Intent.parseUri(string, 0);
                                    ComponentName component = uri2.getComponent();
                                    if (TextUtils.isEmpty(string)) {
                                        Launcher.a("Launcher.LauncherProvider", "skipping empty intent", true);
                                    } else if (component != null && !cO.a(packageManager, component)) {
                                        Launcher.a("Launcher.LauncherProvider", "skipping item whose component no longer exists.", true);
                                    } else if (i12 == -100) {
                                        uri2.setPackage(null);
                                        String uri3 = uri2.toUri(0);
                                        if (hashSet.contains(uri3)) {
                                            Launcher.a("Launcher.LauncherProvider", "skipping duplicate", true);
                                        } else {
                                            hashSet.add(uri3);
                                        }
                                    }
                                } catch (URISyntaxException e2) {
                                    Launcher.a("Launcher.LauncherProvider", "skipping invalid intent uri", true);
                                }
                            }
                            ContentValues contentValues = new ContentValues(cursorQuery.getColumnCount());
                            contentValues.put("_id", Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow)));
                            contentValues.put("intent", string);
                            contentValues.put("title", cursorQuery.getString(columnIndexOrThrow3));
                            contentValues.put("iconType", Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow4)));
                            contentValues.put("icon", cursorQuery.getBlob(columnIndexOrThrow5));
                            contentValues.put("iconPackage", cursorQuery.getString(columnIndexOrThrow6));
                            contentValues.put("iconResource", cursorQuery.getString(columnIndexOrThrow7));
                            contentValues.put("itemType", Integer.valueOf(i8));
                            contentValues.put("appWidgetId", (Integer) (-1));
                            contentValues.put("uri", cursorQuery.getString(columnIndexOrThrow13));
                            contentValues.put("displayMode", Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow14)));
                            if (i12 == -101) {
                                sparseArray.put(i11, contentValues);
                            }
                            if (i12 != -100) {
                                contentValues.put("screen", Integer.valueOf(i11));
                                contentValues.put("cellX", Integer.valueOf(i9));
                                contentValues.put("cellY", Integer.valueOf(i10));
                            }
                            contentValues.put("container", Integer.valueOf(i12));
                            if (i8 != 2) {
                                arrayList.add(contentValues);
                            } else {
                                arrayList2.add(contentValues);
                            }
                        }
                    }
                    int size = sparseArray.size();
                    for (int i13 = 0; i13 < size; i13++) {
                        int iKeyAt = sparseArray.keyAt(i13);
                        ContentValues contentValues2 = (ContentValues) sparseArray.valueAt(i13);
                        if (iKeyAt == c0017alA.D) {
                            while (true) {
                                iKeyAt++;
                                if (iKeyAt < i7) {
                                    if (sparseArray.get(iKeyAt) == null) {
                                        contentValues2.put("screen", Integer.valueOf(iKeyAt));
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                        }
                        if (iKeyAt >= i7) {
                            contentValues2.put("container", (Integer) (-100));
                        }
                    }
                    ArrayList<ContentValues> arrayList3 = new ArrayList();
                    arrayList3.addAll(arrayList2);
                    arrayList3.addAll(arrayList);
                    int i14 = 0;
                    int iC = 0;
                    for (ContentValues contentValues3 : arrayList3) {
                        if (contentValues3.getAsInteger("container").intValue() == -100) {
                            contentValues3.put("screen", Integer.valueOf(iC));
                            contentValues3.put("cellX", Integer.valueOf(i14));
                            contentValues3.put("cellY", Integer.valueOf(i4));
                            i14 = (i14 + 1) % i5;
                            int i15 = i14 == 0 ? i4 + 1 : i4;
                            if (i15 == i6 - 1) {
                                iC = (int) c();
                                i4 = 0;
                            } else {
                                i4 = i15;
                            }
                        }
                    }
                    if (arrayList3.size() > 0) {
                        sQLiteDatabase.beginTransaction();
                        try {
                            for (ContentValues contentValues4 : arrayList3) {
                                if (contentValues4 != null) {
                                    if (LauncherProvider.a(this, sQLiteDatabase, "favorites", null, contentValues4) < 0) {
                                        sQLiteDatabase.endTransaction();
                                        cursorQuery.close();
                                        return;
                                    }
                                    i3++;
                                }
                            }
                            sQLiteDatabase.setTransactionSuccessful();
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th) {
                            sQLiteDatabase.endTransaction();
                            throw th;
                        }
                    }
                    int i16 = i3;
                    sQLiteDatabase.beginTransaction();
                    for (int i17 = 0; i17 <= iC; i17++) {
                        try {
                            ContentValues contentValues5 = new ContentValues();
                            contentValues5.put("_id", Integer.valueOf(i17));
                            contentValues5.put("screenRank", Integer.valueOf(i17));
                            if (LauncherProvider.a(this, sQLiteDatabase, "workspaceScreens", null, contentValues5) < 0) {
                                sQLiteDatabase.endTransaction();
                                cursorQuery.close();
                                return;
                            }
                        } catch (Throwable th2) {
                            sQLiteDatabase.endTransaction();
                            throw th2;
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    int i18 = iC;
                    i2 = i16;
                    i = i18;
                } else {
                    i = 0;
                    i2 = 0;
                }
                cursorQuery.close();
            } catch (Throwable th3) {
                cursorQuery.close();
                throw th3;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        Launcher.a("Launcher.LauncherProvider", "migrated " + i2 + " icons from Launcher2 into " + (i + 1) + " screens", true);
        d();
        this.c = b(sQLiteDatabase);
        this.d = c(sQLiteDatabase);
    }

    public final void a(String str, ContentValues contentValues) {
        long jLongValue = contentValues.getAsLong("_id").longValue();
        if (str == "workspaceScreens") {
            this.d = Math.max(jLongValue, this.d);
        } else {
            this.c = Math.max(jLongValue, this.c);
        }
    }

    public final boolean a() {
        return this.e;
    }

    public final long b() {
        if (this.c < 0) {
            throw new RuntimeException("Error: max item id was not initialized");
        }
        this.c++;
        return this.c;
    }

    public final void b(long j) {
        Launcher.a("Launcher.LauncherProvider", "11683562 - updateMaxScreenId(): " + j, true);
        this.d = j;
    }

    public final long c() {
        if (this.d < 0) {
            throw new RuntimeException("Error: max screen id was not initialized");
        }
        this.d++;
        Launcher.a("Launcher.LauncherProvider", "11683562 - generateNewScreenId(): " + this.d, true);
        return this.d;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.c = 1L;
        this.d = 0L;
        this.e = true;
        sQLiteDatabase.execSQL("CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0);");
        sQLiteDatabase.execSQL("CREATE TABLE workspaceScreens (_id INTEGER,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);");
        if (this.b != null) {
            this.b.deleteHost();
            this.f258a.getContentResolver().notifyChange(LauncherProvider.f95a, null);
        }
        if (!LauncherProvider.a(this.f258a)) {
            this.c = b(sQLiteDatabase);
            e();
            return;
        }
        dA dAVar = new dA(this);
        if (a(sQLiteDatabase, Uri.parse("content://settings/old_favorites?notify=true"), dAVar, true) || a(sQLiteDatabase, dF.b, dAVar, false)) {
            d();
        } else {
            e();
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:106:0x01b1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v19 */
    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws Throwable {
        int i3;
        int i4;
        SQLiteStatement sQLiteStatementCompileStatement;
        boolean z = false;
        Cursor cursorRawQuery = null;
        if (i < 3) {
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;");
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    i3 = 3;
                } catch (SQLException e) {
                    Log.e("Launcher.LauncherProvider", e.getMessage(), e);
                    sQLiteDatabase.endTransaction();
                    i3 = i;
                }
                if (i3 == 3) {
                    d(sQLiteDatabase);
                }
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        } else {
            i3 = i;
        }
        int i5 = i3 >= 4 ? i3 : 4;
        if (i5 < 6) {
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteDatabase.execSQL("UPDATE favorites SET screen=(screen + 1);");
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                } catch (SQLException e2) {
                    Log.e("Launcher.LauncherProvider", e2.getMessage(), e2);
                    sQLiteDatabase.endTransaction();
                }
                if (a(sQLiteDatabase)) {
                    i5 = 6;
                }
            } catch (Throwable th2) {
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        }
        if (i5 < 7) {
            d(sQLiteDatabase);
            i5 = 7;
        }
        if (i5 < 8) {
            SQLiteStatement sQLiteStatement = "normalizing icons";
            Log.d("Launcher.LauncherProvider", "normalizing icons");
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement("UPDATE favorites SET icon=? WHERE _id=?");
                    try {
                        cursorRawQuery = sQLiteDatabase.rawQuery("SELECT _id, icon FROM favorites WHERE iconType=1", null);
                        int columnIndexOrThrow = cursorRawQuery.getColumnIndexOrThrow("_id");
                        int columnIndexOrThrow2 = cursorRawQuery.getColumnIndexOrThrow("icon");
                        while (cursorRawQuery.moveToNext()) {
                            long j = cursorRawQuery.getLong(columnIndexOrThrow);
                            byte[] blob = cursorRawQuery.getBlob(columnIndexOrThrow2);
                            try {
                                Bitmap bitmapB = eI.b(BitmapFactory.decodeByteArray(blob, 0, blob.length), this.f258a);
                                if (bitmapB != null) {
                                    sQLiteStatementCompileStatement.bindLong(1, j);
                                    byte[] bArrA = bD.a(bitmapB);
                                    if (bArrA != null) {
                                        sQLiteStatementCompileStatement.bindBlob(2, bArrA);
                                        sQLiteStatementCompileStatement.execute();
                                    }
                                    bitmapB.recycle();
                                }
                            } catch (Exception e3) {
                                if (z) {
                                    Log.e("Launcher.LauncherProvider", "Also failed normalizing icon " + j);
                                } else {
                                    Log.e("Launcher.LauncherProvider", "Failed normalizing icon " + j, e3);
                                }
                                z = true;
                            }
                        }
                        sQLiteDatabase.setTransactionSuccessful();
                        sQLiteDatabase.endTransaction();
                        if (sQLiteStatementCompileStatement != null) {
                            sQLiteStatementCompileStatement.close();
                        }
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    } catch (SQLException e4) {
                        e = e4;
                        Log.w("Launcher.LauncherProvider", "Problem while allocating appWidgetIds for existing widgets", e);
                        sQLiteDatabase.endTransaction();
                        if (sQLiteStatementCompileStatement != null) {
                            sQLiteStatementCompileStatement.close();
                        }
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabase.endTransaction();
                    if (sQLiteStatement != 0) {
                        sQLiteStatement.close();
                    }
                    if (0 != 0) {
                        cursorRawQuery.close();
                    }
                    throw th;
                }
            } catch (SQLException e5) {
                e = e5;
                sQLiteStatementCompileStatement = null;
            } catch (Throwable th4) {
                th = th4;
                sQLiteStatement = 0;
                sQLiteDatabase.endTransaction();
                if (sQLiteStatement != 0) {
                    sQLiteStatement.close();
                }
                if (0 != 0) {
                    cursorRawQuery.close();
                }
                throw th;
            }
            i5 = 8;
        }
        if (i5 < 9) {
            if (this.c == -1) {
                this.c = b(sQLiteDatabase);
            }
            a(sQLiteDatabase, R.xml.update_workspace);
            i5 = 9;
        }
        if (i5 < 12) {
            a(sQLiteDatabase);
            i5 = 12;
        }
        if (i5 < 13) {
            this.d = 0L;
            LauncherProvider.c = true;
            sQLiteDatabase.execSQL("CREATE TABLE workspaceScreens (_id INTEGER,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);");
            i5 = 13;
        }
        if (i5 < 14) {
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;");
                    sQLiteDatabase.setTransactionSuccessful();
                    i5 = 14;
                    sQLiteDatabase.endTransaction();
                } catch (SQLException e6) {
                    Log.e("Launcher.LauncherProvider", e6.getMessage(), e6);
                    sQLiteDatabase.endTransaction();
                }
            } catch (Throwable th5) {
                sQLiteDatabase.endTransaction();
                throw th5;
            }
        }
        if (i5 < 15) {
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;");
                    sQLiteDatabase.execSQL("ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;");
                    sQLiteDatabase.setTransactionSuccessful();
                    i5 = 15;
                    sQLiteDatabase.endTransaction();
                } catch (SQLException e7) {
                    Log.e("Launcher.LauncherProvider", e7.getMessage(), e7);
                    sQLiteDatabase.endTransaction();
                }
            } catch (Throwable th6) {
                sQLiteDatabase.endTransaction();
                throw th6;
            }
        }
        if (i5 < 16) {
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN restored INTEGER NOT NULL DEFAULT 0;");
                    sQLiteDatabase.setTransactionSuccessful();
                    i4 = 16;
                    sQLiteDatabase.endTransaction();
                } catch (SQLException e8) {
                    Log.e("Launcher.LauncherProvider", e8.getMessage(), e8);
                    sQLiteDatabase.endTransaction();
                    i4 = i5;
                }
            } catch (Throwable th7) {
                sQLiteDatabase.endTransaction();
                throw th7;
            }
        } else {
            i4 = i5;
        }
        if (i4 != 18) {
            Log.w("Launcher.LauncherProvider", "Destroying all old data.");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS favorites");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS workspaceScreens");
            onCreate(sQLiteDatabase);
        }
    }
}
