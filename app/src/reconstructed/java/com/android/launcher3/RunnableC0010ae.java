package com.android.launcher3;

import android.content.ComponentName;

/* JADX INFO: renamed from: com.android.launcher3.ae, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0010ae implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ DeleteDropTarget f147a;
    private final /* synthetic */ ComponentName b;
    private final /* synthetic */ InterfaceC0031az c;

    RunnableC0010ae(DeleteDropTarget deleteDropTarget, ComponentName componentName, InterfaceC0031az interfaceC0031az) {
        this.f147a = deleteDropTarget;
        this.b = componentName;
        this.c = interfaceC0031az;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f147a.p = false;
        boolean z = C0032b.c(this.f147a.getContext(), this.b.getPackageName()).size() == 0;
        if (this.c instanceof Folder) {
            ((Folder) this.c).b(z);
        } else if (this.c instanceof Workspace) {
            ((Workspace) this.c).b(z);
        }
    }
}
