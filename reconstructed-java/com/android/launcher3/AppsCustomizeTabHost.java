package com.android.launcher3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class AppsCustomizeTabHost extends TabHost implements TabHost.OnTabChangeListener, InterfaceC0058bz, dH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutInflater f71a;
    private ViewGroup b;
    private ViewGroup c;
    private AppsCustomizePagedView d;
    private FrameLayout e;
    private LinearLayout f;
    private boolean g;
    private boolean h;
    private boolean i;
    private Runnable j;
    private final Rect k;

    public AppsCustomizeTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = new Rect();
        this.f71a = LayoutInflater.from(context);
        this.j = new RunnableC0177s(this);
    }

    public static EnumC0176r a(String str) {
        if (!str.equals("APPS") && str.equals("WIDGETS")) {
            return EnumC0176r.Widgets;
        }
        return EnumC0176r.Applications;
    }

    private void a(int i) {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return;
        }
        ViewGroup viewGroupJ = ((Launcher) getContext()).j();
        int childCount = viewGroup.getChildCount();
        if (isChildrenDrawingOrderEnabled()) {
            throw new RuntimeException("Failed; can't get z-order of views");
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt == this) {
                return;
            }
            if (childAt.getVisibility() != 8 && childAt != viewGroupJ) {
                childAt.setVisibility(i);
            }
        }
    }

    public static String c(EnumC0176r enumC0176r) {
        return (enumC0176r != EnumC0176r.Applications && enumC0176r == EnumC0176r.Widgets) ? "WIDGETS" : "APPS";
    }

    static /* synthetic */ void d(AppsCustomizeTabHost appsCustomizeTabHost) {
        appsCustomizeTabHost.d.p(appsCustomizeTabHost.d.C());
        appsCustomizeTabHost.d.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(EnumC0176r enumC0176r) {
        setBackgroundColor(Color.argb((int) (255.0f * (getResources().getInteger(R.integer.config_appsCustomizeSpringLoadedBgAlpha) / 100.0f)), 0, 0, 0));
        this.d.a(enumC0176r);
    }

    static /* synthetic */ void f(AppsCustomizeTabHost appsCustomizeTabHost) {
    }

    final void a() {
        if (this.g) {
            this.i = true;
        } else {
            this.d.p();
        }
    }

    @Override // com.android.launcher3.dH
    public final void a(Launcher launcher, float f) {
        this.d.a(launcher, f);
    }

    @Override // com.android.launcher3.dH
    public final void a(Launcher launcher, boolean z, boolean z2) {
        this.d.a(launcher, z, z2);
        this.g = true;
        this.h = z2;
        if (z2) {
            a(0);
        } else {
            this.f.setVisibility(0);
            this.d.b(this.d.C(), true);
        }
        if (this.i) {
            this.d.p();
            this.i = false;
        }
    }

    final void a(EnumC0176r enumC0176r) {
        setOnTabChangedListener(null);
        d(enumC0176r);
        setCurrentTabByTag(c(enumC0176r));
        setOnTabChangedListener(this);
    }

    @Override // com.android.launcher3.InterfaceC0058bz
    public final void a_(Rect rect) {
        this.k.set(rect);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f.getLayoutParams();
        layoutParams.topMargin = rect.top;
        layoutParams.bottomMargin = rect.bottom;
        layoutParams.leftMargin = rect.left;
        layoutParams.rightMargin = rect.right;
        this.f.setLayoutParams(layoutParams);
    }

    public final void b() {
        if (getVisibility() == 0) {
            this.f.setVisibility(0);
            this.d.b(this.d.C(), true);
            this.d.p(this.d.C());
        }
    }

    @Override // com.android.launcher3.dH
    public final void b(Launcher launcher, boolean z, boolean z2) {
        this.d.b(launcher, z, z2);
        if (z && isHardwareAccelerated()) {
            setLayerType(2, null);
            buildLayer();
        }
        launcher.n().dismissWorkspaceCling(null);
    }

    public final void b(EnumC0176r enumC0176r) {
        setOnTabChangedListener(null);
        setCurrentTabByTag(c(enumC0176r));
        setOnTabChangedListener(this);
    }

    public final void c() {
        this.f.setVisibility(8);
        this.d.k();
    }

    @Override // com.android.launcher3.dH
    public final void c(Launcher launcher, boolean z, boolean z2) {
        this.d.c(launcher, z, z2);
        this.g = false;
        if (z) {
            setLayerType(0, null);
        }
        if (z2) {
            return;
        }
        this.d.c_();
        this.d.p(this.d.C());
        a(4);
    }

    final boolean d() {
        return this.g;
    }

    @Override // com.android.launcher3.dH
    public final View f() {
        View viewF = this.d.f();
        return viewF != null ? viewF : this.f;
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        if (getVisibility() != 0) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        setup();
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.tabs_container);
        TabWidget tabWidget = getTabWidget();
        AppsCustomizePagedView appsCustomizePagedView = (AppsCustomizePagedView) findViewById(R.id.apps_customize_pane_content);
        this.b = tabWidget;
        this.c = viewGroup;
        this.d = appsCustomizePagedView;
        this.e = (FrameLayout) findViewById(R.id.animation_buffer);
        this.f = (LinearLayout) findViewById(R.id.apps_customize_content);
        if (tabWidget == null || this.d == null) {
            throw new Resources.NotFoundException();
        }
        C0178t c0178t = new C0178t(this, appsCustomizePagedView);
        String string = getContext().getString(R.string.all_apps_button_label);
        TextView textView = (TextView) this.f71a.inflate(R.layout.tab_widget_indicator, (ViewGroup) tabWidget, false);
        textView.setText(string);
        textView.setContentDescription(string);
        addTab(newTabSpec("APPS").setIndicator(textView).setContent(c0178t));
        String string2 = getContext().getString(R.string.widgets_tab_label);
        TextView textView2 = (TextView) this.f71a.inflate(R.layout.tab_widget_indicator, (ViewGroup) tabWidget, false);
        textView2.setText(string2);
        textView2.setContentDescription(string2);
        addTab(newTabSpec("WIDGETS").setIndicator(textView2).setContent(c0178t));
        setOnTabChangedListener(this);
        ViewOnKeyListenerC0182x viewOnKeyListenerC0182x = new ViewOnKeyListenerC0182x();
        tabWidget.getChildTabViewAt(tabWidget.getTabCount() - 1).setOnKeyListener(viewOnKeyListenerC0182x);
        findViewById(R.id.market_button).setOnKeyListener(viewOnKeyListenerC0182x);
        this.c.setAlpha(0.0f);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.g && this.h) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = this.b.getLayoutParams().width <= 0;
        super.onMeasure(i, i2);
        if (z) {
            int iN = this.d.n();
            if (iN > 0 && this.b.getLayoutParams().width != iN) {
                this.b.getLayoutParams().width = iN;
                this.j.run();
            }
            super.onMeasure(i, i2);
        }
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        post(new RunnableC0179u(this, a(str), getResources().getInteger(R.integer.config_tabTransitionDuration)));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!(this.g && this.h) && motionEvent.getY() < this.d.getBottom()) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }
}
