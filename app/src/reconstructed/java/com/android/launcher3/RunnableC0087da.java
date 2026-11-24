package com.android.launcher3;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.da, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0087da implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ArrayList f279a;
    private final /* synthetic */ ArrayList b;
    private final /* synthetic */ StackTraceElement[] c;
    private final /* synthetic */ ContentResolver d;

    RunnableC0087da(ArrayList arrayList, ArrayList arrayList2, StackTraceElement[] stackTraceElementArr, ContentResolver contentResolver) {
        this.f279a = arrayList;
        this.b = arrayList2;
        this.c = stackTraceElementArr;
        this.d = contentResolver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        int size = this.f279a.size();
        for (int i = 0; i < size; i++) {
            bD bDVar = (bD) this.f279a.get(i);
            long j = bDVar.f;
            arrayList.add(ContentProviderOperation.newUpdate(dF.a(j, false)).withValues((ContentValues) this.b.get(i)).build());
            cO.a(bDVar, j, this.c);
        }
        try {
            this.d.applyBatch("nl.ndsc.kitkatlauncher.settings", arrayList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
