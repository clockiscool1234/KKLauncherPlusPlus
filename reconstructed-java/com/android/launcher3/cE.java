package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
public final class cE extends AppWidgetHostView implements InterfaceC0029ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private S f212a;
    private LayoutInflater b;
    private Context c;
    private int d;
    private DragLayer e;

    public cE(Context context) {
        super(context);
        this.c = context;
        this.f212a = new S(this);
        this.b = (LayoutInflater) context.getSystemService("layout_inflater");
        this.e = ((Launcher) context).g();
    }

    @Override // com.android.launcher3.InterfaceC0029ax
    public final void a() {
        if (this.f212a.c()) {
            return;
        }
        this.f212a.b();
    }

    public final boolean b() {
        return this.d != this.c.getResources().getConfiguration().orientation;
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        this.f212a.b();
    }

    @Override // android.view.ViewGroup
    public final int getDescendantFocusability() {
        return 393216;
    }

    @Override // android.appwidget.AppWidgetHostView
    protected final View getErrorView() {
        return this.b.inflate(R.layout.appwidget_error, (ViewGroup) this, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f212a.b();
        }
        if (this.f212a.c()) {
            this.f212a.b();
            return true;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.f212a.a();
                this.e.a(this);
                return false;
            case 1:
            case 3:
                this.f212a.b();
                return false;
            case 2:
            default:
                return false;
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1:
            case 3:
                this.f212a.b();
                break;
        }
        return false;
    }

    @Override // android.appwidget.AppWidgetHostView
    public final void updateAppWidget(RemoteViews remoteViews) {
        this.d = this.c.getResources().getConfiguration().orientation;
        super.updateAppWidget(remoteViews);
    }
}
