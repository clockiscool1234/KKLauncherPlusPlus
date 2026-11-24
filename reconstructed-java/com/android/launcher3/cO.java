package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class cO extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ArrayList f222a;
    static final Object c;
    static final HashMap d;
    static final ArrayList e;
    static final ArrayList f;
    static final HashMap g;
    static final HashMap h;
    static final ArrayList i;
    private static final HandlerThread r;
    private static final Handler s;
    C0032b b;
    private final boolean j;
    private final boolean k;
    private final cB l;
    private final Object m = new Object();
    private C0006aa n = new C0006aa();
    private RunnableC0093dg o;
    private boolean p;
    private volatile boolean q;
    private boolean t;
    private boolean u;
    private WeakReference v;
    private C0055bw w;
    private Bitmap x;
    private int y;

    static {
        HandlerThread handlerThread = new HandlerThread("launcher-loader");
        r = handlerThread;
        handlerThread.start();
        s = new Handler(r.getLooper());
        f222a = new ArrayList();
        c = new Object();
        d = new HashMap();
        e = new ArrayList();
        f = new ArrayList();
        g = new HashMap();
        h = new HashMap();
        i = new ArrayList();
        new cP();
    }

    cO(cB cBVar, C0055bw c0055bw, AbstractC0059c abstractC0059c) {
        Context contextB = cB.b();
        ContentResolver contentResolver = contextB.getContentResolver();
        this.j = Environment.isExternalStorageRemovable();
        this.k = contentResolver.acquireContentProviderClient(dF.b) != null;
        this.l = cBVar;
        this.b = new C0032b(c0055bw, abstractC0059c);
        this.w = c0055bw;
        this.y = contextB.getResources().getConfiguration().mcc;
    }

    static ComponentName a(ResolveInfo resolveInfo) {
        return resolveInfo.activityInfo != null ? new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name) : new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
    }

    static /* synthetic */ Intent a(cO cOVar, Cursor cursor, Context context, Intent intent) {
        ComponentName component = intent.getComponent();
        Intent intent2 = new Intent("android.intent.action.VIEW");
        Uri uriBuild = new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", component.getPackageName()).build();
        Log.d("Launcher.Model", "manufactured intent uri: " + uriBuild.toString());
        intent2.setData(uriBuild);
        return intent2;
    }

    private static Bitmap a(Cursor cursor, int i2, Context context) {
        byte[] blob = cursor.getBlob(i2);
        try {
            return eI.a(BitmapFactory.decodeByteArray(blob, 0, blob.length), context);
        } catch (Exception e2) {
            return null;
        }
    }

    static Pair a(Context context, int i2, ArrayList arrayList) {
        cB cBVarA = cB.a();
        cO cOVarF = cBVarA.f();
        synchronized (cBVarA) {
            if (r.getThreadId() != Process.myTid()) {
                cOVarF.q = true;
                RunnableC0088db runnableC0088db = new RunnableC0088db(cOVarF);
                synchronized (runnableC0088db) {
                    b(runnableC0088db);
                    if (cOVarF.o != null) {
                        synchronized (cOVarF.o) {
                            cOVarF.o.notify();
                        }
                    }
                    boolean z = false;
                    while (!z) {
                        try {
                            runnableC0088db.wait();
                            z = true;
                        } catch (InterruptedException e2) {
                        }
                    }
                }
            }
            ArrayList arrayListC = c(context);
            int iMin = Math.min(i2, arrayList.size());
            int size = arrayList.size();
            for (int i3 = iMin; i3 < size; i3++) {
                int[] iArr = new int[2];
                long jLongValue = ((Long) arrayList.get(i3)).longValue();
                C0017al c0017alA = cB.a().i().a();
                int i4 = (int) c0017alA.d;
                int i5 = (int) c0017alA.c;
                boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i4, i5);
                for (int i6 = 0; i6 < arrayListC.size(); i6++) {
                    bD bDVar = (bD) arrayListC.get(i6);
                    if (bDVar.h == -100 && bDVar.i == jLongValue) {
                        int i7 = bDVar.j;
                        int i8 = bDVar.k;
                        int i9 = bDVar.l;
                        int i10 = bDVar.m;
                        for (int i11 = i7; i11 >= 0 && i11 < i7 + i9 && i11 < i4; i11++) {
                            for (int i12 = i8; i12 >= 0 && i12 < i8 + i10 && i12 < i5; i12++) {
                                zArr[i11][i12] = true;
                            }
                        }
                    }
                }
                if (CellLayout.a(iArr, 1, 1, i4, i5, zArr)) {
                    return new Pair((Long) arrayList.get(i3), iArr);
                }
            }
            return null;
        }
    }

    static C0043bk a(Context context, HashMap map, long j) {
        C0043bk c0043bkB = null;
        Cursor cursorQuery = context.getContentResolver().query(dF.f261a, null, "_id=? and (itemType=? or itemType=?)", new String[]{String.valueOf(j), String.valueOf(2)}, null);
        try {
            if (cursorQuery.moveToFirst()) {
                int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("itemType");
                int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("title");
                int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("container");
                int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("screen");
                int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("cellX");
                int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("cellY");
                switch (cursorQuery.getInt(columnIndexOrThrow)) {
                    case 2:
                        c0043bkB = b(map, j);
                        break;
                }
                c0043bkB.q = cursorQuery.getString(columnIndexOrThrow2);
                c0043bkB.f = j;
                c0043bkB.h = cursorQuery.getInt(columnIndexOrThrow3);
                c0043bkB.i = cursorQuery.getInt(columnIndexOrThrow4);
                c0043bkB.j = cursorQuery.getInt(columnIndexOrThrow5);
                c0043bkB.k = cursorQuery.getInt(columnIndexOrThrow6);
            }
            return c0043bkB;
        } finally {
            cursorQuery.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C0137ey a(Cursor cursor, Context context, int i2, int i3, int i4, int i5, int i6) {
        Bitmap bitmapA = null;
        C0137ey c0137ey = new C0137ey();
        c0137ey.g = 1;
        c0137ey.q = cursor.getString(i6);
        switch (cursor.getInt(i2)) {
            case 0:
                String string = cursor.getString(i3);
                String string2 = cursor.getString(i4);
                PackageManager packageManager = context.getPackageManager();
                c0137ey.b = false;
                try {
                    Resources resourcesForApplication = packageManager.getResourcesForApplication(string);
                    if (resourcesForApplication != null) {
                        bitmapA = eI.a(this.w.a(resourcesForApplication, resourcesForApplication.getIdentifier(string2, null, null)), context);
                    }
                    break;
                } catch (Exception e2) {
                }
                if (bitmapA == null) {
                    bitmapA = a(cursor, i5, context);
                }
                if (bitmapA == null) {
                    bitmapA = j();
                    c0137ey.c = true;
                }
                break;
            case 1:
                bitmapA = a(cursor, i5, context);
                if (bitmapA != null) {
                    c0137ey.b = true;
                } else {
                    bitmapA = j();
                    c0137ey.b = false;
                    c0137ey.c = true;
                }
                break;
            default:
                bitmapA = j();
                c0137ey.c = true;
                c0137ey.b = false;
                break;
        }
        c0137ey.b(bitmapA);
        return c0137ey;
    }

    public static ArrayList a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(AppWidgetManager.getInstance(context).getInstalledProviders());
        arrayList.addAll(packageManager.queryIntentActivities(new Intent("android.intent.action.CREATE_SHORTCUT"), 0));
        Collections.sort(arrayList, new C0111dz(packageManager));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList a(Collection collection, InterfaceC0092df interfaceC0092df) {
        cF cFVar;
        ComponentName componentName;
        HashSet hashSet = new HashSet();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            bD bDVar = (bD) it.next();
            if (bDVar instanceof C0137ey) {
                C0137ey c0137ey = (C0137ey) bDVar;
                ComponentName component = c0137ey.f343a.getComponent();
                if (component != null && interfaceC0092df.a(null, c0137ey, component)) {
                    hashSet.add(c0137ey);
                }
            } else if (bDVar instanceof C0043bk) {
                C0043bk c0043bk = (C0043bk) bDVar;
                for (C0137ey c0137ey2 : c0043bk.b) {
                    ComponentName component2 = c0137ey2.f343a.getComponent();
                    if (component2 != null && interfaceC0092df.a(c0043bk, c0137ey2, component2)) {
                        hashSet.add(c0137ey2);
                    }
                }
            } else if ((bDVar instanceof cF) && (componentName = (cFVar = (cF) bDVar).b) != null && interfaceC0092df.a(null, cFVar, componentName)) {
                hashSet.add(cFVar);
            }
        }
        return new ArrayList(hashSet);
    }

    static void a(long j, bD bDVar, StackTraceElement[] stackTraceElementArr) {
        bD bDVar2 = (bD) d.get(Long.valueOf(j));
        if (bDVar2 == null || bDVar == bDVar2) {
            return;
        }
        if ((bDVar2 instanceof C0137ey) && (bDVar instanceof C0137ey)) {
            C0137ey c0137ey = (C0137ey) bDVar2;
            C0137ey c0137ey2 = (C0137ey) bDVar;
            if (c0137ey.q.toString().equals(c0137ey2.q.toString()) && c0137ey.f343a.filterEquals(c0137ey2.f343a) && c0137ey.f == c0137ey2.f && c0137ey.g == c0137ey2.g && c0137ey.h == c0137ey2.h && c0137ey.i == c0137ey2.i && c0137ey.j == c0137ey2.j && c0137ey.k == c0137ey2.k && c0137ey.l == c0137ey2.l && c0137ey.m == c0137ey2.m) {
                if (c0137ey.r == null && c0137ey2.r == null) {
                    return;
                }
                if (c0137ey.r != null && c0137ey2.r != null && c0137ey.r[0] == c0137ey2.r[0] && c0137ey.r[1] == c0137ey2.r[1]) {
                    return;
                }
            }
        }
        RuntimeException runtimeException = new RuntimeException("item: " + (bDVar != null ? bDVar.toString() : "null") + "modelItem: " + (bDVar2 != null ? bDVar2.toString() : "null") + "Error: ItemInfo passed to checkItemInfo doesn't match original");
        if (stackTraceElementArr == null) {
            throw runtimeException;
        }
        runtimeException.setStackTrace(stackTraceElementArr);
        throw runtimeException;
    }

    private static void a(Context context, ContentValues contentValues, bD bDVar) {
        long j = bDVar.f;
        b(new cZ(context.getContentResolver(), dF.a(j, false), contentValues, bDVar, j, new Throwable().getStackTrace()));
    }

    static void a(Context context, bD bDVar) {
        ContentValues contentValues = new ContentValues();
        bDVar.a(contentValues);
        bD.a(contentValues, bDVar.j, bDVar.k);
        a(context, contentValues, bDVar);
    }

    static void a(Context context, bD bDVar, long j, long j2, int i2, int i3) {
        if (bDVar.h == -1) {
            a(context, bDVar, j, j2, i2, i3, false);
        } else {
            b(context, bDVar, j, j2, i2, i3);
        }
    }

    static void a(Context context, bD bDVar, long j, long j2, int i2, int i3, int i4, int i5) {
        bDVar.h = j;
        bDVar.j = i2;
        bDVar.k = i3;
        bDVar.l = i4;
        bDVar.m = i5;
        if ((context instanceof Launcher) && j2 < 0 && j == -101) {
            bDVar.i = ((Launcher) context).i().a(i2, i3);
        } else {
            bDVar.i = j2;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("container", Long.valueOf(bDVar.h));
        contentValues.put("cellX", Integer.valueOf(bDVar.j));
        contentValues.put("cellY", Integer.valueOf(bDVar.k));
        contentValues.put("spanX", Integer.valueOf(bDVar.l));
        contentValues.put("spanY", Integer.valueOf(bDVar.m));
        contentValues.put("screen", Long.valueOf(bDVar.i));
        a(context, contentValues, bDVar);
    }

    static void a(Context context, bD bDVar, long j, long j2, int i2, int i3, boolean z) {
        bDVar.h = j;
        bDVar.j = i2;
        bDVar.k = i3;
        if ((context instanceof Launcher) && j2 < 0 && j == -101) {
            bDVar.i = ((Launcher) context).i().a(i2, i3);
        } else {
            bDVar.i = j2;
        }
        ContentValues contentValues = new ContentValues();
        ContentResolver contentResolver = context.getContentResolver();
        bDVar.a(contentValues);
        bDVar.f = cB.h().b();
        contentValues.put("_id", Long.valueOf(bDVar.f));
        bD.a(contentValues, bDVar.j, bDVar.k);
        b(new RunnableC0089dc(contentResolver, false, contentValues, bDVar));
    }

    static void a(Context context, C0043bk c0043bk) {
        b(new cR(context.getContentResolver(), c0043bk));
    }

    static void a(Context context, ArrayList arrayList, long j, int i2) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            bD bDVar = (bD) arrayList.get(i3);
            bDVar.h = j;
            bDVar.i = 0L;
            ContentValues contentValues = new ContentValues();
            contentValues.put("container", Long.valueOf(bDVar.h));
            contentValues.put("cellX", Integer.valueOf(bDVar.j));
            contentValues.put("cellY", Integer.valueOf(bDVar.k));
            contentValues.put("screen", Long.valueOf(bDVar.i));
            arrayList2.add(contentValues);
        }
        b(new RunnableC0087da(arrayList, arrayList2, new Throwable().getStackTrace(), context.getContentResolver()));
    }

    static void a(bD bDVar) {
        b(new cY(bDVar.f, bDVar, new Throwable().getStackTrace()));
    }

    static void a(bD bDVar, long j, StackTraceElement[] stackTraceElementArr) {
        synchronized (c) {
            a(j, bDVar, stackTraceElementArr);
            if (bDVar.h != -100 && bDVar.h != -101 && !g.containsKey(Long.valueOf(bDVar.h))) {
                Log.e("Launcher.Model", "item: " + bDVar + " container being set to: " + bDVar.h + ", not in the list of folders");
            }
            bD bDVar2 = (bD) d.get(Long.valueOf(j));
            if (bDVar2 != null && (bDVar2.h == -100 || bDVar2.h == -101)) {
                switch (bDVar2.g) {
                    case 0:
                    case 1:
                    case 2:
                        if (!e.contains(bDVar2)) {
                            e.add(bDVar2);
                        }
                        break;
                }
            } else {
                e.remove(bDVar2);
            }
        }
    }

    private static void a(RunnableC0105dt runnableC0105dt) {
        s.post(runnableC0105dt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Runnable runnable) {
        if (r.getThreadId() == Process.myTid()) {
            this.n.a(runnable);
        } else {
            runnable.run();
        }
    }

    static boolean a(Context context, String str, Intent intent) {
        Cursor cursorQuery = context.getContentResolver().query(dF.f261a, new String[]{"title", "intent"}, "title=? and intent=?", new String[]{str, intent.toUri(0)}, null);
        try {
            return cursorQuery.moveToFirst();
        } finally {
            cursorQuery.close();
        }
    }

    public static boolean a(PackageManager packageManager, ComponentName componentName) {
        if (componentName == null || b(packageManager, componentName.getPackageName())) {
            return false;
        }
        try {
            packageManager.getPackageInfo(componentName.getPackageName(), 0);
            return packageManager.getActivityInfo(componentName, 0) != null;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static C0043bk b(HashMap map, long j) {
        C0043bk c0043bk = (C0043bk) map.get(Long.valueOf(j));
        if (c0043bk != null) {
            return c0043bk;
        }
        C0043bk c0043bk2 = new C0043bk();
        map.put(Long.valueOf(j), c0043bk2);
        return c0043bk2;
    }

    static void b(Context context, bD bDVar) {
        b(new RunnableC0090dd(context.getContentResolver(), dF.a(bDVar.f, false), bDVar));
    }

    static void b(Context context, bD bDVar, long j, long j2, int i2, int i3) {
        bDVar.h = j;
        bDVar.j = i2;
        bDVar.k = i3;
        if ((context instanceof Launcher) && j2 < 0 && j == -101) {
            bDVar.i = ((Launcher) context).i().a(i2, i3);
        } else {
            bDVar.i = j2;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("container", Long.valueOf(bDVar.h));
        contentValues.put("cellX", Integer.valueOf(bDVar.j));
        contentValues.put("cellY", Integer.valueOf(bDVar.k));
        contentValues.put("screen", Long.valueOf(bDVar.i));
        a(context, contentValues, bDVar);
    }

    private static void b(Runnable runnable) {
        if (r.getThreadId() == Process.myTid()) {
            runnable.run();
        } else {
            s.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(PackageManager packageManager, String str) {
        try {
            return !packageManager.getPackageInfo(str, 0).applicationInfo.enabled;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    public static boolean b(bD bDVar) {
        if (bDVar instanceof C0137ey) {
            C0137ey c0137ey = (C0137ey) bDVar;
            Intent intent = c0137ey.f343a;
            ComponentName component = intent.getComponent();
            if (c0137ey.g == 0 && "android.intent.action.MAIN".equals(intent.getAction()) && component != null) {
                return true;
            }
        }
        return false;
    }

    private static ArrayList c(Context context) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = context.getContentResolver().query(dF.f261a, new String[]{"itemType", "container", "screen", "cellX", "cellY", "spanX", "spanY"}, null, null, null);
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("itemType");
        int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("container");
        int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("screen");
        int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("cellX");
        int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("cellY");
        int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("spanX");
        int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow("spanY");
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    bD bDVar = new bD();
                    bDVar.j = cursorQuery.getInt(columnIndexOrThrow4);
                    bDVar.k = cursorQuery.getInt(columnIndexOrThrow5);
                    bDVar.l = Math.max(1, cursorQuery.getInt(columnIndexOrThrow6));
                    bDVar.m = Math.max(1, cursorQuery.getInt(columnIndexOrThrow7));
                    bDVar.h = cursorQuery.getInt(columnIndexOrThrow2);
                    bDVar.g = cursorQuery.getInt(columnIndexOrThrow);
                    bDVar.i = cursorQuery.getInt(columnIndexOrThrow3);
                    arrayList.add(bDVar);
                } catch (Exception e2) {
                    arrayList.clear();
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TreeMap d(Context context) {
        Cursor cursorQuery = context.getContentResolver().query(dG.f262a, null, null, null, null);
        TreeMap treeMap = new TreeMap();
        try {
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("screenRank");
            while (cursorQuery.moveToNext()) {
                try {
                    treeMap.put(Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow2)), Long.valueOf(cursorQuery.getLong(columnIndexOrThrow)));
                } catch (Exception e2) {
                    Launcher.a("Launcher.Model", "Desktop items loading interrupted - invalid screens: " + e2, true);
                }
            }
            cursorQuery.close();
            Launcher.a("Launcher.Model", "11683562 - loadWorkspaceScreensDb()", true);
            ArrayList arrayList = new ArrayList();
            for (Integer num : treeMap.keySet()) {
                arrayList.add("{ " + num + ": " + treeMap.get(num) + " }");
            }
            Launcher.a("Launcher.Model", "11683562 -   screens: " + TextUtils.join(", ", arrayList), true);
            return treeMap;
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }

    public static final Comparator g() {
        return new cU(Collator.getInstance());
    }

    private Bitmap j() {
        if (this.x == null) {
            cB.a();
            this.x = eI.a(this.w.a(), cB.b());
        }
        return Bitmap.createBitmap(this.x);
    }

    private void k() {
        a(true, true);
        c();
    }

    private boolean l() {
        boolean z = false;
        RunnableC0093dg runnableC0093dg = this.o;
        if (runnableC0093dg != null) {
            z = runnableC0093dg.a();
            runnableC0093dg.c();
        }
        return z;
    }

    final C0137ey a(Context context, Intent intent, Bitmap bitmap) {
        Intent.ShortcutIconResource shortcutIconResource;
        boolean z;
        Bitmap bitmapA = null;
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (intent2 == null) {
            Log.e("Launcher.Model", "Can't construct ShorcutInfo with null intent");
            return null;
        }
        if (parcelableExtra == null || !(parcelableExtra instanceof Bitmap)) {
            Parcelable parcelableExtra2 = intent.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (parcelableExtra2 == null || !(parcelableExtra2 instanceof Intent.ShortcutIconResource)) {
                shortcutIconResource = null;
                z = false;
            } else {
                try {
                    shortcutIconResource = (Intent.ShortcutIconResource) parcelableExtra2;
                    try {
                        Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(shortcutIconResource.packageName);
                        bitmapA = eI.a(this.w.a(resourcesForApplication, resourcesForApplication.getIdentifier(shortcutIconResource.resourceName, null, null)), context);
                        z = false;
                    } catch (Exception e2) {
                        Log.w("Launcher.Model", "Could not load shortcut icon: " + parcelableExtra2);
                        z = false;
                    }
                } catch (Exception e3) {
                    shortcutIconResource = null;
                }
            }
        } else {
            z = true;
            bitmapA = eI.a(new aJ((Bitmap) parcelableExtra), context);
            shortcutIconResource = null;
        }
        C0137ey c0137ey = new C0137ey();
        if (bitmapA == null) {
            bitmapA = j();
            c0137ey.c = true;
        }
        c0137ey.b(bitmapA);
        c0137ey.q = stringExtra;
        c0137ey.f343a = intent2;
        c0137ey.b = z;
        c0137ey.d = shortcutIconResource;
        return c0137ey;
    }

    public final C0137ey a(PackageManager packageManager, Intent intent, Context context) {
        return a(packageManager, intent, context, (Cursor) null, -1, -1, (HashMap) null);
    }

    public final C0137ey a(PackageManager packageManager, Intent intent, Context context, Cursor cursor, int i2, int i3, HashMap map) {
        ComponentName component = intent.getComponent();
        C0137ey c0137ey = new C0137ey();
        if (component != null && !a(packageManager, component)) {
            Log.d("Launcher.Model", "Invalid package found in getShortcutInfo: " + component);
            return null;
        }
        try {
            c0137ey.a(packageManager.getPackageInfo(component.getPackageName(), 0));
        } catch (PackageManager.NameNotFoundException e2) {
            Log.d("Launcher.Model", "getPackInfo failed for package " + component.getPackageName());
        }
        ComponentName component2 = intent.getComponent();
        Intent intent2 = new Intent(intent.getAction(), (Uri) null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        intent2.setPackage(component2.getPackageName());
        ResolveInfo resolveInfoResolveActivity = null;
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent2, 0)) {
            if (new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name).equals(component2)) {
                resolveInfoResolveActivity = resolveInfo;
            }
        }
        if (resolveInfoResolveActivity == null) {
            resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        }
        Bitmap bitmapA = resolveInfoResolveActivity != null ? this.w.a(component, resolveInfoResolveActivity, map) : null;
        if (bitmapA == null && cursor != null) {
            bitmapA = a(cursor, i2, context);
        }
        if (bitmapA == null) {
            bitmapA = j();
            c0137ey.c = true;
        }
        c0137ey.b(bitmapA);
        if (resolveInfoResolveActivity != null) {
            ComponentName componentNameA = a(resolveInfoResolveActivity);
            if (map == null || !map.containsKey(componentNameA)) {
                c0137ey.q = resolveInfoResolveActivity.activityInfo.loadLabel(packageManager);
                if (map != null) {
                    map.put(componentNameA, c0137ey.q);
                }
            } else {
                c0137ey.q = (CharSequence) map.get(componentNameA);
            }
        }
        if (c0137ey.q == null && cursor != null) {
            c0137ey.q = cursor.getString(i3);
        }
        if (c0137ey.q == null) {
            c0137ey.q = component.getClassName();
        }
        c0137ey.g = 0;
        return c0137ey;
    }

    public final C0137ey a(Cursor cursor, int i2) {
        C0137ey c0137ey = new C0137ey();
        c0137ey.c = true;
        c0137ey.b(j());
        if (cursor != null) {
            c0137ey.q = cursor.getString(i2);
        } else {
            c0137ey.q = "";
        }
        c0137ey.g = 1;
        return c0137ey;
    }

    public final void a() {
        if (r.getThreadId() == Process.myTid()) {
            throw new RuntimeException("Expected unbindLauncherItemInfos() to be called from the main thread");
        }
        f222a.clear();
        this.n.a(1);
        b();
    }

    final void a(Context context, C0137ey c0137ey, byte[] bArr) {
        boolean z = true;
        if (bArr != null) {
            try {
                z = BitmapFactory.decodeByteArray(bArr, 0, bArr.length).sameAs(c0137ey.a(this.w)) ? false : true;
            } catch (Exception e2) {
            }
        }
        if (z) {
            Log.d("Launcher.Model", "going to save icon bitmap for info=" + c0137ey);
            a(context, c0137ey);
        }
    }

    final void a(Context context, ArrayList arrayList) {
        Launcher.a("Launcher.Model", "11683562 - updateWorkspaceScreenOrder()", true);
        Launcher.a("Launcher.Model", "11683562 -   screens: " + TextUtils.join(", ", arrayList), true);
        ArrayList arrayList2 = new ArrayList(arrayList);
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = dG.f262a;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            if (((Long) it.next()).longValue() < 0) {
                it.remove();
            }
        }
        b(new cQ(this, uri, arrayList2, contentResolver));
    }

    public final void a(Context context, ArrayList arrayList, InterfaceC0091de interfaceC0091de, ArrayList arrayList2) {
        if (arrayList == null || arrayList2 == null) {
            throw new RuntimeException("workspaceApps and allAppsApps must not be null");
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            return;
        }
        b(new cV(this, context, arrayList, arrayList2, interfaceC0091de));
    }

    public final void a(Context context, ArrayList arrayList, ArrayList arrayList2) {
        a(context, arrayList, this.v != null ? (InterfaceC0091de) this.v.get() : null, arrayList2);
    }

    public final void a(InterfaceC0091de interfaceC0091de) {
        synchronized (this.m) {
            this.v = new WeakReference(interfaceC0091de);
        }
    }

    public final void a(boolean z, int i2) {
        a(z, i2, 0);
    }

    public final void a(boolean z, int i2, int i3) {
        synchronized (this.m) {
            f222a.clear();
            if (this.v != null && this.v.get() != null) {
                boolean z2 = z || l();
                cB cBVar = this.l;
                this.o = new RunnableC0093dg(this, cB.b(), z2, i3);
                if (i2 != -1001 && this.u && this.t) {
                    this.o.a(i2);
                } else {
                    r.setPriority(5);
                    s.post(this.o);
                }
            }
        }
    }

    public final void a(boolean z, boolean z2) {
        synchronized (this.m) {
            l();
            if (z) {
                this.u = false;
            }
            this.t = false;
        }
    }

    final boolean a(Launcher launcher) {
        return this.k && !launcher.F();
    }

    final boolean a(HashMap map, C0137ey c0137ey, Cursor cursor, int i2) {
        if (!this.j || c0137ey.b || c0137ey.c) {
            return false;
        }
        map.put(c0137ey, cursor.getBlob(i2));
        return true;
    }

    final void b() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        synchronized (c) {
            arrayList.addAll(e);
            arrayList2.addAll(f);
        }
        a(new cX(this, arrayList, arrayList2));
    }

    public final void c() {
        InterfaceC0091de interfaceC0091de;
        if ((this.v == null || (interfaceC0091de = (InterfaceC0091de) this.v.get()) == null || interfaceC0091de.A()) ? false : true) {
            a(false, -1001, 0);
        }
    }

    final void d() {
        if (f222a.isEmpty()) {
            return;
        }
        Iterator it = f222a.iterator();
        while (it.hasNext()) {
            this.n.a((Runnable) it.next(), 1);
        }
        f222a.clear();
    }

    public final void e() {
        synchronized (this.m) {
            if (this.o != null) {
                this.o.c();
            }
        }
    }

    final boolean f() {
        synchronized (this.m) {
            if (this.o == null) {
                return false;
            }
            return this.o.b();
        }
    }

    public final void h() {
        Log.d("Launcher.Model", "mCallbacks=" + this.v);
        C0086d.a("Launcher.Model", "mAllAppsList.data", this.b.f163a);
        C0086d.a("Launcher.Model", "mAllAppsList.added", this.b.b);
        C0086d.a("Launcher.Model", "mAllAppsList.removed", this.b.c);
        C0086d.a("Launcher.Model", "mAllAppsList.modified", this.b.d);
        if (this.o != null) {
            this.o.d();
        } else {
            Log.d("Launcher.Model", "mLoaderTask=null");
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0124  */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        InterfaceC0091de interfaceC0091de;
        int i2 = 2;
        String action = intent.getAction();
        if ("android.intent.action.PACKAGE_CHANGED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_ADDED".equals(action)) {
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            if (schemeSpecificPart == null || schemeSpecificPart.length() == 0) {
                return;
            }
            if (!"android.intent.action.PACKAGE_CHANGED".equals(action)) {
                if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                    if (booleanExtra) {
                        i2 = 0;
                    } else {
                        i2 = 3;
                    }
                } else if (!"android.intent.action.PACKAGE_ADDED".equals(action)) {
                    i2 = 0;
                } else if (!booleanExtra) {
                    i2 = 1;
                }
            }
            if (i2 != 0) {
                a(new RunnableC0105dt(this, i2, new String[]{schemeSpecificPart}));
                return;
            }
            return;
        }
        if ("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE".equals(action)) {
            boolean booleanExtra2 = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            String[] stringArrayExtra = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
            if (booleanExtra2) {
                a(new RunnableC0105dt(this, 2, stringArrayExtra));
                return;
            }
            a(new RunnableC0105dt(this, 1, stringArrayExtra));
            if (this.j) {
                c();
                return;
            }
            return;
        }
        if ("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE".equals(action)) {
            if (intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                return;
            }
            a(new RunnableC0105dt(this, 4, intent.getStringArrayExtra("android.intent.extra.changed_package_list")));
            return;
        }
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            k();
            return;
        }
        if ("android.intent.action.CONFIGURATION_CHANGED".equals(action)) {
            Configuration configuration = context.getResources().getConfiguration();
            if (this.y != configuration.mcc) {
                Log.d("Launcher.Model", "Reload apps on config change. curr_mcc:" + configuration.mcc + " prevmcc:" + this.y);
                k();
            }
            this.y = configuration.mcc;
            return;
        }
        if ((!"android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED".equals(action) && !"android.search.action.SEARCHABLES_CHANGED".equals(action)) || this.v == null || (interfaceC0091de = (InterfaceC0091de) this.v.get()) == null) {
            return;
        }
        interfaceC0091de.D();
    }
}
