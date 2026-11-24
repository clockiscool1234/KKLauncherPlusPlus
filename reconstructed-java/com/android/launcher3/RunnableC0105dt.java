package com.android.launcher3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: renamed from: com.android.launcher3.dt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0105dt implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cO f295a;
    private int b;
    private String[] c;

    public RunnableC0105dt(cO cOVar, int i, String[] strArr) {
        this.f295a = cOVar;
        this.b = i;
        this.c = strArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        ArrayList<C0086d> arrayList2;
        cB unused = this.f295a.l;
        Context contextB = cB.b();
        String[] strArr = this.c;
        int length = strArr.length;
        switch (this.b) {
            case 1:
                for (String str : strArr) {
                    this.f295a.b.a(contextB, str);
                }
                break;
            case 2:
                for (int i = 0; i < length; i++) {
                    this.f295a.b.b(contextB, strArr[i]);
                    C0157fr.a(this.f295a.l.g(), strArr[i]);
                }
                break;
            case 3:
            case 4:
                for (int i2 = 0; i2 < length; i2++) {
                    this.f295a.b.a(strArr[i2]);
                    C0157fr.a(this.f295a.l.g(), strArr[i2]);
                }
                break;
        }
        ArrayList arrayList3 = new ArrayList();
        if (this.f295a.b.b.size() > 0) {
            ArrayList arrayList4 = new ArrayList(this.f295a.b.b);
            this.f295a.b.b.clear();
            arrayList = arrayList4;
        } else {
            arrayList = null;
        }
        if (this.f295a.b.d.size() > 0) {
            ArrayList arrayList5 = new ArrayList(this.f295a.b.d);
            this.f295a.b.d.clear();
            arrayList2 = arrayList5;
        } else {
            arrayList2 = null;
        }
        if (this.f295a.b.c.size() > 0) {
            arrayList3.addAll(this.f295a.b.c);
            this.f295a.b.c.clear();
        }
        InterfaceC0091de interfaceC0091de = this.f295a.v != null ? (InterfaceC0091de) this.f295a.v.get() : null;
        if (interfaceC0091de == null) {
            Log.w("Launcher.Model", "Nobody to tell about the new app.  Launcher is probably loading.");
            return;
        }
        if (arrayList != null) {
            InterfaceC0091de interfaceC0091de2 = this.f295a.v != null ? (InterfaceC0091de) this.f295a.v.get() : null;
            if (cB.o()) {
                this.f295a.a(contextB, new ArrayList(arrayList), interfaceC0091de2, arrayList);
            } else {
                this.f295a.a(contextB, new ArrayList(), interfaceC0091de2, arrayList);
            }
        }
        if (arrayList2 != null) {
            for (C0086d c0086d : arrayList2) {
                for (bD bDVar : cO.a(cO.d.values(), new cT(this.f295a, c0086d.d))) {
                    if (cO.b(bDVar)) {
                        C0137ey c0137ey = (C0137ey) bDVar;
                        c0137ey.q = c0086d.q.toString();
                        cO.a(contextB, c0137ey);
                    }
                }
            }
            this.f295a.n.a(new RunnableC0106du(this, interfaceC0091de, arrayList2));
        }
        ArrayList arrayList6 = new ArrayList();
        if (this.b == 3) {
            arrayList6.addAll(Arrays.asList(strArr));
        } else if (this.b == 2) {
            PackageManager packageManager = contextB.getPackageManager();
            for (int i3 = 0; i3 < length; i3++) {
                if (cO.b(packageManager, strArr[i3])) {
                    arrayList6.add(strArr[i3]);
                }
            }
        }
        Iterator it = arrayList6.iterator();
        while (it.hasNext()) {
            Iterator it2 = cO.a(cO.d.values(), new cS(this.f295a, (String) it.next())).iterator();
            while (it2.hasNext()) {
                cO.b(contextB, (bD) it2.next());
            }
        }
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            Iterator it4 = cO.a(cO.d.values(), new cT(this.f295a, ((C0086d) it3.next()).d)).iterator();
            while (it4.hasNext()) {
                cO.b(contextB, (bD) it4.next());
            }
        }
        if (!arrayList6.isEmpty() || !arrayList3.isEmpty()) {
            InstallShortcutReceiver.a(contextB.getSharedPreferences("com.android.launcher3.prefs", 0), arrayList6);
            this.f295a.n.a(new RunnableC0107dv(this, interfaceC0091de, arrayList6, arrayList3));
        }
        this.f295a.n.a(new RunnableC0108dw(this, interfaceC0091de, cO.a(contextB)));
        this.f295a.n.a(new RunnableC0109dx(this, interfaceC0091de));
    }
}
