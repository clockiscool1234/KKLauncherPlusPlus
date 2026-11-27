package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class Cling extends FrameLayout implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener, bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f76a = "first_run_portrait";
    private static String b = "first_run_landscape";
    private static String c = "workspace_portrait";
    private static String d = "workspace_landscape";
    private static String e = "workspace_large";
    private static String f = "workspace_custom";
    private static String g = "migration_portrait";
    private static String h = "migration_landscape";
    private static String i = "migration_workspace_portrait";
    private static String j = "migration_workspace_large_portrait";
    private static String k = "migration_workspace_landscape";
    private static String l = "folder_portrait";
    private static String m = "folder_landscape";
    private static String n = "folder_large";
    private static float o = 60.0f;
    private static float p = 180.0f;
    private static float q = 50.0f;
    private static float r = 60.0f;
    private static float s = 30.0f;
    private static float t = 42.0f;
    private static float u = 46.0f;
    private Drawable A;
    private ComponentName B;
    private Rect C;
    private Paint D;
    private Paint E;
    private Paint F;
    private Paint G;
    private View H;
    private int I;
    private final Rect J;
    private Launcher v;
    private boolean w;
    private String x;
    private Drawable y;
    private int[] z;

    private boolean hasType(String type) {
        return type.equals(this.x);
    }

    public Cling(Context context) {
        this(context, null, 0);
    }

    public Cling(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Cling(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.z = new int[2];
        this.J = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.c, i2, 0);
        this.x = typedArrayObtainStyledAttributes.getString(0);
        typedArrayObtainStyledAttributes.recycle();
        setClickable(true);
    }

    private Rect a(DisplayMetrics displayMetrics) {
        int i2 = displayMetrics.widthPixels / 2;
        int i3 = displayMetrics.heightPixels / 2;
        int iA = aI.a(s, displayMetrics);
        if (hasType(e)) {
            iA = 0;
        }
        int iA2 = aI.a(r, displayMetrics);
        return new Rect(i2 - iA2, (i3 - iA) - iA2, i2 + iA2, (i3 - iA) + iA2);
    }

    final void a() {
        View view;
        this.v.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        al c0017alA = cB.a().i().a();
        Rect rectA = c0017alA.a(this.J);
        if (hasType(i)) {
            View viewFindViewById = findViewById(R.id.migration_workspace_cling_bubble);
            ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).bottomMargin = c0017alA.l - rectA.top;
            view = viewFindViewById;
        } else if (hasType(j)) {
            View viewFindViewById2 = findViewById(R.id.content);
            ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).bottomMargin = c0017alA.l - rectA.top;
            view = viewFindViewById2;
        } else {
            if (!hasType(k)) {
                return;
            }
            View viewFindViewById3 = findViewById(R.id.content);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById3.getLayoutParams();
            if (c0017alA.i) {
                marginLayoutParams.leftMargin = rectA.right;
                view = viewFindViewById3;
            } else {
                marginLayoutParams.rightMargin = c0017alA.k - rectA.left;
                view = viewFindViewById3;
            }
        }
        view.requestLayout();
    }

    final void a(int i2, int i3, ComponentName componentName, String str, String str2) {
        getResources();
        Hotseat hotseatI = this.v.i();
        if (hasType(e) || hotseatI == null || i2 < 0 || i3 < 0 || str.isEmpty() || str2.isEmpty()) {
            return;
        }
        Rect rectB = hotseatI.b(hotseatI.a(i3), hotseatI.b(i3));
        al c0017alA = cB.a().i().a();
        this.A = getResources().getDrawable(i2);
        this.B = componentName;
        this.C = new Rect(rectB.left, rectB.top, rectB.left + eI.a, rectB.top + eI.b);
        eI.a(this.C, c0017alA.B / c0017alA.o);
        TextView textView = (TextView) findViewById(R.id.focused_hotseat_app_title);
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = (TextView) findViewById(R.id.focused_hotseat_app_description);
        if (textView2 != null) {
            textView2.setText(str2);
        }
        View bubble = findViewById(R.id.focused_hotseat_app_bubble);
        if (bubble != null) {
            bubble.setVisibility(View.VISIBLE);
        }
    }

    final void a(int i2, Runnable runnable) {
        if (hasType(f76a) || hasType(b) || hasType(g) || hasType(h)) {
            findViewById(R.id.content).animate().alpha(0.0f).setDuration(i2).setListener(new V(this, runnable)).start();
        } else {
            animate().alpha(0.0f).setDuration(i2).setListener(new W(this, runnable)).start();
        }
        if (this.H != null) {
            this.H.animate().alpha(0.0f).setDuration(i2).setListener(new X(this)).start();
        }
    }

    final void a(Launcher launcher, View view) {
        if (this.w) {
            return;
        }
        this.v = launcher;
        this.H = view;
        this.I = -872415232;
        setOnLongClickListener(this);
        setOnClickListener(this);
        setOnTouchListener(this);
        this.D = new Paint();
        this.D.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
        this.D.setColor(16777215);
        this.D.setAlpha(0);
        this.D.setAntiAlias(true);
        this.E = new Paint();
        this.E.setColor(-1);
        this.E.setAntiAlias(true);
        int color = getResources().getColor(R.color.first_run_cling_circle_background_color);
        this.F = new Paint();
        this.F.setColor(color);
        this.F.setAntiAlias(true);
        this.G = new Paint();
        this.G.setColor(7519213);
        this.G.setAntiAlias(true);
        this.w = true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0078  */
    final void a(boolean z, int i2) {
        setVisibility(View.VISIBLE);
        setLayerType(View.LAYER_TYPE_HARDWARE, null);
        if (!hasType(c) && !hasType(d) && !hasType(e) && !hasType(f) && !hasType(i) && !hasType(j) && !hasType(k)) {
            if (z) {
                buildLayer();
                setAlpha(0.0f);
                animate().alpha(1.0f).setInterpolator(new AccelerateInterpolator()).setDuration(250L).setListener(null).start();
            }
            if (this.H != null) {
                this.H.setVisibility(View.VISIBLE);
                this.H.setAlpha(0.0f);
                this.H.animate().alpha(1.0f).setDuration(250L).setListener(null).start();
            }
            setFocusableInTouchMode(true);
            post(new U(this));
        }
        View viewFindViewById = findViewById(R.id.content);
        viewFindViewById.setAlpha(0.0f);
        viewFindViewById.animate().alpha(1.0f).setDuration(250L).setListener(null).start();
        setAlpha(1.0f);
        if (this.H != null) {
            this.H.setVisibility(View.VISIBLE);
            this.H.setAlpha(0.0f);
            this.H.animate().alpha(1.0f).setDuration(250L).setListener(null).start();
        }
        setFocusableInTouchMode(true);
        post(new U(this));
    }

    @Override // com.android.launcher3.bz
    public final void a_(Rect rect) {
        this.J.set(rect);
        setPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    final void b() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.v.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        al c0017alA = cB.a().i().a();
        Rect rectA = a(displayMetrics);
        if (hasType(e)) {
            View viewFindViewById = findViewById(R.id.workspace_cling_bubble);
            ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).bottomMargin = (c0017alA.l - rectA.top) - this.J.bottom;
            viewFindViewById.requestLayout();
        }
    }

    final void b(Rect rect) {
        if (hasType(m) || hasType(n)) {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.folder_bubble);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewGroup.getLayoutParams();
            marginLayoutParams.topMargin = rect.top - this.J.bottom;
            marginLayoutParams.leftMargin = rect.right;
            viewGroup.setLayoutDirection(View.LAYOUT_DIRECTION_LTR);
            viewGroup.requestLayout();
        }
    }

    final void c() {
        this.y = null;
        this.w = false;
    }

    final void d() {
        if (this.H != null) {
            this.H.bringToFront();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Bitmap bitmapCreateBitmap;
        Canvas canvas2;
        if (this.w) {
            canvas.save();
            Rect rectA = cB.a().i().a().a(this.J);
            if (this.y == null && hasType(f)) {
                this.y = getResources().getDrawable(R.drawable.bg_cling5);
            }
            if (this.H != null) {
                this.H.setBackgroundColor(this.I);
                canvas2 = null;
                bitmapCreateBitmap = null;
            } else if (this.y != null) {
                this.y.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.y.draw(canvas);
                canvas2 = null;
                bitmapCreateBitmap = null;
            } else if (hasType(c) || hasType(d) || hasType(e) || hasType(i) || hasType(j) || hasType(k)) {
                bitmapCreateBitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                canvas2 = new Canvas(bitmapCreateBitmap);
                canvas2.drawColor(this.I);
            } else {
                canvas.drawColor(this.I);
                canvas2 = null;
                bitmapCreateBitmap = null;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.v.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float alpha = getAlpha();
            View viewFindViewById = findViewById(R.id.content);
            if (viewFindViewById != null) {
                alpha *= viewFindViewById.getAlpha();
            }
            if (hasType(f76a) || hasType(b)) {
                View viewFindViewById2 = findViewById(R.id.bubble_content);
                Rect rect = new Rect();
                viewFindViewById2.getGlobalVisibleRect(rect);
                this.F.setAlpha((int) (alpha * 255.0f));
                canvas.drawCircle(displayMetrics.widthPixels / 2, rect.centerY(), Math.min(aI.a(p, displayMetrics), (viewFindViewById2.getMeasuredWidth() + aI.a(o, displayMetrics)) / 2.0f), this.F);
            } else if (hasType(c) || hasType(d) || hasType(e)) {
                Rect rectA2 = a(displayMetrics);
                this.D.setAlpha(128);
                canvas2.drawCircle(rectA2.centerX(), rectA2.centerY(), aI.a(r, displayMetrics), this.D);
                this.D.setAlpha(0);
                canvas2.drawCircle(rectA2.centerX(), rectA2.centerY(), aI.a(q, displayMetrics), this.D);
                canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
                canvas2.setBitmap(null);
                if (this.C != null && this.A != null) {
                    this.A.setBounds(this.C.left, this.C.top, this.C.right, this.C.bottom);
                    this.A.setAlpha((int) (255.0f * alpha));
                    this.A.draw(canvas);
                }
            } else if (hasType(i) || hasType(j) || hasType(k)) {
                aI.a(s, displayMetrics);
                canvas2.drawCircle(rectA.centerX(), rectA.centerY(), aI.a(u, displayMetrics), this.E);
                this.D.setAlpha(0);
                canvas2.drawCircle(rectA.centerX(), rectA.centerY(), aI.a(t, displayMetrics), this.D);
                canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
                canvas2.setBitmap(null);
            }
            canvas.restore();
        }
        super.dispatchDraw(canvas);
    }

    final String e() {
        return this.x;
    }

    @Override // android.view.View
    public View focusSearch(int i2) {
        return focusSearch(this, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        return FocusFinder.getInstance().findNextFocus(this, view, i2);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if ((hasType(c) || hasType(d) || hasType(e)) && this.C != null && this.C.contains(this.z[0], this.z[1])) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(this.B);
            intent.addCategory("android.intent.category.LAUNCHER");
            this.v.startActivity(intent, null);
            this.v.n().dismissWorkspaceCling(this);
        }
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return hasType(c) || hasType(d) || hasType(e) || hasType(f);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (hasType(c) || hasType(d) || hasType(e)) {
            this.v.n().dismissWorkspaceCling(null);
            return true;
        }
        if (!hasType(i) && !hasType(j) && !hasType(k)) {
            return false;
        }
        this.v.n().dismissMigrationWorkspaceCling(null);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.z[0] = (int) motionEvent.getX();
            this.z[1] = (int) motionEvent.getY();
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Folder folderK;
        if ((hasType(l) || hasType(m) || hasType(n)) && (folderK = this.v.h().k()) != null) {
            Rect rect = new Rect();
            folderK.getHitRect(rect);
            if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        boolean handled = super.onTouchEvent(motionEvent);
        if (!handled && motionEvent.getAction() == MotionEvent.ACTION_UP && isClickable()) {
            return performClick();
        }
        return handled;
    }
}
