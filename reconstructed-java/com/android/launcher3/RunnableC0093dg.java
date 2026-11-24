package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Array;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.android.launcher3.dg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0093dg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f283a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private int f;
    private HashMap g = new HashMap();
    private /* synthetic */ cO h;

    RunnableC0093dg(cO cOVar, Context context, boolean z, int i) {
        this.h = cOVar;
        this.f283a = context;
        this.b = z;
        this.f = i;
    }

    private void a(int i, boolean z) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        InterfaceC0091de interfaceC0091de = (InterfaceC0091de) this.h.v.get();
        if (interfaceC0091de == null) {
            Log.w("Launcher.Model", "LoaderTask running with no launcher");
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        synchronized (cO.c) {
            arrayList.addAll(cO.e);
            arrayList2.addAll(cO.f);
            map.putAll(cO.g);
            map2.putAll(cO.d);
            arrayList3.addAll(cO.i);
        }
        boolean z2 = i != -1001;
        if (!z2) {
            i = interfaceC0091de.B();
        }
        if (i >= arrayList3.size()) {
            i = -1001;
        }
        long jLongValue = i < 0 ? -1L : ((Long) arrayList3.get(i)).longValue();
        this.h.b();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        a(jLongValue, arrayList, arrayList4, arrayList5);
        b(jLongValue, arrayList2, arrayList6, arrayList7);
        a(jLongValue, map2, map, map3, map4);
        a(arrayList4);
        a(arrayList5);
        this.h.a(new RunnableC0103dr(this, interfaceC0091de));
        this.h.a(new RunnableC0100dn(this, interfaceC0091de, arrayList3));
        a(interfaceC0091de, arrayList4, arrayList6, map3, (ArrayList) null);
        if (z2) {
            this.h.a(new RunnableC0104ds(this, interfaceC0091de, i));
        }
        cO.f222a.clear();
        a(interfaceC0091de, arrayList5, arrayList7, map4, z2 ? cO.f222a : null);
        RunnableC0095di runnableC0095di = new RunnableC0095di(this, interfaceC0091de, z, jUptimeMillis);
        if (z2) {
            cO.f222a.add(runnableC0095di);
        } else {
            this.h.a(runnableC0095di);
        }
    }

    private void a(long j, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((bD) it.next()) == null) {
                it.remove();
            }
        }
        HashSet hashSet = new HashSet();
        Collections.sort(arrayList, new C0098dl(this));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            bD bDVar = (bD) it2.next();
            if (bDVar.h == -100) {
                if (bDVar.i == j) {
                    arrayList2.add(bDVar);
                    hashSet.add(Long.valueOf(bDVar.f));
                } else {
                    arrayList3.add(bDVar);
                }
            } else if (bDVar.h == -101) {
                arrayList2.add(bDVar);
                hashSet.add(Long.valueOf(bDVar.f));
            } else if (hashSet.contains(Long.valueOf(bDVar.h))) {
                arrayList2.add(bDVar);
                hashSet.add(Long.valueOf(bDVar.f));
            } else {
                arrayList3.add(bDVar);
            }
        }
    }

    private static void a(long j, HashMap map, HashMap map2, HashMap map3, HashMap map4) {
        Iterator it = map2.keySet().iterator();
        while (it.hasNext()) {
            long jLongValue = ((Long) it.next()).longValue();
            bD bDVar = (bD) map.get(Long.valueOf(jLongValue));
            C0043bk c0043bk = (C0043bk) map2.get(Long.valueOf(jLongValue));
            if (bDVar != null && c0043bk != null) {
                if (bDVar.h == -100 && bDVar.i == j) {
                    map3.put(Long.valueOf(jLongValue), c0043bk);
                } else {
                    map4.put(Long.valueOf(jLongValue), c0043bk);
                }
            }
        }
    }

    private void a(InterfaceC0091de interfaceC0091de, ArrayList arrayList, ArrayList arrayList2, HashMap map, ArrayList arrayList3) {
        boolean z = arrayList3 != null;
        int size = arrayList.size();
        for (int i = 0; i < size; i += 6) {
            Cdo cdo = new Cdo(this, interfaceC0091de, arrayList, i, i + 6 <= size ? 6 : size - i);
            if (z) {
                arrayList3.add(cdo);
            } else {
                this.h.a(cdo);
            }
        }
        if (!map.isEmpty()) {
            RunnableC0101dp runnableC0101dp = new RunnableC0101dp(this, interfaceC0091de, map);
            if (z) {
                arrayList3.add(runnableC0101dp);
            } else {
                this.h.a(runnableC0101dp);
            }
        }
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            RunnableC0102dq runnableC0102dq = new RunnableC0102dq(this, interfaceC0091de, (cF) arrayList2.get(i2));
            if (z) {
                arrayList3.add(runnableC0102dq);
            } else {
                this.h.a(runnableC0102dq);
            }
        }
    }

    private void a(ArrayList arrayList) {
        Collections.sort(arrayList, new C0099dm(this, cB.a().i().a()));
    }

    private boolean a(HashMap map, bD bDVar, AtomicBoolean atomicBoolean) {
        C0017al c0017alA = cB.a().i().a();
        int i = (int) c0017alA.d;
        int i2 = (int) c0017alA.c;
        long j = bDVar.i;
        if (bDVar.h == -101) {
            if (this.h.v == null || ((InterfaceC0091de) this.h.v.get()).d((int) bDVar.i)) {
                atomicBoolean.set(true);
                Log.e("Launcher.Model", "Error loading shortcut into hotseat " + bDVar + " into position (" + bDVar.i + ":" + bDVar.j + "," + bDVar.k + ") occupied by all apps");
                return false;
            }
            bD[][] bDVarArr = (bD[][]) map.get(-101L);
            if (bDVar.i >= c0017alA.e) {
                Log.e("Launcher.Model", "Error loading shortcut " + bDVar + " into hotseat position " + bDVar.i + ", position out of bounds: (0 to " + (c0017alA.e - 1.0f) + ")");
                return false;
            }
            if (bDVarArr == null) {
                bD[][] bDVarArr2 = (bD[][]) Array.newInstance((Class<?>) bD.class, (int) c0017alA.e, 1);
                bDVarArr2[(int) bDVar.i][0] = bDVar;
                map.put(-101L, bDVarArr2);
                return true;
            }
            if (bDVarArr[(int) bDVar.i][0] != null) {
                Log.e("Launcher.Model", "Error loading shortcut into hotseat " + bDVar + " into position (" + bDVar.i + ":" + bDVar.j + "," + bDVar.k + ") occupied by " + ((bD[][]) map.get(-101))[(int) bDVar.i][0]);
                return false;
            }
            bDVarArr[(int) bDVar.i][0] = bDVar;
            return true;
        }
        if (bDVar.h != -100) {
            return true;
        }
        if (!map.containsKey(Long.valueOf(bDVar.i))) {
            map.put(Long.valueOf(bDVar.i), (bD[][]) Array.newInstance((Class<?>) bD.class, i + 1, i2 + 1));
        }
        bD[][] bDVarArr3 = (bD[][]) map.get(Long.valueOf(bDVar.i));
        if ((bDVar.h == -100 && bDVar.j < 0) || bDVar.k < 0 || bDVar.j + bDVar.l > i || bDVar.k + bDVar.m > i2) {
            Log.e("Launcher.Model", "Error loading shortcut " + bDVar + " into cell (" + j + "-" + bDVar.i + ":" + bDVar.j + "," + bDVar.k + ") out of screen bounds ( " + i + "x" + i2 + ")");
            return false;
        }
        int i3 = bDVar.j;
        while (true) {
            int i4 = i3;
            if (i4 >= bDVar.j + bDVar.l) {
                for (int i5 = bDVar.j; i5 < bDVar.j + bDVar.l; i5++) {
                    for (int i6 = bDVar.k; i6 < bDVar.k + bDVar.m; i6++) {
                        bDVarArr3[i5][i6] = bDVar;
                    }
                }
                return true;
            }
            for (int i7 = bDVar.k; i7 < bDVar.k + bDVar.m; i7++) {
                if (bDVarArr3[i4][i7] != null) {
                    Log.e("Launcher.Model", "Error loading shortcut " + bDVar + " into cell (" + j + "-" + bDVar.i + ":" + i4 + "," + i7 + ") occupied by " + bDVarArr3[i4][i7]);
                    return false;
                }
            }
            i3 = i4 + 1;
        }
    }

    private static void b(long j, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cF cFVar = (cF) it.next();
            if (cFVar != null) {
                if (cFVar.h == -100 && cFVar.i == j) {
                    arrayList2.add(cFVar);
                } else {
                    arrayList3.add(cFVar);
                }
            }
        }
    }

    private boolean e() {
        this.c = true;
        boolean zH = false;
        if (this.h.t) {
            a(-1, zH);
        } else {
            zH = h();
            synchronized (this) {
                if (!this.d) {
                    this.h.t = true;
                    a(-1, zH);
                }
            }
        }
        return zH;
    }

    private void f() {
        cB unused = this.h.l;
        Context contextB = cB.b();
        ArrayList arrayList = new ArrayList();
        synchronized (cO.c) {
            for (C0086d c0086d : this.h.b.f163a) {
                if (cO.a(cO.d.values(), new cT(this.h, c0086d.d)).isEmpty()) {
                    arrayList.add(c0086d);
                    Log.e("Launcher.Model", "Missing Application on load: " + c0086d);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.h.a(contextB, arrayList, this.h.v != null ? (InterfaceC0091de) this.h.v.get() : null, new ArrayList());
    }

    private static void g() {
        synchronized (cO.c) {
            cO.e.clear();
            cO.f.clear();
            cO.g.clear();
            cO.d.clear();
            cO.h.clear();
            cO.i.clear();
        }
    }

    /* JADX WARN: Code duplicated, block: B:192:0x02e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x02ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x01df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x019f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x00fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0185 A[Catch: Exception -> 0x01f0, all -> 0x01fb, TRY_ENTER, TryCatch #0 {Exception -> 0x01f0, blocks: (B:26:0x0135, B:29:0x0144, B:31:0x0148, B:33:0x0155, B:35:0x015f, B:38:0x0169, B:40:0x0185, B:42:0x019f, B:44:0x01df, B:46:0x01e5, B:81:0x02ba, B:82:0x02bd, B:83:0x02c7, B:84:0x02dd, B:85:0x02e3, B:86:0x02ea, B:71:0x0271, B:72:0x0282, B:74:0x0295, B:76:0x029b, B:78:0x02a7, B:80:0x02b3, B:59:0x0208, B:61:0x0212, B:66:0x024a, B:68:0x0263, B:64:0x0233, B:87:0x02eb, B:89:0x0341, B:91:0x0347, B:92:0x0352, B:94:0x0357, B:95:0x0360, B:96:0x0378, B:97:0x037e, B:100:0x039a, B:102:0x039e, B:104:0x03a6, B:105:0x03d5, B:109:0x0433, B:110:0x043c, B:112:0x045b, B:114:0x0461, B:115:0x046c, B:117:0x0478, B:118:0x0497), top: B:174:0x0135, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x026f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x0271 A[Catch: Exception -> 0x01f0, all -> 0x01fb, TRY_ENTER, TryCatch #0 {Exception -> 0x01f0, blocks: (B:26:0x0135, B:29:0x0144, B:31:0x0148, B:33:0x0155, B:35:0x015f, B:38:0x0169, B:40:0x0185, B:42:0x019f, B:44:0x01df, B:46:0x01e5, B:81:0x02ba, B:82:0x02bd, B:83:0x02c7, B:84:0x02dd, B:85:0x02e3, B:86:0x02ea, B:71:0x0271, B:72:0x0282, B:74:0x0295, B:76:0x029b, B:78:0x02a7, B:80:0x02b3, B:59:0x0208, B:61:0x0212, B:66:0x024a, B:68:0x0263, B:64:0x0233, B:87:0x02eb, B:89:0x0341, B:91:0x0347, B:92:0x0352, B:94:0x0357, B:95:0x0360, B:96:0x0378, B:97:0x037e, B:100:0x039a, B:102:0x039e, B:104:0x03a6, B:105:0x03d5, B:109:0x0433, B:110:0x043c, B:112:0x045b, B:114:0x0461, B:115:0x046c, B:117:0x0478, B:118:0x0497), top: B:174:0x0135, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0282 A[Catch: Exception -> 0x01f0, all -> 0x01fb, TryCatch #0 {Exception -> 0x01f0, blocks: (B:26:0x0135, B:29:0x0144, B:31:0x0148, B:33:0x0155, B:35:0x015f, B:38:0x0169, B:40:0x0185, B:42:0x019f, B:44:0x01df, B:46:0x01e5, B:81:0x02ba, B:82:0x02bd, B:83:0x02c7, B:84:0x02dd, B:85:0x02e3, B:86:0x02ea, B:71:0x0271, B:72:0x0282, B:74:0x0295, B:76:0x029b, B:78:0x02a7, B:80:0x02b3, B:59:0x0208, B:61:0x0212, B:66:0x024a, B:68:0x0263, B:64:0x0233, B:87:0x02eb, B:89:0x0341, B:91:0x0347, B:92:0x0352, B:94:0x0357, B:95:0x0360, B:96:0x0378, B:97:0x037e, B:100:0x039a, B:102:0x039e, B:104:0x03a6, B:105:0x03d5, B:109:0x0433, B:110:0x043c, B:112:0x045b, B:114:0x0461, B:115:0x046c, B:117:0x0478, B:118:0x0497), top: B:174:0x0135, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x02bd A[Catch: Exception -> 0x01f0, all -> 0x01fb, TryCatch #0 {Exception -> 0x01f0, blocks: (B:26:0x0135, B:29:0x0144, B:31:0x0148, B:33:0x0155, B:35:0x015f, B:38:0x0169, B:40:0x0185, B:42:0x019f, B:44:0x01df, B:46:0x01e5, B:81:0x02ba, B:82:0x02bd, B:83:0x02c7, B:84:0x02dd, B:85:0x02e3, B:86:0x02ea, B:71:0x0271, B:72:0x0282, B:74:0x0295, B:76:0x029b, B:78:0x02a7, B:80:0x02b3, B:59:0x0208, B:61:0x0212, B:66:0x024a, B:68:0x0263, B:64:0x0233, B:87:0x02eb, B:89:0x0341, B:91:0x0347, B:92:0x0352, B:94:0x0357, B:95:0x0360, B:96:0x0378, B:97:0x037e, B:100:0x039a, B:102:0x039e, B:104:0x03a6, B:105:0x03d5, B:109:0x0433, B:110:0x043c, B:112:0x045b, B:114:0x0461, B:115:0x046c, B:117:0x0478, B:118:0x0497), top: B:174:0x0135, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x02dd A[Catch: Exception -> 0x01f0, all -> 0x01fb, TryCatch #0 {Exception -> 0x01f0, blocks: (B:26:0x0135, B:29:0x0144, B:31:0x0148, B:33:0x0155, B:35:0x015f, B:38:0x0169, B:40:0x0185, B:42:0x019f, B:44:0x01df, B:46:0x01e5, B:81:0x02ba, B:82:0x02bd, B:83:0x02c7, B:84:0x02dd, B:85:0x02e3, B:86:0x02ea, B:71:0x0271, B:72:0x0282, B:74:0x0295, B:76:0x029b, B:78:0x02a7, B:80:0x02b3, B:59:0x0208, B:61:0x0212, B:66:0x024a, B:68:0x0263, B:64:0x0233, B:87:0x02eb, B:89:0x0341, B:91:0x0347, B:92:0x0352, B:94:0x0357, B:95:0x0360, B:96:0x0378, B:97:0x037e, B:100:0x039a, B:102:0x039e, B:104:0x03a6, B:105:0x03d5, B:109:0x0433, B:110:0x043c, B:112:0x045b, B:114:0x0461, B:115:0x046c, B:117:0x0478, B:118:0x0497), top: B:174:0x0135, outer: #4 }] */
    private boolean h() {
        C0137ey c0137eyA;
        int i;
        Launcher.a("Launcher.Model", "11683562 - loadWorkspace()", true);
        Context context = this.f283a;
        ContentResolver contentResolver = context.getContentResolver();
        PackageManager packageManager = context.getPackageManager();
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        boolean zIsSafeMode = packageManager.isSafeMode();
        C0017al c0017alA = cB.a().i().a();
        float f = c0017alA.d;
        float f2 = c0017alA.c;
        if ((this.f & 1) != 0) {
            Launcher.a("Launcher.Model", "loadWorkspace: resetting launcher database", true);
            cB.h().f();
        }
        if ((this.f & 2) != 0) {
            Launcher.a("Launcher.Model", "loadWorkspace: migrating from launcher2", true);
            cB.h().e();
        } else {
            Launcher.a("Launcher.Model", "loadWorkspace: loading default favorites", false);
            cB.h().a(0);
        }
        boolean zD = cB.h().d();
        Launcher.a("Launcher.Model", "11683562 -   loadedOldDb: " + zD, true);
        synchronized (cO.c) {
            try {
                g();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Uri uri = dF.f261a;
                Cursor cursorQuery = contentResolver.query(uri, null, null, null, null);
                HashMap map = new HashMap();
                try {
                    int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
                    int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("intent");
                    int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("title");
                    int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("iconType");
                    int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("icon");
                    int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("iconPackage");
                    int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow("iconResource");
                    int columnIndexOrThrow8 = cursorQuery.getColumnIndexOrThrow("container");
                    int columnIndexOrThrow9 = cursorQuery.getColumnIndexOrThrow("itemType");
                    int columnIndexOrThrow10 = cursorQuery.getColumnIndexOrThrow("appWidgetId");
                    int columnIndexOrThrow11 = cursorQuery.getColumnIndexOrThrow("appWidgetProvider");
                    int columnIndexOrThrow12 = cursorQuery.getColumnIndexOrThrow("screen");
                    int columnIndexOrThrow13 = cursorQuery.getColumnIndexOrThrow("cellX");
                    int columnIndexOrThrow14 = cursorQuery.getColumnIndexOrThrow("cellY");
                    int columnIndexOrThrow15 = cursorQuery.getColumnIndexOrThrow("spanX");
                    int columnIndexOrThrow16 = cursorQuery.getColumnIndexOrThrow("spanY");
                    int columnIndexOrThrow17 = cursorQuery.getColumnIndexOrThrow("restored");
                    while (!this.d && cursorQuery.moveToNext()) {
                        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                        try {
                            int i2 = cursorQuery.getInt(columnIndexOrThrow9);
                            boolean z = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                            switch (i2) {
                                case 0:
                                case 1:
                                    long j = cursorQuery.getLong(columnIndexOrThrow);
                                    String string = cursorQuery.getString(columnIndexOrThrow2);
                                    try {
                                        Intent uri2 = Intent.parseUri(string, 0);
                                        ComponentName component = uri2.getComponent();
                                        if (component == null || cO.a(packageManager, component)) {
                                            if (z) {
                                                arrayList2.add(Long.valueOf(j));
                                                z = false;
                                            }
                                            if (z) {
                                                Launcher.a("Launcher.Model", "constructing info for partially restored package", true);
                                                c0137eyA = this.h.a(cursorQuery, columnIndexOrThrow3);
                                                uri2 = cO.a(this.h, cursorQuery, context, uri2);
                                            } else if (i2 == 0) {
                                                c0137eyA = this.h.a(packageManager, uri2, context, cursorQuery, columnIndexOrThrow5, columnIndexOrThrow3, this.g);
                                            } else {
                                                c0137eyA = this.h.a(cursorQuery, context, columnIndexOrThrow4, columnIndexOrThrow6, columnIndexOrThrow7, columnIndexOrThrow5, columnIndexOrThrow3);
                                                if (uri2.getAction() != null && uri2.getCategories() != null && uri2.getAction().equals("android.intent.action.MAIN") && uri2.getCategories().contains("android.intent.category.LAUNCHER")) {
                                                    uri2.addFlags(270532608);
                                                }
                                            }
                                            if (c0137eyA != null) {
                                                throw new RuntimeException("Unexpected null ShortcutInfo");
                                            }
                                            c0137eyA.f = j;
                                            c0137eyA.f343a = uri2;
                                            i = cursorQuery.getInt(columnIndexOrThrow8);
                                            c0137eyA.h = i;
                                            c0137eyA.i = cursorQuery.getInt(columnIndexOrThrow12);
                                            c0137eyA.j = cursorQuery.getInt(columnIndexOrThrow13);
                                            c0137eyA.k = cursorQuery.getInt(columnIndexOrThrow14);
                                            c0137eyA.l = 1;
                                            c0137eyA.m = 1;
                                            atomicBoolean.set(false);
                                            if (!a(map, c0137eyA, atomicBoolean)) {
                                                switch (i) {
                                                    case -101:
                                                    case -100:
                                                        cO.e.add(c0137eyA);
                                                        break;
                                                    default:
                                                        cO.b(cO.g, i).a(c0137eyA);
                                                        break;
                                                }
                                                cO.d.put(Long.valueOf(c0137eyA.f), c0137eyA);
                                                this.h.a(cO.h, c0137eyA, cursorQuery, columnIndexOrThrow5);
                                            } else if (atomicBoolean.get()) {
                                                arrayList.add(Long.valueOf(j));
                                            }
                                        } else if (z) {
                                            Launcher.a("Launcher.Model", "package not yet restored: " + component, true);
                                            if (z) {
                                                Launcher.a("Launcher.Model", "constructing info for partially restored package", true);
                                                c0137eyA = this.h.a(cursorQuery, columnIndexOrThrow3);
                                                uri2 = cO.a(this.h, cursorQuery, context, uri2);
                                            } else if (i2 == 0) {
                                                c0137eyA = this.h.a(packageManager, uri2, context, cursorQuery, columnIndexOrThrow5, columnIndexOrThrow3, this.g);
                                            } else {
                                                c0137eyA = this.h.a(cursorQuery, context, columnIndexOrThrow4, columnIndexOrThrow6, columnIndexOrThrow7, columnIndexOrThrow5, columnIndexOrThrow3);
                                                if (uri2.getAction() != null) {
                                                    uri2.addFlags(270532608);
                                                }
                                            }
                                            if (c0137eyA != null) {
                                                throw new RuntimeException("Unexpected null ShortcutInfo");
                                            }
                                            c0137eyA.f = j;
                                            c0137eyA.f343a = uri2;
                                            i = cursorQuery.getInt(columnIndexOrThrow8);
                                            c0137eyA.h = i;
                                            c0137eyA.i = cursorQuery.getInt(columnIndexOrThrow12);
                                            c0137eyA.j = cursorQuery.getInt(columnIndexOrThrow13);
                                            c0137eyA.k = cursorQuery.getInt(columnIndexOrThrow14);
                                            c0137eyA.l = 1;
                                            c0137eyA.m = 1;
                                            atomicBoolean.set(false);
                                            if (!a(map, c0137eyA, atomicBoolean)) {
                                                switch (i) {
                                                    case -101:
                                                    case -100:
                                                        cO.e.add(c0137eyA);
                                                        break;
                                                    default:
                                                        cO.b(cO.g, i).a(c0137eyA);
                                                        break;
                                                }
                                                cO.d.put(Long.valueOf(c0137eyA.f), c0137eyA);
                                                this.h.a(cO.h, c0137eyA, cursorQuery, columnIndexOrThrow5);
                                            } else if (atomicBoolean.get()) {
                                                arrayList.add(Long.valueOf(j));
                                            }
                                        } else if (this.h.j) {
                                            Launcher.a("Launcher.Model", "Invalid package found: " + component, true);
                                        } else {
                                            Launcher.a("Launcher.Model", "Invalid package removed: " + component, true);
                                            arrayList.add(Long.valueOf(j));
                                        }
                                    } catch (URISyntaxException e) {
                                        Launcher.a("Launcher.Model", "Invalid uri: " + string, true);
                                    }
                                    break;
                                case 2:
                                    long j2 = cursorQuery.getLong(columnIndexOrThrow);
                                    C0043bk c0043bkB = cO.b(cO.g, j2);
                                    c0043bkB.q = cursorQuery.getString(columnIndexOrThrow3);
                                    c0043bkB.f = j2;
                                    int i3 = cursorQuery.getInt(columnIndexOrThrow8);
                                    c0043bkB.h = i3;
                                    c0043bkB.i = cursorQuery.getInt(columnIndexOrThrow12);
                                    c0043bkB.j = cursorQuery.getInt(columnIndexOrThrow13);
                                    c0043bkB.k = cursorQuery.getInt(columnIndexOrThrow14);
                                    c0043bkB.l = 1;
                                    c0043bkB.m = 1;
                                    atomicBoolean.set(false);
                                    if (a(map, c0043bkB, atomicBoolean)) {
                                        switch (i3) {
                                            case -101:
                                            case -100:
                                                cO.e.add(c0043bkB);
                                                break;
                                        }
                                        if (z) {
                                            arrayList2.add(Long.valueOf(j2));
                                        }
                                        cO.d.put(Long.valueOf(c0043bkB.f), c0043bkB);
                                        cO.g.put(Long.valueOf(c0043bkB.f), c0043bkB);
                                    } else if (atomicBoolean.get()) {
                                        arrayList.add(Long.valueOf(j2));
                                    }
                                    break;
                                case 3:
                                default:
                                    break;
                                case 4:
                                    int i4 = cursorQuery.getInt(columnIndexOrThrow10);
                                    String string2 = cursorQuery.getString(columnIndexOrThrow11);
                                    long j3 = cursorQuery.getLong(columnIndexOrThrow);
                                    AppWidgetProviderInfo appWidgetInfo = appWidgetManager.getAppWidgetInfo(i4);
                                    if (zIsSafeMode || !(appWidgetInfo == null || appWidgetInfo.provider == null || appWidgetInfo.provider.getPackageName() == null)) {
                                        cF cFVar = new cF(i4, appWidgetInfo.provider);
                                        cFVar.f = j3;
                                        cFVar.i = cursorQuery.getInt(columnIndexOrThrow12);
                                        cFVar.j = cursorQuery.getInt(columnIndexOrThrow13);
                                        cFVar.k = cursorQuery.getInt(columnIndexOrThrow14);
                                        cFVar.l = cursorQuery.getInt(columnIndexOrThrow15);
                                        cFVar.m = cursorQuery.getInt(columnIndexOrThrow16);
                                        int[] iArrB = Launcher.b(context, appWidgetInfo);
                                        cFVar.n = iArrB[0];
                                        cFVar.o = iArrB[1];
                                        int i5 = cursorQuery.getInt(columnIndexOrThrow8);
                                        if (i5 == -100 || i5 == -101) {
                                            cFVar.h = cursorQuery.getInt(columnIndexOrThrow8);
                                            atomicBoolean.set(false);
                                            if (a(map, cFVar, atomicBoolean)) {
                                                String strFlattenToString = appWidgetInfo.provider.flattenToString();
                                                if (!strFlattenToString.equals(string2)) {
                                                    ContentValues contentValues = new ContentValues();
                                                    contentValues.put("appWidgetProvider", strFlattenToString);
                                                    contentResolver.update(uri, contentValues, "_id= ?", new String[]{Integer.toString(cursorQuery.getInt(columnIndexOrThrow))});
                                                }
                                                cO.d.put(Long.valueOf(cFVar.f), cFVar);
                                                cO.f.add(cFVar);
                                            } else if (atomicBoolean.get()) {
                                                arrayList.add(Long.valueOf(j3));
                                            }
                                        } else {
                                            Log.e("Launcher.Model", "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!");
                                        }
                                    } else {
                                        String str = "Deleting widget that isn't installed anymore: id=" + j3 + " appWidgetId=" + i4;
                                        Log.e("Launcher.Model", str);
                                        Launcher.a("Launcher.Model", str, false);
                                        arrayList.add(Long.valueOf(j3));
                                    }
                                    break;
                            }
                        } catch (Exception e2) {
                            Launcher.a("Launcher.Model", "Desktop items loading interrupted", e2, true);
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (this.d) {
                        g();
                        return false;
                    }
                    if (arrayList.size() > 0) {
                        ContentProviderClient contentProviderClientAcquireContentProviderClient = contentResolver.acquireContentProviderClient(dF.f261a);
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            long jLongValue = ((Long) it.next()).longValue();
                            try {
                                contentProviderClientAcquireContentProviderClient.delete(dF.a(jLongValue, false), null, null);
                            } catch (RemoteException e3) {
                                Log.w("Launcher.Model", "Could not remove id = " + jLongValue);
                            }
                        }
                    }
                    if (arrayList2.size() > 0) {
                        ContentProviderClient contentProviderClientAcquireContentProviderClient2 = contentResolver.acquireContentProviderClient(dF.f261a);
                        try {
                            ContentValues contentValues2 = new ContentValues();
                            contentValues2.put("restored", (Integer) 0);
                            contentProviderClientAcquireContentProviderClient2.update(dF.f261a, contentValues2, "_id IN (" + TextUtils.join(", ", arrayList2) + ")", null);
                        } catch (RemoteException e4) {
                            Log.w("Launcher.Model", "Could not update restored rows");
                        }
                    }
                    if (zD) {
                        long j4 = 0;
                        for (bD bDVar : cO.d.values()) {
                            long j5 = bDVar.i;
                            if (bDVar.h == -100 && !cO.i.contains(Long.valueOf(j5))) {
                                cO.i.add(Long.valueOf(j5));
                                if (j5 > j4) {
                                    j4 = j5;
                                }
                            }
                        }
                        Collections.sort(cO.i);
                        Launcher.a("Launcher.Model", "11683562 -   maxScreenId: " + j4, true);
                        Launcher.a("Launcher.Model", "11683562 -   sBgWorkspaceScreens: " + TextUtils.join(", ", cO.i), true);
                        cB.h().b(j4);
                        this.h.a(context, cO.i);
                        Iterator it2 = cO.d.values().iterator();
                        long jMax = 0;
                        while (it2.hasNext()) {
                            jMax = Math.max(jMax, ((bD) it2.next()).f);
                        }
                        cB.h().a(jMax);
                    } else {
                        TreeMap treeMapD = cO.d(this.f283a);
                        Iterator it3 = treeMapD.keySet().iterator();
                        while (it3.hasNext()) {
                            cO.i.add((Long) treeMapD.get((Integer) it3.next()));
                        }
                        Launcher.a("Launcher.Model", "11683562 -   sBgWorkspaceScreens: " + TextUtils.join(", ", cO.i), true);
                        if (a.a.a.c.d.m(context)) {
                            ArrayList arrayList3 = new ArrayList(cO.i);
                            for (bD bDVar2 : cO.d.values()) {
                                long j6 = bDVar2.i;
                                if (bDVar2.h == -100 && arrayList3.contains(Long.valueOf(j6))) {
                                    arrayList3.remove(Long.valueOf(j6));
                                }
                            }
                            if (arrayList3.size() != 0) {
                                Launcher.a("Launcher.Model", "11683562 -   unusedScreens (to be removed): " + TextUtils.join(", ", arrayList3), true);
                                cO.i.removeAll(arrayList3);
                                this.h.a(context, cO.i);
                            }
                        }
                    }
                    return zD;
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void i() {
        InterfaceC0091de interfaceC0091de = (InterfaceC0091de) this.h.v.get();
        if (interfaceC0091de == null) {
            Log.w("Launcher.Model", "LoaderTask running with no launcher (onlyBindAllApps)");
            return;
        }
        RunnableC0096dj runnableC0096dj = new RunnableC0096dj(this, interfaceC0091de, (ArrayList) this.h.b.f163a.clone());
        if (cO.r.getThreadId() != Process.myTid()) {
            runnableC0096dj.run();
        } else {
            this.h.n.a(runnableC0096dj);
        }
    }

    final InterfaceC0091de a(InterfaceC0091de interfaceC0091de) {
        synchronized (this.h.m) {
            if (this.d) {
                return null;
            }
            if (this.h.v == null) {
                return null;
            }
            InterfaceC0091de interfaceC0091de2 = (InterfaceC0091de) this.h.v.get();
            if (interfaceC0091de2 != interfaceC0091de) {
                return null;
            }
            if (interfaceC0091de2 != null) {
                return interfaceC0091de2;
            }
            Log.w("Launcher.Model", "no mCallbacks");
            return null;
        }
    }

    final void a(int i) {
        if (i == -1001) {
            throw new RuntimeException("Should not call runBindSynchronousPage() without valid page index");
        }
        if (!this.h.u || !this.h.t) {
            throw new RuntimeException("Expecting AllApps and Workspace to be loaded");
        }
        synchronized (this.h.m) {
            if (this.h.p) {
                throw new RuntimeException("Error! Background loading is already running");
            }
        }
        this.h.n.a();
        a(i, false);
        i();
    }

    final boolean a() {
        return this.b;
    }

    final boolean b() {
        return this.c;
    }

    public final void c() {
        synchronized (this) {
            this.d = true;
            notify();
        }
    }

    public final void d() {
        synchronized (cO.c) {
            Log.d("Launcher.Model", "mLoaderTask.mContext=" + this.f283a);
            Log.d("Launcher.Model", "mLoaderTask.mIsLaunching=" + this.b);
            Log.d("Launcher.Model", "mLoaderTask.mStopped=" + this.d);
            Log.d("Launcher.Model", "mLoaderTask.mLoadAndBindStepFinished=" + this.e);
            Log.d("Launcher.Model", "mItems size=" + cO.e.size());
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        synchronized (this.h.m) {
            this.h.p = true;
        }
        synchronized (this.h.m) {
            Process.setThreadPriority(this.b ? 0 : 10);
        }
        e();
        if (!this.d) {
            synchronized (this.h.m) {
                if (this.b) {
                    Process.setThreadPriority(10);
                }
            }
            synchronized (this) {
                C0006aa c0006aa = this.h.n;
                c0006aa.a(new RunnableC0007ab(c0006aa, new RunnableC0094dh(this)), 0);
                while (!this.d && !this.e && !this.h.q) {
                    try {
                        wait(1000L);
                    } catch (InterruptedException e) {
                    }
                }
            }
            if (this.h.u) {
                i();
            } else {
                InterfaceC0091de interfaceC0091de = (InterfaceC0091de) this.h.v.get();
                if (interfaceC0091de == null) {
                    Log.w("Launcher.Model", "LoaderTask running with no launcher (loadAllApps)");
                } else {
                    PackageManager packageManager = this.f283a.getPackageManager();
                    Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
                    intent.addCategory("android.intent.category.LAUNCHER");
                    C0032b c0032b = this.h.b;
                    c0032b.f163a.clear();
                    c0032b.b.clear();
                    c0032b.c.clear();
                    c0032b.d.clear();
                    List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                    if (listQueryIntentActivities != null && !listQueryIntentActivities.isEmpty()) {
                        Collections.sort(listQueryIntentActivities, new C0110dy(packageManager, this.g));
                        Set setP = a.a.a.c.d.p(this.f283a);
                        while (true) {
                            int i2 = i;
                            if (i2 >= listQueryIntentActivities.size()) {
                                break;
                            }
                            ResolveInfo resolveInfo = listQueryIntentActivities.get(i2);
                            if (setP.contains(resolveInfo.activityInfo.name)) {
                                Log.d("KLP", "Hiding package: " + resolveInfo.activityInfo.name);
                            } else {
                                this.h.b.a(new C0086d(packageManager, resolveInfo, this.h.w, this.g));
                            }
                            i = i2 + 1;
                        }
                        ArrayList arrayList = this.h.b.b;
                        this.h.b.b = new ArrayList();
                        this.h.n.a(new RunnableC0097dk(this, interfaceC0091de, arrayList));
                    }
                }
                synchronized (this) {
                    if (!this.d) {
                        this.h.u = true;
                    }
                }
            }
            synchronized (this.h.m) {
                Process.setThreadPriority(0);
            }
        }
        synchronized (cO.c) {
            for (Object obj : cO.h.keySet()) {
                this.h.a(this.f283a, (C0137ey) obj, (byte[]) cO.h.get(obj));
            }
            cO.h.clear();
        }
        if (cB.o()) {
            f();
        }
        this.f283a = null;
        synchronized (this.h.m) {
            if (this.h.o == this) {
                this.h.o = null;
            }
            this.h.p = false;
        }
    }
}
