package com.android.launcher3;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewWidget extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InterfaceC0124el f103a;
    boolean b;
    private String f;
    private RunnableC0123ek g;
    private boolean h;
    private final Rect i;
    private Object j;
    private C0157fr k;
    private static boolean d = true;
    private static boolean e = true;
    static PagedViewWidget c = null;

    public PagedViewWidget(Context context) {
        this(context, null);
    }

    public PagedViewWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagedViewWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = null;
        this.f103a = null;
        this.b = false;
        this.i = new Rect();
        this.f = context.getResources().getString(R.string.widget_dims_format);
        setWillNotDraw(false);
        setClipToPadding(false);
    }

    public static void a(boolean z) {
        d = z;
    }

    static void b() {
        c = null;
    }

    public static void b(boolean z) {
        e = z;
    }

    private void c() {
        if (this.g != null) {
            removeCallbacks(this.g);
        }
        if (this.b) {
            if (this.f103a != null) {
                this.f103a.e();
            }
            this.b = false;
        }
    }

    public final void a(AppWidgetProviderInfo appWidgetProviderInfo, int i, int[] iArr, C0157fr c0157fr) {
        C0017al c0017alA = cB.a().i().a();
        this.h = true;
        this.j = appWidgetProviderInfo;
        findViewById(R.id.widget_preview);
        ((TextView) findViewById(R.id.widget_name)).setText(appWidgetProviderInfo.label);
        TextView textView = (TextView) findViewById(R.id.widget_dims);
        if (textView != null) {
            textView.setText(String.format(this.f, Integer.valueOf(Math.min(iArr[0], (int) c0017alA.d)), Integer.valueOf(Math.min(iArr[1], (int) c0017alA.c))));
        }
        this.k = c0157fr;
    }

    public final void a(PackageManager packageManager, ResolveInfo resolveInfo, C0157fr c0157fr) {
        this.h = false;
        this.j = resolveInfo;
        ((TextView) findViewById(R.id.widget_name)).setText(resolveInfo.loadLabel(packageManager));
        TextView textView = (TextView) findViewById(R.id.widget_dims);
        if (textView != null) {
            textView.setText(String.format(this.f, 1, 1));
        }
        this.k = c0157fr;
    }

    final void a(aJ aJVar) {
        PagedViewWidgetImageView pagedViewWidgetImageView = (PagedViewWidgetImageView) findViewById(R.id.widget_preview);
        if (aJVar != null) {
            pagedViewWidgetImageView.f104a = false;
            pagedViewWidgetImageView.setImageDrawable(aJVar);
            if (this.h) {
                pagedViewWidgetImageView.setPadding(((a()[0] - aJVar.getIntrinsicWidth()) / 2) + this.i.left, this.i.top, this.i.right, this.i.bottom);
            }
            pagedViewWidgetImageView.setAlpha(1.0f);
            pagedViewWidgetImageView.f104a = true;
        }
    }

    final void a(InterfaceC0124el interfaceC0124el) {
        this.f103a = interfaceC0124el;
    }

    public final int[] a() {
        ImageView imageView = (ImageView) findViewById(R.id.widget_preview);
        return new int[]{(imageView.getWidth() - this.i.left) - this.i.right, imageView.getHeight() - this.i.top};
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ImageView imageView;
        super.onDetachedFromWindow();
        if (!d || (imageView = (ImageView) findViewById(R.id.widget_preview)) == null) {
            return;
        }
        aJ aJVar = (aJ) imageView.getDrawable();
        if (e && this.j != null && aJVar != null && aJVar.a() != null) {
            this.k.a(this.j, aJVar.a());
        }
        imageView.setImageDrawable(null);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ImageView imageView = (ImageView) findViewById(R.id.widget_preview);
        this.i.left = imageView.getPaddingLeft();
        this.i.top = imageView.getPaddingTop();
        this.i.right = imageView.getPaddingRight();
        this.i.bottom = imageView.getPaddingBottom();
        C0017al c0017alA = cB.a().i().a();
        TextView textView = (TextView) findViewById(R.id.widget_name);
        if (textView != null) {
            textView.setTextSize(0, c0017alA.p);
        }
        TextView textView2 = (TextView) findViewById(R.id.widget_dims);
        if (textView2 != null) {
            textView2.setTextSize(0, c0017alA.p);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        switch (motionEvent.getAction()) {
            case 0:
                if (c == null) {
                    if (this.g == null) {
                        this.g = new RunnableC0123ek(this);
                    }
                    postDelayed(this.g, 120L);
                }
                break;
            case 1:
                c();
                break;
            case 3:
                c();
                break;
        }
        return true;
    }
}
