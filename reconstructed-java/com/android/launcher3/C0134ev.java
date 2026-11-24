package com.android.launcher3;

import android.graphics.drawable.Drawable;
import java.io.File;

/* JADX INFO: renamed from: com.android.launcher3.ev, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0134ev extends AbstractC0149fj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f340a;
    private Drawable c;

    public C0134ev(int i, Drawable drawable) {
        this.f340a = i;
        this.c = drawable;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void a(eS eSVar) {
        eSVar.a((com.android.b.b) new com.android.b.d(new File(eSVar.getFilesDir(), eSVar.e().a(this.f340a)).getAbsolutePath(), 1024), false, true, (Runnable) null);
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean a() {
        return true;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void b(eS eSVar) {
        eSVar.a(eSVar.e().a(this.f340a), true);
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean b() {
        return true;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void c(eS eSVar) {
        eSVar.e().b(this.f340a);
    }
}
