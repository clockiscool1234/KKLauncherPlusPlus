package com.android.launcher3;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Looper;

/* JADX INFO: renamed from: com.android.launcher3.be, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0037be {
    public static Drawable f = null;
    public static Drawable g = null;
    public static int h = -1;
    public static int i = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f192a;
    public int b;
    public float c;
    public float d;
    public FolderIcon e;
    private CellLayout j;
    private ValueAnimator k;
    private ValueAnimator l;

    public C0037be(Launcher launcher, FolderIcon folderIcon) {
        this.e = null;
        this.e = folderIcon;
        Resources resources = launcher.getResources();
        if (FolderIcon.f) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new RuntimeException("FolderRingAnimator loading drawables on non-UI thread " + Thread.currentThread());
            }
            h = cB.a().i().a().w;
            i = resources.getDimensionPixelSize(R.dimen.folder_preview_padding);
            f = resources.getDrawable(R.drawable.portal_ring_outer_holo);
            g = resources.getDrawable(R.drawable.portal_ring_inner_nolip_holo);
            FolderIcon.f83a = resources.getDrawable(R.drawable.portal_ring_rest);
            FolderIcon.f = false;
        }
    }

    public final void a() {
        if (this.l != null) {
            this.l.cancel();
        }
        CellLayout cellLayout = this.j;
        this.k = C0082cw.a(0.0f, 1.0f);
        this.k.setDuration(100L);
        this.k.addUpdateListener(new C0038bf(this, h));
        this.k.addListener(new C0039bg(this));
        this.k.start();
    }

    public final void a(int i2, int i3) {
        this.f192a = i2;
        this.b = i3;
    }

    public final void a(CellLayout cellLayout) {
        this.j = cellLayout;
    }

    public final void b() {
        if (this.k != null) {
            this.k.cancel();
        }
        CellLayout cellLayout = this.j;
        this.l = C0082cw.a(0.0f, 1.0f);
        this.l.setDuration(100L);
        this.l.addUpdateListener(new C0040bh(this, h));
        this.l.addListener(new C0041bi(this));
        this.l.start();
    }

    public final float c() {
        return this.c;
    }

    public final float d() {
        return this.d;
    }
}
