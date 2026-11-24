package com.android.launcher3;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class aG implements InterfaceC0022aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f125a = 0;

    public aG(Context context) {
        ((Launcher) context).q().a(this);
    }

    final void a() {
        this.f125a++;
        if (this.f125a != 1) {
            Log.e("DropTarget", "onDragEnter: Drag contract violated: " + this.f125a);
        }
    }

    @Override // com.android.launcher3.InterfaceC0022aq
    public final void a(InterfaceC0031az interfaceC0031az, Object obj) {
        if (this.f125a != 0) {
            Log.e("DropTarget", "onDragEnter: Drag contract violated: " + this.f125a);
        }
    }

    final void b() {
        this.f125a--;
        if (this.f125a != 0) {
            Log.e("DropTarget", "onDragExit: Drag contract violated: " + this.f125a);
        }
    }

    @Override // com.android.launcher3.InterfaceC0022aq
    public final void c() {
        if (this.f125a != 0) {
            Log.e("DropTarget", "onDragExit: Drag contract violated: " + this.f125a);
        }
    }
}
