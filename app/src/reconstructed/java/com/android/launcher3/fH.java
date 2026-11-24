package com.android.launcher3;

import android.content.ComponentName;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
final class fH implements InterfaceC0092df {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ HashSet f353a;
    private final /* synthetic */ HashMap b;
    private final /* synthetic */ ArrayList c;
    private final /* synthetic */ HashMap d;

    fH(Workspace workspace, HashSet hashSet, HashMap map, ArrayList arrayList, HashMap map2) {
        this.f353a = hashSet;
        this.b = map;
        this.c = arrayList;
        this.d = map2;
    }

    @Override // com.android.launcher3.InterfaceC0092df
    public final boolean a(bD bDVar, bD bDVar2, ComponentName componentName) {
        ArrayList arrayList;
        if (bDVar instanceof C0043bk) {
            if (this.f353a.contains(componentName)) {
                C0043bk c0043bk = (C0043bk) bDVar;
                if (this.b.containsKey(c0043bk)) {
                    arrayList = (ArrayList) this.b.get(c0043bk);
                } else {
                    arrayList = new ArrayList();
                    this.b.put(c0043bk, arrayList);
                }
                arrayList.add((C0137ey) bDVar2);
                return true;
            }
        } else if (this.f353a.contains(componentName)) {
            this.c.add((View) this.d.get(bDVar2));
            return true;
        }
        return false;
    }
}
