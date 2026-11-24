package com.android.launcher3;

import android.appwidget.AppWidgetProviderInfo;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.Advanceable;
import java.util.Iterator;

/* JADX INFO: renamed from: com.android.launcher3.ci, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class HandlerC0068ci extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f241a;

    HandlerC0068ci(Launcher launcher) {
        this.f241a = launcher;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        int i = 0;
        Iterator it = this.f241a.ac.keySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                this.f241a.a(20000L);
                return;
            }
            View view = (View) it.next();
            View viewFindViewById = view.findViewById(((AppWidgetProviderInfo) this.f241a.ac.get(view)).autoAdvanceViewId);
            int i3 = i2 * 250;
            if (viewFindViewById instanceof Advanceable) {
                postDelayed(new RunnableC0069cj(this, viewFindViewById), i3);
            }
            i = i2 + 1;
        }
    }
}
