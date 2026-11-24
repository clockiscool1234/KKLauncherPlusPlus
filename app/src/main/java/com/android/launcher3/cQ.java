package com.android.launcher3;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class cQ implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Uri f223a;
    private final /* synthetic */ ArrayList b;
    private final /* synthetic */ ContentResolver c;

    cQ(cO cOVar, Uri uri, ArrayList arrayList, ContentResolver contentResolver) {
        this.f223a = uri;
        this.b = arrayList;
        this.c = contentResolver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newDelete(this.f223a).build());
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", Long.valueOf(((Long) this.b.get(i)).longValue()));
            contentValues.put("screenRank", Integer.valueOf(i));
            arrayList.add(ContentProviderOperation.newInsert(this.f223a).withValues(contentValues).build());
        }
        try {
            this.c.applyBatch("com.clockiscool.kklauncherplusplus.settings", arrayList);
            synchronized (cO.c) {
                cO.i.clear();
                cO.i.addAll(this.b);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
