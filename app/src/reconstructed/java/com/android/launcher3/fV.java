package com.android.launcher3;

import android.util.Log;
import android.view.Choreographer;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
final class fV implements Choreographer.FrameCallback {
    private boolean c;
    private boolean f;
    private long g;
    private float h;
    private int i;
    private /* synthetic */ Workspace j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f367a = 0.0f;
    private float b = 0.5f;
    private Choreographer d = Choreographer.getInstance();
    private Interpolator e = new DecelerateInterpolator(1.5f);

    public fV(Workspace workspace) {
        this.j = workspace;
    }

    private void a(boolean z) {
        if (this.c || z) {
            this.c = false;
            float f = this.b;
            if (this.f) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.g;
                this.b = (this.e.getInterpolation(jCurrentTimeMillis / 250.0f) * (this.f367a - this.h)) + this.h;
                this.f = jCurrentTimeMillis < 250;
            } else {
                this.b = this.f367a;
            }
            if (Math.abs(this.b - this.f367a) > 1.0E-7f) {
                e();
            }
            if (!(Math.abs(f - this.b) > 1.0E-7f) || this.j.ab == null) {
                return;
            }
            try {
                this.j.aa.setWallpaperOffsets(this.j.ab, this.j.c.b, 0.5f);
                float f2 = 1.0f / this.j.aV;
                if (f2 != this.j.aW) {
                    this.j.aa.setWallpaperOffsetSteps(f2, 1.0f);
                    this.j.aW = f2;
                }
            } catch (IllegalArgumentException e) {
                Log.e("Launcher.Workspace", "Error updating wallpaper offset: " + e);
            }
        }
    }

    private int c() {
        return (this.j.getChildCount() - this.j.ag() < 3 || !this.j.s()) ? 0 : 1;
    }

    private int d() {
        return (this.j.getChildCount() - c()) - this.j.ag();
    }

    private void e() {
        if (this.c) {
            return;
        }
        this.d.postFrameCallback(this);
        this.c = true;
    }

    public final void a() {
        float f;
        if (this.j.getChildCount() <= 1) {
            f = 0.0f;
        } else {
            int iC = c();
            int iAg = this.j.ag();
            int childCount = (this.j.getChildCount() - 1) - iC;
            if (!this.j.z()) {
                iAg = childCount;
                childCount = iAg;
            }
            int iM = this.j.m(childCount);
            int iM2 = this.j.m(iAg) - iM;
            if (iM2 == 0) {
                f = 0.0f;
            } else {
                float fMax = Math.max(0.0f, Math.min(1.0f, ((this.j.getScrollX() - iM) - this.j.n(0)) / iM2));
                int iD = d();
                int iMax = this.j.aU ? iD - 1 : Math.max(3, iD - 1);
                this.j.aV = iMax;
                f = ((((this.j.z() ? (iMax - iD) + 1 : 0) + iD) - 1) * fMax) / iMax;
            }
        }
        fV fVVar = this.j.c;
        fVVar.e();
        fVVar.f367a = Math.max(0.0f, Math.min(f, 1.0f));
        if (fVVar.d() != fVVar.i) {
            if (fVVar.i > 0) {
                fVVar.f = true;
                fVVar.h = fVVar.b;
                fVVar.g = System.currentTimeMillis();
            }
            fVVar.i = fVVar.d();
        }
        a(true);
    }

    public final void b() {
        this.b = this.f367a;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        a(false);
    }
}
