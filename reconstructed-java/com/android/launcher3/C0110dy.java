package com.android.launcher3;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.text.Collator;
import java.util.Comparator;
import java.util.HashMap;

/* JADX INFO: renamed from: com.android.launcher3.dy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0110dy implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Collator f300a = Collator.getInstance();
    private PackageManager b;
    private HashMap c;

    C0110dy(PackageManager packageManager, HashMap map) {
        this.b = packageManager;
        this.c = map;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        CharSequence charSequence;
        Object objTrim;
        ResolveInfo resolveInfo = (ResolveInfo) obj;
        ResolveInfo resolveInfo2 = (ResolveInfo) obj2;
        ComponentName componentNameA = cO.a(resolveInfo);
        ComponentName componentNameA2 = cO.a(resolveInfo2);
        if (this.c.containsKey(componentNameA)) {
            charSequence = (CharSequence) this.c.get(componentNameA);
        } else {
            String strTrim = resolveInfo.loadLabel(this.b).toString().trim();
            this.c.put(componentNameA, strTrim);
            charSequence = strTrim;
        }
        if (this.c.containsKey(componentNameA2)) {
            objTrim = (CharSequence) this.c.get(componentNameA2);
        } else {
            objTrim = resolveInfo2.loadLabel(this.b).toString().trim();
            this.c.put(componentNameA2, objTrim);
        }
        return this.f300a.compare(charSequence, objTrim);
    }
}
