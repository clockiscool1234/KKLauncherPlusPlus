package com.android.launcher3;

import android.content.Intent;

/* JADX INFO: renamed from: com.android.launcher3.ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0145ff extends AbstractC0149fj {
    @Override // com.android.launcher3.AbstractC0149fj
    public final void a(eS eSVar) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        eSVar.a(intent, 5);
    }
}
