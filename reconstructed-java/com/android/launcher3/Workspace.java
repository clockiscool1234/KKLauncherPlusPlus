package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.WallpaperManager;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class Workspace extends AbstractC0138ez implements View.OnTouchListener, ViewGroup.OnHierarchyChangeListener, aF, InterfaceC0022aq, InterfaceC0030ay, InterfaceC0031az, InterfaceC0058bz, dH {
    private static boolean af;
    private static Rect an = null;
    private static Rect ao = null;
    private static /* synthetic */ int[] bH;
    private ObjectAnimator O;
    private ObjectAnimator P;
    private float Q;
    private ValueAnimator R;
    private Drawable S;
    private boolean T;
    private float U;
    private long V;
    private long W;
    private LayoutTransition Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f116a;
    private int[] aA;
    private float[] aB;
    private float[] aC;
    private Matrix aD;
    private eC aE;
    private float aF;
    private float aG;
    private fU aH;
    private boolean aI;
    private boolean aJ;
    private boolean aK;
    private boolean aL;
    private C0051bs aM;
    private Bitmap aN;
    private final Rect aO;
    private final int[] aP;
    private int[] aQ;
    private boolean aR;
    private float aS;
    private boolean aT;
    private boolean aU;
    private int aV;
    private float aW;
    private Runnable aX;
    private Runnable aY;
    private Point aZ;
    private final WallpaperManager aa;
    private IBinder ab;
    private int ac;
    private int ad;
    private C0136ex ae;
    private HashMap ag;
    private ArrayList ah;
    private Runnable ai;
    private L aj;
    private int[] ak;
    private int al;
    private int am;
    private InterfaceC0077cr ap;
    private boolean aq;
    private float ar;
    private String as;
    private CellLayout at;
    private CellLayout au;
    private CellLayout av;
    private Launcher aw;
    private C0055bw ax;
    private C0021ap ay;
    private int[] az;
    boolean b;
    private float bA;
    private Runnable bB;
    private boolean bC;
    private boolean bD;
    private final Runnable bE;
    private boolean bF;
    private final fX bG;
    private int ba;
    private final RunnableC0005a bb;
    private final RunnableC0005a bc;
    private C0037be bd;
    private FolderIcon be;
    private boolean bf;
    private boolean bg;
    private aG bh;
    private float bi;
    private float bj;
    private float bk;
    private int bl;
    private int bm;
    private int bn;
    private SparseArray bo;
    private final ArrayList bp;
    private int bq;
    private float br;
    private float bs;
    private float bt;
    private float bu;
    private float[] bv;
    private float[] bw;
    private float[] bx;
    private float[] by;
    private int bz;
    fV c;

    public Workspace(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Workspace(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Q = 0.0f;
        this.T = true;
        this.U = 0.0f;
        this.V = -1L;
        this.W = -1L;
        this.ag = new HashMap();
        this.ah = new ArrayList();
        this.ak = new int[2];
        this.al = -1;
        this.am = -1;
        this.ar = -1.0f;
        this.as = "";
        this.at = null;
        this.au = null;
        this.av = null;
        this.az = new int[2];
        this.aA = new int[2];
        this.aB = new float[2];
        this.aC = new float[2];
        this.aD = new Matrix();
        this.aH = fU.NORMAL;
        this.aI = false;
        this.f116a = false;
        this.b = false;
        this.aJ = true;
        this.aK = false;
        this.aL = false;
        this.aN = null;
        this.aO = new Rect();
        this.aP = new int[2];
        this.aQ = new int[2];
        this.aW = 0.0f;
        this.aZ = new Point();
        this.bb = new RunnableC0005a();
        this.bc = new RunnableC0005a();
        this.bd = null;
        this.be = null;
        this.bf = false;
        this.bg = false;
        this.bl = 0;
        this.bm = -1;
        this.bn = -1;
        this.bp = new ArrayList();
        this.bz = -1;
        this.bE = new RunnableC0162fw(this);
        this.bG = new fX();
        this.bF = a.a.a.c.d.a(getContext());
        this.F = false;
        this.aM = C0051bs.a(context);
        this.bh = new aG(context);
        A();
        this.aw = (Launcher) context;
        Resources resources = getResources();
        C0017al c0017alA = cB.a().i().a();
        this.aT = c0017alA.c() || c0017alA.h;
        this.G = false;
        this.aa = WallpaperManager.getInstance(context);
        C0017al c0017alA2 = cB.a().i().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.k, i, 0);
        this.aF = resources.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f;
        this.aG = c0017alA2.b();
        this.ba = resources.getInteger(R.integer.config_cameraDistance);
        int i2 = typedArrayObtainStyledAttributes.getInt(0, 1);
        this.ad = i2;
        this.ac = i2;
        typedArrayObtainStyledAttributes.recycle();
        setOnHierarchyChangeListener(this);
        setHapticFeedbackEnabled(false);
        getContext();
        this.i = this.ad;
        Launcher.a(this.i);
        cB cBVarA = cB.a();
        C0017al c0017alA3 = cBVarA.i().a();
        this.ax = cBVarA.e();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        setChildrenDrawnWithCacheEnabled(true);
        b(this.aG);
        this.Z = new LayoutTransition();
        this.Z.enableTransitionType(3);
        this.Z.enableTransitionType(1);
        this.Z.disableTransitionType(2);
        this.Z.disableTransitionType(0);
        setLayoutTransition(this.Z);
        try {
            this.S = getResources().getDrawable(R.drawable.apps_customize_bg);
        } catch (Resources.NotFoundException e) {
        }
        this.c = new fV(this);
        this.aw.getWindowManager().getDefaultDisplay().getSize(this.aZ);
        this.bi = 0.55f * c0017alA3.o;
        this.d = (int) (500.0f * this.e);
        ay();
        setMotionEventSplittingEnabled(true);
        setImportantForAccessibility(1);
    }

    private long a(long j, int i) {
        Launcher.a("Launcher.Workspace", "11683562 - insertNewWorkspaceScreen(): " + j + " at index: " + i, true);
        if (this.ag.containsKey(Long.valueOf(j))) {
            throw new RuntimeException("Screen id " + j + " already exists!");
        }
        CellLayout cellLayout = (CellLayout) this.aw.getLayoutInflater().inflate(R.layout.workspace_screen, (ViewGroup) null);
        cellLayout.setOnLongClickListener(this.q);
        cellLayout.setOnClickListener(this.aw);
        cellLayout.setSoundEffectsEnabled(false);
        this.ag.put(Long.valueOf(j), cellLayout);
        this.ah.add(i, Long.valueOf(j));
        addView(cellLayout, i);
        return j;
    }

    private Bitmap a(View view, Canvas canvas, int i) {
        int color = getResources().getColor(R.color.outline_color);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth() + 2, view.getHeight() + 2, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        a(view, canvas, 2, true);
        this.aM.a(bitmapCreateBitmap, canvas, color, color);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    private static Rect a(CellLayout cellLayout, int i, int i2, int i3, int i4) {
        Rect rect = new Rect();
        cellLayout.a(i, i2, i3, i4, rect);
        return rect;
    }

    static Rect a(Launcher launcher, int i) {
        C0017al c0017alA = cB.a().i().a();
        launcher.getResources();
        Display defaultDisplay = launcher.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getCurrentSizeRange(point, point2);
        int i2 = (int) c0017alA.d;
        int i3 = (int) c0017alA.c;
        if (i == 0) {
            if (an == null) {
                Rect rectA = c0017alA.a(0);
                int i4 = (point2.x - rectA.left) - rectA.right;
                int i5 = (point.y - rectA.top) - rectA.bottom;
                Rect rect = new Rect();
                an = rect;
                rect.set(i4 / i2, i5 / i3, 0, 0);
            }
            return an;
        }
        if (i != 1) {
            return null;
        }
        if (ao == null) {
            Rect rectA2 = c0017alA.a(1);
            int i6 = (point.x - rectA2.left) - rectA2.right;
            int i7 = (point2.y - rectA2.top) - rectA2.bottom;
            Rect rect2 = new Rect();
            ao = rect2;
            rect2.set(i6 / i2, i7 / i3, 0, 0);
        }
        return ao;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00b7  */
    private CellLayout a(float f, float f2, boolean z) {
        float f3;
        CellLayout cellLayout;
        int childCount = getChildCount();
        CellLayout cellLayout2 = null;
        float f4 = Float.MAX_VALUE;
        int i = 0;
        while (i < childCount) {
            if (((Long) this.ah.get(i)).longValue() != -301) {
                CellLayout cellLayout3 = (CellLayout) getChildAt(i);
                float[] fArr = {f, f2};
                cellLayout3.getMatrix().invert(this.aD);
                Matrix matrix = this.aD;
                a(cellLayout3, fArr);
                if (fArr[0] >= 0.0f && fArr[0] <= cellLayout3.getWidth() && fArr[1] >= 0.0f && fArr[1] <= cellLayout3.getHeight()) {
                    return cellLayout3;
                }
                float[] fArr2 = this.aC;
                fArr2[0] = cellLayout3.getWidth() / 2;
                fArr2[1] = cellLayout3.getHeight() / 2;
                fArr2[0] = fArr2[0] + cellLayout3.getLeft();
                fArr2[1] = fArr2[1] + cellLayout3.getTop();
                fArr[0] = f;
                fArr[1] = f2;
                float f5 = fArr[0] - fArr2[0];
                float f6 = fArr2[1] - fArr2[1];
                float f7 = (f5 * f5) + (f6 * f6);
                if (f7 < f4) {
                    cellLayout = cellLayout3;
                    f3 = f7;
                } else {
                    f3 = f4;
                    cellLayout = cellLayout2;
                }
            } else {
                f3 = f4;
                cellLayout = cellLayout2;
            }
            i++;
            cellLayout2 = cellLayout;
            f4 = f3;
        }
        return cellLayout2;
    }

    private void a(float f, boolean z) {
        if (this.S == null) {
            return;
        }
        if (this.R != null) {
            this.R.cancel();
            this.R = null;
        }
        float backgroundAlpha = getBackgroundAlpha();
        if (f != backgroundAlpha) {
            if (!z) {
                setBackgroundAlpha(f);
                return;
            }
            this.R = C0082cw.a(backgroundAlpha, f);
            this.R.addUpdateListener(new fN(this));
            this.R.setInterpolator(new DecelerateInterpolator(1.5f));
            this.R.setDuration(350L);
            this.R.start();
        }
    }

    private void a(int i, int i2, Runnable runnable, boolean z) {
        Launcher.a("Launcher.Workspace", "11683562 - fadeAndRemoveEmptyScreen()", true);
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat("alpha", 0.0f);
        PropertyValuesHolder propertyValuesHolderOfFloat2 = PropertyValuesHolder.ofFloat("backgroundAlpha", 0.0f);
        CellLayout cellLayout = (CellLayout) this.ag.get(-201L);
        this.ai = new fK(this, cellLayout, z);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(cellLayout, propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
        objectAnimatorOfPropertyValuesHolder.setDuration(150L);
        objectAnimatorOfPropertyValuesHolder.setStartDelay(i);
        objectAnimatorOfPropertyValuesHolder.addListener(new fL(this, runnable));
        objectAnimatorOfPropertyValuesHolder.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(View view, long j, long j2, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        CellLayout cellLayoutB;
        CellLayout.LayoutParams layoutParams;
        if (j == -100 && b(j2) == null) {
            Log.e("Launcher.Workspace", "Skipping child, screenId " + j2 + " not found");
            new Throwable().printStackTrace();
            return;
        }
        if (j2 == -201) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
        if (j == -101) {
            CellLayout cellLayoutA = this.aw.i().a();
            view.setOnKeyListener(null);
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).a(false);
            }
            if (z2) {
                i = this.aw.i().a((int) j2);
                i2 = this.aw.i().b((int) j2);
                cellLayoutB = cellLayoutA;
            } else {
                this.aw.i().a(i, i2);
                cellLayoutB = cellLayoutA;
            }
        } else {
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).a(!a.a.a.c.d.g(getContext()));
            }
            cellLayoutB = b(j2);
            view.setOnKeyListener(new ViewOnKeyListenerC0057by());
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null || !(layoutParams2 instanceof CellLayout.LayoutParams)) {
            layoutParams = new CellLayout.LayoutParams(i, i2, i3, i4);
        } else {
            CellLayout.LayoutParams layoutParams3 = (CellLayout.LayoutParams) layoutParams2;
            layoutParams3.f74a = i;
            layoutParams3.b = i2;
            layoutParams3.f = i3;
            layoutParams3.g = i4;
            layoutParams = layoutParams3;
        }
        if (i3 < 0 && i4 < 0) {
            layoutParams.h = false;
        }
        if (!cellLayoutB.a(view, z ? 0 : -1, this.aw.a((bD) view.getTag()), layoutParams, !(view instanceof Folder))) {
            Launcher.a("Launcher.Workspace", "Failed to add to item at (" + layoutParams.f74a + "," + layoutParams.b + ") to CellLayout", true);
        }
        if (!(view instanceof Folder)) {
            view.setHapticFeedbackEnabled(false);
            view.setOnLongClickListener(this.q);
        }
        if (view instanceof aF) {
            this.ay.a((aF) view);
        }
    }

    private void a(View view, Canvas canvas, int i, boolean z) {
        boolean z2;
        Rect rect = this.aO;
        view.getDrawingRect(rect);
        canvas.save();
        if (view instanceof TextView) {
            Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
            rect.set(0, 0, drawable.getIntrinsicWidth() + i, drawable.getIntrinsicHeight() + i);
            canvas.translate(i / 2, i / 2);
            drawable.draw(canvas);
        } else {
            if (view instanceof FolderIcon) {
                if (((FolderIcon) view).d()) {
                    ((FolderIcon) view).a(false);
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else if (view instanceof BubbleTextView) {
                BubbleTextView bubbleTextView = (BubbleTextView) view;
                rect.bottom = bubbleTextView.getLayout().getLineTop(0) + (bubbleTextView.getExtendedPaddingTop() - 3);
                z2 = false;
            } else {
                if (view instanceof TextView) {
                    TextView textView = (TextView) view;
                    rect.bottom = textView.getLayout().getLineTop(0) + (textView.getExtendedPaddingTop() - textView.getCompoundDrawablePadding());
                }
                z2 = false;
            }
            canvas.translate((-view.getScrollX()) + (i / 2), (-view.getScrollY()) + (i / 2));
            canvas.clipRect(rect, Region.Op.REPLACE);
            view.draw(canvas);
            if (z2) {
                ((FolderIcon) view).a(true);
            }
        }
        canvas.restore();
    }

    private static void a(View view, float[] fArr) {
        fArr[0] = fArr[0] - view.getLeft();
        fArr[1] = fArr[1] - view.getTop();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0058  */
    /* JADX WARN: Code duplicated, block: B:25:0x0074  */
    /* JADX WARN: Code duplicated, block: B:27:0x0082  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad A[SYNTHETIC] */
    private void a(CellLayout cellLayout, ArrayList arrayList, ArrayList arrayList2, boolean z) {
        ArrayList arrayListU;
        int i;
        ComponentName component;
        Uri data;
        int childCount = cellLayout.q().getChildCount();
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 0; i2 < childCount; i2++) {
            arrayList3.add(cellLayout.q().getChildAt(i2));
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View view = (View) arrayList3.get(i3);
            bD bDVar = (bD) view.getTag();
            if (bDVar instanceof C0137ey) {
                C0137ey c0137ey = (C0137ey) bDVar;
                ComponentName component2 = c0137ey.f343a.getComponent();
                Uri data2 = c0137ey.f343a.getData();
                if (data2 == null || data2.equals(Uri.EMPTY)) {
                    if (!arrayList.contains(component2)) {
                        arrayList.add(component2);
                    } else if (arrayList2 != null) {
                        arrayList2.add(component2);
                    }
                    if (view instanceof FolderIcon) {
                        arrayListU = ((FolderIcon) view).a().u();
                        for (i = 0; i < arrayListU.size(); i++) {
                            if (((View) arrayListU.get(i)).getTag() instanceof C0137ey) {
                                C0137ey c0137ey2 = (C0137ey) ((View) arrayListU.get(i)).getTag();
                                component = c0137ey2.f343a.getComponent();
                                data = c0137ey2.f343a.getData();
                                if (data != null || data.equals(Uri.EMPTY)) {
                                    if (!arrayList.contains(component)) {
                                        arrayList.add(component);
                                    } else if (arrayList2 != null) {
                                        arrayList2.add(component);
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (view instanceof FolderIcon) {
                arrayListU = ((FolderIcon) view).a().u();
                while (i < arrayListU.size()) {
                    if (((View) arrayListU.get(i)).getTag() instanceof C0137ey) {
                        C0137ey c0137ey3 = (C0137ey) ((View) arrayListU.get(i)).getTag();
                        component = c0137ey3.f343a.getComponent();
                        data = c0137ey3.f343a.getData();
                        if (data != null) {
                            if (!arrayList.contains(component)) {
                                arrayList.add(component);
                            } else if (arrayList2 != null) {
                                arrayList2.add(component);
                            }
                        } else if (!arrayList.contains(component)) {
                            arrayList.add(component);
                        } else if (arrayList2 != null) {
                            arrayList2.add(component);
                        }
                    }
                }
            }
        }
    }

    private void a(Hotseat hotseat, float[] fArr) {
        this.aA[0] = (int) fArr[0];
        this.aA[1] = (int) fArr[1];
        this.aw.g().a((View) this, this.aA, true);
        this.aw.g().c(hotseat.a(), this.aA);
        fArr[0] = this.aA[0];
        fArr[1] = this.aA[1];
    }

    private void a(HashMap map, bD bDVar, View view) {
        C0086d c0086d;
        if (bDVar.a().getComponent() == null || (c0086d = (C0086d) map.get(bDVar.a().getComponent())) == null || !cO.b(bDVar)) {
            return;
        }
        C0137ey c0137ey = (C0137ey) bDVar;
        c0137ey.b(this.ax);
        c0137ey.q = c0086d.q.toString();
        ((BubbleTextView) view).a(c0137ey, this.ax);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(HashSet hashSet) {
        for (CellLayout cellLayout : aH()) {
            C0136ex c0136exQ = cellLayout.q();
            HashMap map = new HashMap();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= c0136exQ.getChildCount()) {
                    break;
                }
                View childAt = c0136exQ.getChildAt(i2);
                map.put((bD) childAt.getTag(), childAt);
                i = i2 + 1;
            }
            ArrayList<View> arrayList = new ArrayList();
            HashMap map2 = new HashMap();
            cO.a(map.keySet(), new fH(this, hashSet, map2, arrayList, map));
            for (C0043bk c0043bk : map2.keySet()) {
                Iterator it = ((ArrayList) map2.get(c0043bk)).iterator();
                while (it.hasNext()) {
                    c0043bk.b((C0137ey) it.next());
                }
            }
            for (View view : arrayList) {
                cellLayout.removeViewInLayout(view);
                if (view instanceof aF) {
                    this.ay.b((aF) view);
                }
            }
            if (arrayList.size() > 0) {
                c0136exQ.requestLayout();
                c0136exQ.invalidate();
            }
        }
        Z();
    }

    private void a(boolean z, int i, boolean z2) {
        fU fUVar = fU.OVERVIEW;
        if (!z) {
            fUVar = fU.NORMAL;
        }
        Animator animatorA = a(fUVar, z2, 0, i);
        if (animatorA != null) {
            aC();
            animatorA.addListener(new fP(this));
            animatorA.start();
        }
    }

    private boolean a(int i, int i2, Rect rect) {
        if (rect == null) {
            new Rect();
        }
        this.aA[0] = i;
        this.aA[1] = i2;
        this.aw.g().a((View) this, this.aA, true);
        C0017al c0017alA = cB.a().i().a();
        return (c0017alA.c() ? new Rect(c0017alA.m - c0017alA.C, 0, Integer.MAX_VALUE, c0017alA.n) : new Rect(0, c0017alA.n - c0017alA.C, c0017alA.m, Integer.MAX_VALUE)).contains(this.aA[0], this.aA[1]);
    }

    private boolean a(bD bDVar, CellLayout cellLayout, int[] iArr, float f, boolean z) {
        if (f > this.bi) {
            return false;
        }
        View viewE = cellLayout.e(iArr[0], iArr[1]);
        if (viewE != null) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) viewE.getLayoutParams();
            if (layoutParams.e && (layoutParams.c != layoutParams.f74a || layoutParams.d != layoutParams.d)) {
                return false;
            }
        }
        boolean z2 = this.aj != null && viewE == this.aj.f93a;
        if (viewE == null || z2) {
            return false;
        }
        if (!z || this.bf) {
            return (viewE.getTag() instanceof C0137ey) && (bDVar.g == 0 || bDVar.g == 1);
        }
        return false;
    }

    private boolean a(Object obj, CellLayout cellLayout, int[] iArr, float f) {
        if (f > this.bi) {
            return false;
        }
        View viewE = cellLayout.e(iArr[0], iArr[1]);
        if (viewE != null) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) viewE.getLayoutParams();
            if (layoutParams.e && (layoutParams.c != layoutParams.f74a || layoutParams.d != layoutParams.d)) {
                return false;
            }
        }
        return (viewE instanceof FolderIcon) && ((FolderIcon) viewE).a(obj);
    }

    private float[] a(int i, int i2, int i3, int i4, aA aAVar, float[] fArr) {
        if (fArr == null) {
            fArr = new float[2];
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.dragViewOffsetX) + i;
        int dimensionPixelSize2 = (getResources().getDimensionPixelSize(R.dimen.dragViewOffsetY) + i2) - i4;
        fArr[0] = (dimensionPixelSize - i3) + (aAVar.d().width() / 2);
        fArr[1] = dimensionPixelSize2 + (aAVar.d().height() / 2);
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] a(int i, int i2, int i3, int i4, CellLayout cellLayout, int[] iArr) {
        return cellLayout.c(i, i2, i3, i4, iArr);
    }

    private void aA() {
        if (aj() || this.aI) {
            return;
        }
        if (this.O != null) {
            this.O.cancel();
        }
        if (this.P != null) {
            this.P.cancel();
        }
        this.P = C0082cw.a(this, "childrenOutlineAlpha", 0.0f);
        this.P.setDuration(375L);
        this.P.setStartDelay(0L);
        this.P.start();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0056  */
    private void aB() {
        int i;
        int i2;
        if (this.aJ) {
            int childCount = getChildCount();
            b(this.aQ);
            int i3 = this.aQ[0];
            int i4 = this.aQ[1];
            if (i3 != i4) {
                i = i4;
                i2 = i3;
            } else if (i4 < childCount - 1) {
                i = i4 + 1;
                i2 = i3;
            } else if (i3 > 0) {
                i = i4;
                i2 = i3 - 1;
            } else {
                i = i4;
                i2 = i3;
            }
            CellLayout cellLayout = (CellLayout) this.ag.get(-301L);
            int i5 = 0;
            while (i5 < childCount) {
                CellLayout cellLayout2 = (CellLayout) c(i5);
                cellLayout2.a(cellLayout2 != cellLayout && i2 <= i5 && i5 <= i && d((View) cellLayout2));
                i5++;
            }
        }
    }

    private void aC() {
        this.aI = true;
        invalidate();
        d(false);
        if ((this.aH != fU.NORMAL) && af()) {
            setLayoutTransition(null);
            ((CellLayout) this.ag.get(-301L)).setVisibility(4);
            ax();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aD() {
        this.aI = false;
        d(false);
        if (this.aT) {
            for (int i = 0; i < ag(); i++) {
                ((CellLayout) getChildAt(i)).b(1.0f);
            }
        } else {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                ((CellLayout) getChildAt(i2)).b(1.0f);
            }
        }
        if ((this.aH == fU.NORMAL) && af()) {
            ((CellLayout) this.ag.get(-301L)).setVisibility(0);
        }
    }

    private void aE() {
        if (this.bd != null) {
            this.bd.b();
            this.bd = null;
        }
        this.bb.a((dU) null);
        this.bb.a();
    }

    private void aF() {
        if (this.be != null) {
            this.be.c();
            this.be = null;
        }
    }

    private CellLayout aG() {
        return (CellLayout) getChildAt(D());
    }

    private ArrayList aH() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            arrayList.add((CellLayout) getChildAt(i));
        }
        if (this.aw.i() != null) {
            arrayList.add(this.aw.i().a());
        }
        return arrayList;
    }

    private ArrayList aI() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            arrayList.add(((CellLayout) getChildAt(i)).q());
        }
        if (this.aw.i() != null) {
            arrayList.add(this.aw.i().a().q());
        }
        return arrayList;
    }

    private static /* synthetic */ int[] aJ() {
        int[] iArr = bH;
        if (iArr == null) {
            iArr = new int[nl.ndsc.kitkatlauncher.a.b.valuesCustom().length];
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.DO_NOTHING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.GO_TO_CENTER_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.GO_TO_FAR_LEFT_SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.GO_TO_FAR_RIGHT_SCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            bH = iArr;
        }
        return iArr;
    }

    private void ax() {
        setLayoutTransition(this.Z);
    }

    private void ay() {
        new fM(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    private void az() {
        if (aj() || this.aI) {
            return;
        }
        if (this.P != null) {
            this.P.cancel();
        }
        if (this.O != null) {
            this.O.cancel();
        }
        this.O = C0082cw.a(this, "childrenOutlineAlpha", 1.0f);
        this.O.setDuration(100L);
        this.O.start();
    }

    private void c(int i, int i2) {
        if (i <= i2) {
            i2 = i;
            i = i2;
        }
        int childCount = getChildCount();
        int iMax = Math.max(i2, 0);
        int iMin = Math.min(i, childCount - 1);
        for (int i3 = iMax; i3 <= iMin; i3++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i3);
            cellLayout.setChildrenDrawnWithCacheEnabled(true);
            cellLayout.setChildrenDrawingCacheEnabled(true);
        }
    }

    private void c(CellLayout cellLayout) {
        if (this.at != null) {
            this.at.s();
            this.at.u();
        }
        this.at = cellLayout;
        if (this.at != null) {
            this.at.t();
        }
        e(true);
        aE();
        d(-1, -1);
    }

    private long d(long j) {
        return a(-201L, getChildCount());
    }

    private void d(int i, int i2) {
        if (i == this.al && i2 == this.am) {
            return;
        }
        this.al = i;
        this.am = i2;
        s(0);
    }

    private void d(CellLayout cellLayout) {
        if (this.au != null) {
            this.au.d(false);
        }
        this.au = cellLayout;
        if (this.au != null) {
            this.au.d(true);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        boolean z2 = true;
        boolean z3 = this.aH == fU.SMALL || this.aH == fU.OVERVIEW || this.aI;
        if (!z && !z3 && !this.f116a && !I()) {
            z2 = false;
        }
        if (z2 != this.aJ) {
            this.aJ = z2;
            if (this.aJ) {
                aB();
                return;
            }
            for (int i = 0; i < getChildCount(); i++) {
                ((CellLayout) getChildAt(i)).a(false);
            }
        }
    }

    private void e(boolean z) {
        if (z) {
            this.bc.a();
        }
        this.bm = -1;
        this.bn = -1;
    }

    private static boolean f(aH aHVar) {
        return (aHVar.g instanceof cF) || (aHVar.g instanceof C0129eq);
    }

    @Override // com.android.launcher3.dX
    protected final void H() {
        super.H();
        Launcher.a(D());
        if (af() && D() == 0 && !this.aq) {
            this.aq = true;
            if (this.ap != null) {
                this.ap.a();
                this.W = System.currentTimeMillis();
                this.aw.c(false);
            }
        } else if (af() && D() != 0 && this.aq) {
            this.aq = false;
            if (this.ap != null) {
                InterfaceC0077cr interfaceC0077cr = this.ap;
                this.aw.e();
                this.aw.c(false);
            }
        }
        if (y() != null) {
            y().setContentDescription(u());
        }
    }

    @Override // com.android.launcher3.dX
    protected final void J() {
        int i = 0;
        super.J();
        if (isHardwareAccelerated()) {
            d(false);
        } else if (this.k != -1) {
            c(this.i, this.k);
        } else {
            c(this.i - 1, this.i + 1);
        }
        if (this.aT) {
            return;
        }
        while (true) {
            int i2 = i;
            if (i2 >= getChildCount()) {
                return;
            }
            ((CellLayout) c(i2)).b(1.0f);
            i = i2 + 1;
        }
    }

    @Override // com.android.launcher3.dX
    protected final void X() {
        super.X();
        az();
        setLayoutTransition(null);
    }

    @Override // com.android.launcher3.dX
    protected final void Y() {
        super.Y();
        aA();
        this.ah.clear();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.ah.add(Long.valueOf(a((CellLayout) getChildAt(i))));
        }
        this.aw.m().a(this.aw, this.ah);
        ax();
    }

    public final void Z() {
        Launcher.a("Launcher.Workspace", "11683562 - stripEmptyScreens()", true);
        if (I()) {
            this.aK = true;
            return;
        }
        int iD = D();
        ArrayList<Long> arrayList = new ArrayList();
        if (a.a.a.c.d.m(getContext())) {
            for (Long l : this.ag.keySet()) {
                CellLayout cellLayout = (CellLayout) this.ag.get(l);
                if (l.longValue() >= 0 && cellLayout.q().getChildCount() == 0) {
                    arrayList.add(l);
                }
            }
        }
        int iAg = ag() + 1;
        int i = 0;
        for (Long l2 : arrayList) {
            Launcher.a("Launcher.Workspace", "11683562 -   removing id: " + l2, true);
            CellLayout cellLayout2 = (CellLayout) this.ag.get(l2);
            this.ag.remove(l2);
            this.ah.remove(l2);
            if (getChildCount() > iAg) {
                int i2 = indexOfChild(cellLayout2) < iD ? i + 1 : i;
                removeView(cellLayout2);
                i = i2;
            } else {
                this.ai = null;
                this.ag.put(-201L, cellLayout2);
                this.ah.add(-201L);
            }
        }
        if (!arrayList.isEmpty()) {
            this.aw.m().a(this.aw, this.ah);
        }
        if (i >= 0) {
            i(iD - i);
        }
    }

    public final long a(int i) {
        if (i < 0 || i >= this.ah.size()) {
            return -1L;
        }
        return ((Long) this.ah.get(i)).longValue();
    }

    public final long a(long j) {
        int iIndexOf = this.ah.indexOf(-201L);
        if (iIndexOf < 0) {
            iIndexOf = this.ah.size();
        }
        return a(j, iIndexOf);
    }

    public final long a(CellLayout cellLayout) {
        Iterator it = this.ag.keySet().iterator();
        while (it.hasNext()) {
            long jLongValue = ((Long) it.next()).longValue();
            if (this.ag.get(Long.valueOf(jLongValue)) == cellLayout) {
                return jLongValue;
            }
        }
        return -1L;
    }

    final Animator a(fU fUVar, boolean z) {
        return a(fUVar, z, 0, -1);
    }

    final Animator a(fU fUVar, boolean z, int i, int i2) {
        int iHeight;
        int integer;
        Animator animatorOfFloat;
        float f;
        float f2;
        if (this.aH == fUVar) {
            return null;
        }
        int childCount = getChildCount();
        if (this.bz != childCount) {
            this.bv = new float[childCount];
            this.bw = new float[childCount];
            this.bx = new float[childCount];
            this.by = new float[childCount];
        }
        AnimatorSet animatorSetB = z ? C0082cw.b() : null;
        fU fUVar2 = this.aH;
        boolean z2 = fUVar2 == fU.NORMAL;
        fU fUVar3 = fU.SPRING_LOADED;
        boolean z3 = fUVar2 == fU.SMALL;
        boolean z4 = fUVar2 == fU.OVERVIEW;
        this.aH = fUVar;
        ap();
        setImportantForAccessibility(this.aH == fU.NORMAL ? 1 : 4);
        boolean z5 = fUVar == fU.NORMAL;
        boolean z6 = fUVar == fU.SPRING_LOADED;
        boolean z7 = fUVar == fU.SMALL;
        boolean z8 = fUVar == fU.OVERVIEW;
        float f3 = (z6 || z8) ? 1.0f : 0.0f;
        float f4 = (z8 || z7) ? 0.0f : 1.0f;
        float f5 = z8 ? 1.0f : 0.0f;
        float f6 = !z5 ? 0.0f : 1.0f;
        if (z8) {
            Rect rectA = cB.a().i().a().a();
            int iW = w();
            int iL = (int) (this.aG * L());
            iHeight = ((((iW - this.N.top) - rectA.height()) - iL) / 2) + (-((iW - iL) / 2)) + this.N.top;
        } else {
            iHeight = 0;
        }
        float f7 = iHeight;
        boolean z9 = z2 && z7;
        boolean z10 = z3 && z5;
        boolean z11 = z2 && z8;
        boolean z12 = z4 && z5;
        this.bu = 1.0f;
        if (z4) {
            Q();
        } else if (z8) {
            P();
        }
        if (fUVar != fU.NORMAL) {
            if (z6) {
                this.bu = this.aF;
            } else if (z8) {
                this.bu = this.aG;
            } else if (z7) {
                this.bu = this.aG - 0.3f;
            }
            if (z9) {
                d(false);
            }
        }
        if (z9) {
            integer = getResources().getInteger(R.integer.config_workspaceUnshrinkTime);
        } else {
            integer = (z11 || z12) ? getResources().getInteger(R.integer.config_overviewTransitionTime) : getResources().getInteger(R.integer.config_appsCustomizeWorkspaceShrinkTime);
        }
        if (i2 == -1) {
            i2 = T();
        }
        a(i2, integer, this.bG);
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= getChildCount()) {
                break;
            }
            CellLayout cellLayout = (CellLayout) getChildAt(i4);
            boolean z13 = i4 == i2;
            float alpha = cellLayout.q().getAlpha();
            if (z7) {
                f = 0.0f;
            } else {
                f = (!z5 || !this.aT || i4 == i2 || i4 < ag()) ? 1.0f : 0.0f;
            }
            if (!this.aI && (z9 || z10)) {
                if (z10 && z13) {
                    f2 = 0.0f;
                } else if (z13) {
                    f2 = alpha;
                } else {
                    f = 0.0f;
                    f2 = 0.0f;
                }
                cellLayout.b(f2);
                alpha = f2;
            }
            this.bw[i4] = alpha;
            this.by[i4] = f;
            if (z) {
                this.bv[i4] = cellLayout.getBackgroundAlpha();
                this.bx[i4] = f3;
            } else {
                cellLayout.setBackgroundAlpha(f3);
                cellLayout.b(f);
            }
            i3 = i4 + 1;
        }
        View viewZ = this.aw.z();
        ViewGroup viewGroupJ = this.aw.j();
        Hotseat hotseatI = this.aw.i();
        boolean z14 = !a.a.a.c.d.d(getContext());
        PageIndicator pageIndicatorY = y();
        if (z) {
            animatorSetB.setDuration(integer);
            dI dIVar = new dI(this);
            dIVar.b(this.bu).c(this.bu).a(f7).setInterpolator(this.bG);
            animatorSetB.play(dIVar);
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 >= getChildCount()) {
                    break;
                }
                CellLayout cellLayout2 = (CellLayout) getChildAt(i6);
                float alpha2 = cellLayout2.q().getAlpha();
                if (this.bw[i6] == 0.0f && this.by[i6] == 0.0f) {
                    cellLayout2.setBackgroundAlpha(this.bx[i6]);
                    cellLayout2.b(this.by[i6]);
                } else {
                    if (this.bw[i6] != this.by[i6] || alpha2 != this.by[i6]) {
                        dI dIVar2 = new dI(cellLayout2.q());
                        dIVar2.d(this.by[i6]).setInterpolator(this.bG);
                        animatorSetB.play(dIVar2);
                    }
                    if (this.bv[i6] != 0.0f || this.bx[i6] != 0.0f) {
                        ValueAnimator valueAnimatorA = C0082cw.a(0.0f, 1.0f);
                        valueAnimatorA.setInterpolator(this.bG);
                        valueAnimatorA.addUpdateListener(new C0163fx(this, cellLayout2, i6));
                        animatorSetB.play(valueAnimatorA);
                    }
                }
                i5 = i6 + 1;
            }
            if (pageIndicatorY == null || !z14) {
                animatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
            } else {
                animatorOfFloat = new dI(pageIndicatorY).d(f4).a();
                animatorOfFloat.addListener(new fQ(pageIndicatorY));
            }
            dI dIVarA = new dI(hotseatI).d(f4).a();
            dIVarA.addListener(new fQ(hotseatI));
            dI dIVarA2 = new dI(viewZ).d(f6).a();
            if (!this.bF) {
                dIVarA2.addListener(new fQ(viewZ));
            }
            dI dIVarA3 = new dI(viewGroupJ).d(f5).a();
            dIVarA3.addListener(new fQ(viewGroupJ));
            if (z11) {
                animatorOfFloat.setInterpolator(new DecelerateInterpolator(2.0f));
                dIVarA.setInterpolator(new DecelerateInterpolator(2.0f));
                dIVarA3.setInterpolator(null);
            } else if (z12) {
                animatorOfFloat.setInterpolator(null);
                dIVarA.setInterpolator(null);
                dIVarA3.setInterpolator(new DecelerateInterpolator(2.0f));
            }
            dIVarA2.setInterpolator(null);
            animatorSetB.play(dIVarA3);
            animatorSetB.play(dIVarA);
            if (!this.bF) {
                animatorSetB.play(dIVarA2);
            }
            if (z14) {
                animatorSetB.play(animatorOfFloat);
            }
            animatorSetB.setStartDelay(i);
        } else {
            viewGroupJ.setAlpha(f5);
            fQ.a(viewGroupJ);
            hotseatI.setAlpha(f4);
            fQ.a(hotseatI);
            if (pageIndicatorY != null && z14) {
                pageIndicatorY.setAlpha(f4);
                fQ.a(pageIndicatorY);
            }
            if (!this.bF) {
                viewZ.setAlpha(f6);
                fQ.a(viewZ);
            }
            int i7 = this.aH == fU.NORMAL ? 0 : 4;
            if (af()) {
                ((CellLayout) this.ag.get(-301L)).setVisibility(i7);
            }
            setScaleX(this.bu);
            setScaleY(this.bu);
            setTranslationY(f7);
        }
        this.aw.c(false);
        if (z6) {
            a(getResources().getInteger(R.integer.config_appsCustomizeSpringLoadedBgAlpha) / 100.0f, false);
            return animatorSetB;
        }
        if (z8) {
            a(getResources().getInteger(R.integer.config_appsCustomizeSpringLoadedBgAlpha) / 100.0f, true);
            return animatorSetB;
        }
        a(0.0f, z);
        return animatorSetB;
    }

    public final Folder a(Object obj) {
        for (C0136ex c0136ex : aI()) {
            int childCount = c0136ex.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = c0136ex.getChildAt(i);
                if (childAt instanceof Folder) {
                    Folder folder = (Folder) childAt;
                    if (folder.e() == obj && folder.e().f198a) {
                        return folder;
                    }
                }
            }
        }
        return null;
    }

    final ArrayList a(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        a(this.aw.i().a(), arrayList2, (ArrayList) null, false);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            a((CellLayout) getChildAt(i), arrayList2, (ArrayList) null, false);
        }
        return arrayList2;
    }

    @Override // com.android.launcher3.dX
    protected final void a(float f) {
        c(f);
    }

    @Override // com.android.launcher3.dX
    public final void a(int i, boolean z) {
    }

    @Override // com.android.launcher3.aF
    public final void a(Rect rect) {
        this.aw.g().a(this, rect);
    }

    public final void a(View view) {
        this.aN = a(view, new Canvas(), 2);
    }

    final void a(View view, long j, long j2, int i, int i2, int i3, int i4) {
        a(view, j, j2, i, i2, i3, i4, false, true);
    }

    final void a(View view, long j, long j2, int i, int i2, int i3, int i4, boolean z) {
        a(view, j, j2, i, i2, i3, i4, z, false);
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final void a(View view, aH aHVar, boolean z, boolean z2) {
        if (this.bC) {
            this.bB = new fF(this, view, aHVar, z, z2);
            return;
        }
        boolean z3 = this.bB != null;
        if (!z2 || (z3 && !this.bD)) {
            if (this.aj != null) {
                CellLayout cellLayoutA = this.aw.a(view) ? this.aw.i().a() : b(this.aj.f);
                if (cellLayoutA == null && cB.p()) {
                    throw new RuntimeException("Invalid state: cellLayout == null in Workspace#onDropCompleted. Please file a bug. ");
                }
                if (cellLayoutA != null) {
                    CellLayout.b(this.aj.f93a);
                }
            }
        } else if (view != this && this.aj != null) {
            CellLayout cellLayoutB = b(this.aj.f93a);
            if (cellLayoutB != null) {
                cellLayoutB.removeView(this.aj.f93a);
            }
            if (this.aj.f93a instanceof aF) {
                this.ay.b((aF) this.aj.f93a);
            }
            a(true, (Runnable) null, 0, true);
        }
        if ((aHVar.j || (z3 && !this.bD)) && this.aj.f93a != null) {
            this.aj.f93a.setVisibility(0);
        }
        this.aN = null;
        this.aj = null;
    }

    public final void a(View view, InterfaceC0031az interfaceC0031az) {
        Bitmap bitmapCreateBitmap;
        Rect rect;
        Point point;
        int i;
        Canvas canvas = new Canvas();
        if (view instanceof TextView) {
            Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
            bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth() + 2, drawable.getIntrinsicHeight() + 2, Bitmap.Config.ARGB_8888);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth() + 2, view.getHeight() + 2, Bitmap.Config.ARGB_8888);
        }
        canvas.setBitmap(bitmapCreateBitmap);
        a(view, canvas, 2, true);
        canvas.setBitmap(null);
        int width = bitmapCreateBitmap.getWidth();
        int height = bitmapCreateBitmap.getHeight();
        float fA = this.aw.g().a(view, this.aP);
        int iRound = Math.round(this.aP[0] - ((width - (view.getWidth() * fA)) / 2.0f));
        int iRound2 = Math.round((this.aP[1] - ((height - (height * fA)) / 2.0f)) - 1.0f);
        C0017al c0017alA = cB.a().i().a();
        if ((view instanceof BubbleTextView) || (view instanceof PagedViewIcon)) {
            int i2 = c0017alA.o;
            int paddingTop = view.getPaddingTop();
            int i3 = (width - i2) / 2;
            int i4 = i3 + i2;
            int i5 = paddingTop + i2;
            Point point2 = new Point(-1, 1);
            rect = new Rect(i3, paddingTop, i4, i5);
            point = point2;
            i = iRound2 + paddingTop;
        } else if (view instanceof FolderIcon) {
            rect = new Rect(0, view.getPaddingTop(), view.getWidth(), c0017alA.w);
            point = null;
            i = iRound2;
        } else {
            rect = null;
            point = null;
            i = iRound2;
        }
        if (view instanceof BubbleTextView) {
            ((BubbleTextView) view).a();
        }
        if (view.getTag() == null || !(view.getTag() instanceof bD)) {
            throw new IllegalStateException("Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + view + "  tag: " + view.getTag());
        }
        this.ay.a(bitmapCreateBitmap, iRound, i, interfaceC0031az, view.getTag(), 0, point, rect, fA).a(interfaceC0031az.j());
        if (view.getParent() instanceof C0136ex) {
            this.ae = (C0136ex) view.getParent();
        }
        bitmapCreateBitmap.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(View view, InterfaceC0077cr interfaceC0077cr, String str) {
        if (c(-301L) < 0) {
            throw new RuntimeException("Expected custom content screen to exist");
        }
        CellLayout cellLayoutB = b(-301L);
        CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(0, 0, cellLayoutB.k(), cellLayoutB.l());
        layoutParams.j = false;
        layoutParams.i = true;
        if (view instanceof InterfaceC0058bz) {
            ((InterfaceC0058bz) view).a_(this.N);
        }
        if (view.getParent() instanceof ViewGroup) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        cellLayoutB.removeAllViews();
        cellLayoutB.a(view, 0, 0, layoutParams, true);
        this.as = str;
        this.ap = interfaceC0077cr;
    }

    final void a(L l) {
        View view = l.f93a;
        if (view.isInTouchMode()) {
            this.aj = l;
            view.setVisibility(4);
            ((CellLayout) view.getParent().getParent()).a(view);
            view.clearFocus();
            view.setPressed(false);
            this.aN = a(view, new Canvas(), 2);
            a(view, this);
        }
    }

    @Override // com.android.launcher3.dH
    public final void a(Launcher launcher, float f) {
        this.bA = f;
    }

    @Override // com.android.launcher3.dH
    public final void a(Launcher launcher, boolean z, boolean z2) {
        aC();
    }

    @Override // com.android.launcher3.aF
    public final void a(aH aHVar, PointF pointF) {
    }

    final void a(C0021ap c0021ap) {
        this.aE = new eC(this.aw);
        this.ay = c0021ap;
        d(false);
    }

    @Override // com.android.launcher3.InterfaceC0022aq
    public final void a(InterfaceC0031az interfaceC0031az, Object obj) {
        int i = 0;
        this.b = true;
        d(false);
        this.aw.E();
        Launcher launcher = this.aw;
        Launcher.u();
        while (true) {
            int i2 = i;
            if (i2 >= getChildCount()) {
                break;
            }
            ((CellLayout) getChildAt(i2)).a(1.0f);
            i = i2 + 1;
        }
        InstallShortcutReceiver.a();
        UninstallShortcutReceiver.a();
        if (a.a.a.c.d.m(getContext())) {
            post(new fI(this));
        }
    }

    public final void a(bD bDVar, CellLayout cellLayout, aA aAVar, Runnable runnable, int i, View view, boolean z) {
        float fWidth;
        float fHeight;
        Rect rect = new Rect();
        this.aw.g().b(aAVar, rect);
        int[] iArr = new int[2];
        float[] fArr = new float[2];
        boolean z2 = !(bDVar instanceof C0128ep);
        int[] iArr2 = this.ak;
        Rect rectA = a(cellLayout, iArr2[0], iArr2[1], bDVar.l, bDVar.m);
        iArr[0] = rectA.left;
        iArr[1] = rectA.top;
        aq();
        float fA = this.aw.g().a((View) cellLayout, iArr, true);
        ar();
        if (z2) {
            fWidth = (1.0f * rectA.width()) / aAVar.getMeasuredWidth();
            fHeight = (1.0f * rectA.height()) / aAVar.getMeasuredHeight();
        } else {
            fWidth = 1.0f;
            fHeight = 1.0f;
        }
        iArr[0] = (int) (iArr[0] - ((aAVar.getMeasuredWidth() - (rectA.width() * fA)) / 2.0f));
        iArr[1] = (int) (iArr[1] - ((aAVar.getMeasuredHeight() - (rectA.height() * fA)) / 2.0f));
        fArr[0] = fWidth * fA;
        fArr[1] = fHeight * fA;
        int integer = this.aw.getResources().getInteger(R.integer.config_dropAnimMaxDuration) - 200;
        if ((view instanceof AppWidgetHostView) && z) {
            Log.d("Launcher.Workspace", "6557954 Animate widget drop, final view is appWidgetHostView");
            this.aw.g().removeView(view);
        }
        if ((i == 2 || z) && view != null) {
            int[] iArrA = this.aw.h().a(bDVar.l, bDVar.m, bDVar, false);
            int visibility = view.getVisibility();
            view.setVisibility(0);
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iArrA[0], 1073741824);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iArrA[1], 1073741824);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArrA[0], iArrA[1], Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            view.layout(0, 0, iArrA[0], iArrA[1]);
            view.draw(canvas);
            canvas.setBitmap(null);
            view.setVisibility(visibility);
            aAVar.a(bitmapCreateBitmap);
            aAVar.a((int) (integer * 0.8f));
        } else if (bDVar.g == 4 && z) {
            float fMin = Math.min(fArr[0], fArr[1]);
            fArr[1] = fMin;
            fArr[0] = fMin;
        }
        DragLayer dragLayerG = this.aw.g();
        if (i == 4) {
            this.aw.g().a(aAVar, iArr, 0.0f, 0.1f, 0.1f, 0, runnable, integer);
        } else {
            dragLayerG.a(aAVar, rect.left, rect.top, iArr[0], iArr[1], 1.0f, 1.0f, 1.0f, fArr[0], fArr[1], new fE(this, view, runnable), i == 1 ? 2 : 0, integer, this);
        }
    }

    public final void a(C0127eo c0127eo, Bitmap bitmap, boolean z) {
        Canvas canvas = new Canvas();
        int[] iArrA = a(c0127eo.l, c0127eo.m, (bD) c0127eo, false);
        int i = iArrA[0];
        int i2 = iArrA[1];
        int color = getResources().getColor(R.color.outline_color);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        float fMin = Math.min((i - 2) / bitmap.getWidth(), (i2 - 2) / bitmap.getHeight());
        int width = (int) (bitmap.getWidth() * fMin);
        int height = (int) (fMin * bitmap.getHeight());
        Rect rect2 = new Rect(0, 0, width, height);
        rect2.offset((i - width) / 2, (i2 - height) / 2);
        canvas.drawBitmap(bitmap, rect, rect2, (Paint) null);
        this.aM.a(bitmapCreateBitmap, canvas, color, color, z);
        canvas.setBitmap(null);
        this.aN = bitmapCreateBitmap;
    }

    final void a(C0137ey c0137ey, CellLayout cellLayout, long j, long j2, boolean z, int i, int i2) {
        View viewA = this.aw.a(R.layout.application, cellLayout, c0137ey);
        int[] iArr = new int[2];
        cellLayout.a(iArr, 1, 1, i, i2);
        a(viewA, j, j2, iArr[0], iArr[1], 1, 1, z);
        cO.a(this.aw, c0137ey, j, j2, iArr[0], iArr[1]);
    }

    public final void a(boolean z) {
        a(false, -1, z);
    }

    public final void a(boolean z, Runnable runnable) {
        a(z, runnable, 0, false);
    }

    public final void a(boolean z, Runnable runnable, int i, boolean z2) {
        Launcher.a("Launcher.Workspace", "11683562 - removeExtraEmptyScreen()", true);
        if (a.a.a.c.d.m(getContext())) {
            if (i > 0) {
                postDelayed(new fJ(this, z, runnable, z2), i);
                return;
            }
            Launcher.a("Launcher.Workspace", "11683562 - convertFinalScreenToEmptyScreenIfNecessary()", true);
            if (!s() && this.ah.size() != 0) {
                long jLongValue = ((Long) this.ah.get(this.ah.size() - 1)).longValue();
                if (jLongValue != -301) {
                    CellLayout cellLayout = (CellLayout) this.ag.get(Long.valueOf(jLongValue));
                    if (cellLayout.q().getChildCount() == 0 && !cellLayout.f()) {
                        this.ag.remove(Long.valueOf(jLongValue));
                        this.ah.remove(Long.valueOf(jLongValue));
                        this.ag.put(-201L, cellLayout);
                        this.ah.add(-201L);
                        this.aw.m().a(this.aw, this.ah);
                        Launcher.a("Launcher.Workspace", "11683562 -   extra empty screen: " + jLongValue, true);
                    }
                }
            }
            if (s()) {
                if (D() != this.ah.indexOf(-201L)) {
                    a(0, 150, runnable, z2);
                    return;
                } else {
                    b(D() - 1, 400);
                    a(400, 150, runnable, z2);
                    return;
                }
            }
            if (z2) {
                Z();
            }
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.android.launcher3.dX
    protected final void a(int[] iArr) {
        int iAg = ag();
        int childCount = getChildCount() - 1;
        iArr[0] = Math.max(0, Math.min(iAg, getChildCount() - 1));
        iArr[1] = Math.max(0, childCount);
    }

    @Override // com.android.launcher3.InterfaceC0030ay
    public final boolean a(int i, int i2, int i3) {
        boolean z = !(getContext().getResources().getConfiguration().orientation == 2);
        if (this.aw.i() != null && z) {
            Rect rect = new Rect();
            this.aw.i().getHitRect(rect);
            if (rect.contains(i, i2)) {
                return false;
            }
        }
        if (aj() || this.aI || k() != null) {
            return false;
        }
        this.aL = true;
        int iD = (i3 == 0 ? -1 : 1) + D();
        c((CellLayout) null);
        if (iD < 0 || iD >= getChildCount() || a(iD) == -301) {
            return false;
        }
        d((CellLayout) getChildAt(iD));
        invalidate();
        return true;
    }

    final boolean a(View view, long j, CellLayout cellLayout, int[] iArr, float f, boolean z, aA aAVar, Runnable runnable) {
        if (f > this.bi) {
            return false;
        }
        View viewE = cellLayout.e(iArr[0], iArr[1]);
        boolean z2 = false;
        if (this.aj != null) {
            z2 = this.aj.b == iArr[0] && this.aj.c == iArr[1] && b(this.aj.f93a) == cellLayout;
        }
        if (viewE == null || z2 || !this.bf) {
            return false;
        }
        this.bf = false;
        long jA = iArr == null ? this.aj.f : a(cellLayout);
        boolean z3 = viewE.getTag() instanceof C0137ey;
        boolean z4 = view.getTag() instanceof C0137ey;
        if (!z3 || !z4) {
            return false;
        }
        C0137ey c0137ey = (C0137ey) view.getTag();
        C0137ey c0137ey2 = (C0137ey) viewE.getTag();
        if (!z) {
            b(this.aj.f93a).removeView(this.aj.f93a);
        }
        Rect rect = new Rect();
        float fA = this.aw.g().a(viewE, rect);
        cellLayout.removeView(viewE);
        FolderIcon folderIconA = this.aw.a(cellLayout, j, jA, iArr[0], iArr[1]);
        c0137ey2.j = -1;
        c0137ey2.k = -1;
        c0137ey.j = -1;
        c0137ey.k = -1;
        if (aAVar != null) {
            folderIconA.a(c0137ey2, viewE, c0137ey, aAVar, rect, fA, runnable);
        } else {
            folderIconA.a(c0137ey2);
            folderIconA.a(c0137ey);
        }
        return true;
    }

    final boolean a(CellLayout cellLayout, int[] iArr, float f, aH aHVar, boolean z) {
        if (f > this.bi) {
            return false;
        }
        View viewE = cellLayout.e(iArr[0], iArr[1]);
        if (!this.bg) {
            return false;
        }
        this.bg = false;
        if (viewE instanceof FolderIcon) {
            FolderIcon folderIcon = (FolderIcon) viewE;
            if (folderIcon.a(aHVar.g)) {
                folderIcon.a(aHVar);
                if (!z) {
                    b(this.aj.f93a).removeView(this.aj.f93a);
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.android.launcher3.aF
    public final boolean a(aH aHVar) {
        int i;
        int i2;
        int i3;
        int i4;
        CellLayout cellLayout = this.av;
        if (aHVar.h != this) {
            if (cellLayout == null) {
                return false;
            }
            if (!((!this.aI || this.bA > 0.5f) && this.aH != fU.SMALL)) {
                return false;
            }
            this.aB = a(aHVar.f126a, aHVar.b, aHVar.c, aHVar.d, aHVar.f, this.aB);
            if (this.aw.a(cellLayout)) {
                a(this.aw.i(), this.aB);
            } else {
                a(cellLayout, this.aB);
            }
            if (this.aj != null) {
                L l = this.aj;
                int i5 = l.d;
                i = l.e;
                i2 = i5;
            } else {
                bD bDVar = (bD) aHVar.g;
                int i6 = bDVar.l;
                i = bDVar.m;
                i2 = i6;
            }
            if (aHVar.g instanceof C0129eq) {
                i4 = ((C0129eq) aHVar.g).n;
                i3 = ((C0129eq) aHVar.g).o;
            } else {
                i3 = i;
                i4 = i2;
            }
            this.ak = a((int) this.aB[0], (int) this.aB[1], i4, i3, cellLayout, this.ak);
            float fA = cellLayout.a(this.aB[0], this.aB[1], this.ak);
            if (a((bD) aHVar.g, cellLayout, this.ak, fA, true) || a((bD) aHVar.g, cellLayout, this.ak, fA)) {
                return true;
            }
            this.ak = cellLayout.a((int) this.aB[0], (int) this.aB[1], i4, i3, i2, i, (View) null, this.ak, new int[2], 4);
            if (!(this.ak[0] >= 0 && this.ak[1] >= 0)) {
                boolean zA = this.aw.a(cellLayout);
                if (this.ak != null && zA) {
                    Hotseat hotseatI = this.aw.i();
                    if (hotseatI.c(hotseatI.a(this.ak[0], this.ak[1]))) {
                        return false;
                    }
                }
                this.aw.a(zA);
                return false;
            }
        }
        if (a(cellLayout) == -201) {
            Launcher.a("Launcher.Workspace", "11683562 - commitExtraEmptyScreen()", true);
            int iC = c(-201L);
            CellLayout cellLayout2 = (CellLayout) this.ag.get(-201L);
            this.ag.remove(-201L);
            this.ah.remove((Object) (-201L));
            long jC = cB.h().c();
            this.ag.put(Long.valueOf(jC), cellLayout2);
            this.ah.add(Long.valueOf(jC));
            if (y() != null) {
                y().a(iC, h(iC));
            }
            this.aw.m().a(this.aw, this.ah);
        }
        return true;
    }

    public final int[] a(int i, int i2, bD bDVar, boolean z) {
        int[] iArr = new int[2];
        if (getChildCount() <= 0) {
            iArr[0] = Integer.MAX_VALUE;
            iArr[1] = Integer.MAX_VALUE;
            return iArr;
        }
        Rect rectA = a((CellLayout) getChildAt(ag()), 0, 0, i, i2);
        iArr[0] = rectA.width();
        iArr[1] = rectA.height();
        if (z) {
            iArr[0] = (int) (iArr[0] * this.aF);
            iArr[1] = (int) (iArr[1] * this.aF);
        }
        return iArr;
    }

    @Override // com.android.launcher3.InterfaceC0058bz
    public final void a_(Rect rect) {
        this.N.set(rect);
        CellLayout cellLayoutB = b(-301L);
        if (cellLayoutB != null) {
            KeyEvent.Callback childAt = cellLayoutB.q().getChildAt(0);
            if (childAt instanceof InterfaceC0058bz) {
                ((InterfaceC0058bz) childAt).a_(this.N);
            }
        }
    }

    public final boolean aa() {
        return this.aI;
    }

    public final boolean ab() {
        return !this.aI || this.bA > 0.5f;
    }

    protected final void ac() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            C0136ex c0136exQ = cellLayout.q();
            int childCount2 = c0136exQ.getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                View childAt = c0136exQ.getChildAt(i2);
                if (childAt.getTag() instanceof cF) {
                    cF cFVar = (cF) childAt.getTag();
                    cE cEVar = (cE) cFVar.e;
                    if (cEVar != null && cEVar.b()) {
                        this.aw.a(cFVar);
                        cellLayout.removeView(cEVar);
                        this.aw.b(cFVar);
                    }
                }
            }
        }
    }

    protected final InterfaceC0077cr ad() {
        return this.ap;
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i, int i2) {
        if (this.aw.w()) {
            return;
        }
        Folder folderK = k();
        if (folderK != null) {
            folderK.addFocusables(arrayList, i);
        } else {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public final void ae() {
        if (this.J || l()) {
            return;
        }
        o(this.i);
    }

    public final boolean af() {
        return this.ah.size() > 0 && ((Long) this.ah.get(0)).longValue() == -301;
    }

    public final int ag() {
        return af() ? 1 : 0;
    }

    public final boolean ah() {
        return af() && D() == 1;
    }

    protected final void ai() {
        View.OnClickListener onClickListenerV;
        if (y() != null && (onClickListenerV = v()) != null) {
            y().setOnClickListener(onClickListenerV);
        }
        af = ((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled();
        if (cB.a().n()) {
            ay();
        }
        this.aU = this.aa.getWallpaperInfo() != null;
        this.aW = 0.0f;
    }

    public final boolean aj() {
        return this.aH == fU.SMALL || this.aH == fU.SPRING_LOADED || this.aH == fU.OVERVIEW;
    }

    public final void ak() {
        d(true);
        if (getWindowToken() != null) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ((CellLayout) getChildAt(i)).d();
            }
        }
        d(false);
    }

    public final void al() {
        this.aw.g().a();
    }

    public final boolean am() {
        return this.aH == fU.OVERVIEW;
    }

    public final boolean an() {
        if (this.p != 0) {
            return false;
        }
        a(true, -1, true);
        return true;
    }

    final boolean ao() {
        return !ah() && this.aH == fU.NORMAL;
    }

    public final void ap() {
        if (this.aH != fU.NORMAL) {
            Launcher launcher = this.aw;
            Launcher.u();
        } else {
            Launcher launcher2 = this.aw;
            Launcher.t();
        }
    }

    public final void aq() {
        if (this.aI) {
            this.bt = getScaleX();
            setScaleX(this.bu);
            setScaleY(this.bu);
        }
    }

    public final void ar() {
        if (this.aI) {
            setScaleX(this.bt);
            setScaleY(this.bt);
        }
    }

    public final int as() {
        return D() - ag();
    }

    public final void at() {
        this.bC = true;
    }

    public final void au() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (!this.bp.contains(Integer.valueOf(i))) {
                t(i);
            }
        }
        this.bp.clear();
        this.bo = null;
    }

    final void av() {
        for (C0136ex c0136ex : aI()) {
            int childCount = c0136ex.getChildCount();
            for (int i = 0; i < childCount; i++) {
                KeyEvent.Callback childAt = c0136ex.getChildAt(i);
                if (childAt instanceof aF) {
                    this.ay.b((aF) childAt);
                }
            }
        }
    }

    public final View b(Object obj) {
        for (C0136ex c0136ex : aI()) {
            int childCount = c0136ex.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = c0136ex.getChildAt(i);
                if (childAt.getTag() == obj) {
                    return childAt;
                }
            }
        }
        return null;
    }

    public final CellLayout b(long j) {
        return (CellLayout) this.ag.get(Long.valueOf(j));
    }

    final CellLayout b(View view) {
        for (CellLayout cellLayout : aH()) {
            if (cellLayout.q().indexOfChild(view) >= 0) {
                return cellLayout;
            }
        }
        return null;
    }

    public final void b(int i) {
        CellLayout cellLayout = (CellLayout) getChildAt(i);
        if (cellLayout != null) {
            this.bq = getScrollX();
            this.bs = cellLayout.getTranslationX();
            this.br = cellLayout.getRotationY();
            setScrollX(m(i));
            cellLayout.setTranslationX(0.0f);
            cellLayout.setRotationY(0.0f);
        }
    }

    @Override // com.android.launcher3.dX
    protected final void b(MotionEvent motionEvent) {
        boolean z = true;
        if (ab()) {
            float x = motionEvent.getX() - this.bj;
            float fAbs = Math.abs(x);
            float fAbs2 = Math.abs(motionEvent.getY() - this.bk);
            if (Float.compare(fAbs, 0.0f) != 0) {
                float fAtan = (float) Math.atan(fAbs2 / fAbs);
                if (fAbs > this.r || fAbs2 > this.r) {
                    O();
                }
                boolean z2 = this.V - this.W > 200;
                if (z()) {
                    if (x >= 0.0f) {
                        z = false;
                    }
                } else if (x <= 0.0f) {
                    z = false;
                }
                if (!(z && a(C()) == -301 && z2) && fAtan <= 1.0471976f) {
                    if (fAtan > 0.5235988f) {
                        super.a(motionEvent, (((float) Math.sqrt((fAtan - 0.5235988f) / 0.5235988f)) * 4.0f) + 1.0f);
                    } else {
                        super.b(motionEvent);
                    }
                }
            }
        }
    }

    final void b(CellLayout cellLayout) {
        int i;
        int childCount = cellLayout.q().getChildCount();
        long jA = a(cellLayout);
        if (this.aw.a(cellLayout)) {
            jA = -1;
            i = -101;
        } else {
            i = -100;
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            bD bDVar = (bD) cellLayout.q().getChildAt(i2).getTag();
            if (bDVar != null && bDVar.p) {
                bDVar.p = false;
                cO.a(this.aw, bDVar, i, jA, bDVar.j, bDVar.k, bDVar.l, bDVar.m);
            }
        }
    }

    @Override // com.android.launcher3.dH
    public final void b(Launcher launcher, boolean z, boolean z2) {
    }

    /* JADX WARN: Code duplicated, block: B:173:0x062c  */
    /* JADX WARN: Code duplicated, block: B:178:0x0641  */
    @Override // com.android.launcher3.aF
    public final void b(aH aHVar) {
        boolean z;
        int i;
        fz fzVar;
        bD bDVar;
        View viewA;
        boolean z2;
        this.aB = a(aHVar.f126a, aHVar.b, aHVar.c, aHVar.d, aHVar.f, this.aB);
        CellLayout cellLayout = this.av;
        if (cellLayout != null) {
            if (this.aw.a(cellLayout)) {
                a(this.aw.i(), this.aB);
            } else {
                a(cellLayout, this.aB);
            }
        }
        int iC = -1;
        if (aHVar.h != this) {
            int[] iArr = {(int) this.aB[0], (int) this.aB[1]};
            Object obj = aHVar.g;
            fB fBVar = new fB(this);
            bD bDVar2 = (bD) obj;
            int i2 = bDVar2.l;
            int i3 = bDVar2.m;
            if (this.aj != null) {
                i2 = this.aj.d;
                i3 = this.aj.e;
            }
            long j = this.aw.a(cellLayout) ? -101 : -100;
            long jA = a(cellLayout);
            if (!this.aw.a(cellLayout) && jA != a(this.i) && this.aH != fU.SPRING_LOADED) {
                int iC2 = c(jA);
                if (this.aY != null) {
                    this.aY.run();
                }
                this.aY = null;
                b(iC2, 950);
            }
            if (!(bDVar2 instanceof C0127eo)) {
                switch (bDVar2.g) {
                    case 0:
                    case 1:
                        bD c0137ey = (bDVar2.h == -1 && (bDVar2 instanceof C0086d)) ? new C0137ey((C0086d) bDVar2) : bDVar2;
                        bDVar = c0137ey;
                        viewA = this.aw.a(R.layout.application, cellLayout, (C0137ey) c0137ey);
                        break;
                    case 2:
                        C0055bw c0055bw = this.ax;
                        bDVar = bDVar2;
                        viewA = FolderIcon.a(R.layout.folder_icon, this.aw, cellLayout, (C0043bk) bDVar2);
                        break;
                    default:
                        throw new IllegalStateException("Unknown item type: " + bDVar2.g);
                }
                if (iArr != null) {
                    this.ak = a(iArr[0], iArr[1], i2, i3, cellLayout, this.ak);
                    float fA = cellLayout.a(this.aB[0], this.aB[1], this.ak);
                    aHVar.i = fBVar;
                    if (a(viewA, j, cellLayout, this.ak, fA, true, aHVar.f, aHVar.i) || a(cellLayout, this.ak, fA, aHVar, true)) {
                        return;
                    }
                }
                if (iArr != null) {
                    this.ak = cellLayout.a((int) this.aB[0], (int) this.aB[1], 1, 1, 1, 1, (View) null, this.ak, (int[]) null, 3);
                } else {
                    cellLayout.a(this.ak, 1, 1);
                }
                a(viewA, j, jA, this.ak[0], this.ak[1], bDVar.l, bDVar.m, false);
                CellLayout.b(viewA);
                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) viewA.getLayoutParams();
                cellLayout.q().a(viewA);
                cO.a(this.aw, bDVar, j, jA, layoutParams.f74a, layoutParams.b);
                if (aHVar.f != null) {
                    aq();
                    this.aw.g().a(aHVar.f, viewA, fBVar, this);
                    ar();
                    return;
                }
                return;
            }
            C0127eo c0127eo = (C0127eo) obj;
            if (c0127eo.g == 1) {
                this.ak = a(iArr[0], iArr[1], i2, i3, cellLayout, this.ak);
                float fA2 = cellLayout.a(this.aB[0], this.aB[1], this.ak);
                if (a((bD) aHVar.g, cellLayout, this.ak, fA2, true) || a((bD) aHVar.g, cellLayout, this.ak, fA2)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = true;
            }
            bD bDVar3 = (bD) aHVar.g;
            boolean z3 = false;
            if (z2) {
                int i4 = bDVar3.l;
                int i5 = bDVar3.m;
                if (bDVar3.n > 0 && bDVar3.o > 0) {
                    i4 = bDVar3.n;
                    i5 = bDVar3.o;
                }
                int[] iArr2 = new int[2];
                this.ak = cellLayout.a((int) this.aB[0], (int) this.aB[1], i4, i5, bDVar2.l, bDVar2.m, (View) null, this.ak, iArr2, 3);
                boolean z4 = (iArr2[0] == bDVar3.l && iArr2[1] == bDVar3.m) ? false : true;
                bDVar3.l = iArr2[0];
                bDVar3.m = iArr2[1];
                z3 = z4;
            }
            fD fDVar = new fD(this, c0127eo, bDVar3, j, jA);
            AppWidgetHostView appWidgetHostView = c0127eo.g == 4 ? ((C0129eq) c0127eo).t : null;
            if ((appWidgetHostView instanceof AppWidgetHostView) && z3) {
                C0112e.a(appWidgetHostView, this.aw, bDVar3.l, bDVar3.m);
            }
            int i6 = 0;
            if (c0127eo.g == 4 && ((C0129eq) c0127eo).s.configure != null) {
                i6 = 1;
            }
            a(bDVar2, cellLayout, aHVar.f, (Runnable) fDVar, i6, (View) appWidgetHostView, true);
            return;
        }
        if (this.aj != null) {
            View view = this.aj.f93a;
            fz fzVar2 = null;
            if (cellLayout == null || aHVar.j) {
                z = false;
                i = -1;
            } else {
                boolean z5 = b(view) != cellLayout;
                boolean zA = this.aw.a(cellLayout);
                long j2 = zA ? -101 : -100;
                long jA2 = this.ak[0] < 0 ? this.aj.f : a(cellLayout);
                int i7 = this.aj != null ? this.aj.d : 1;
                int i8 = this.aj != null ? this.aj.e : 1;
                this.ak = a((int) this.aB[0], (int) this.aB[1], i7, i8, cellLayout, this.ak);
                float fA3 = cellLayout.a(this.aB[0], this.aB[1], this.ak);
                if (!this.aL && a(view, j2, cellLayout, this.ak, fA3, false, aHVar.f, (Runnable) null)) {
                    a(true, (Runnable) null, 0, true);
                    return;
                }
                if (a(cellLayout, this.ak, fA3, aHVar, false)) {
                    a(true, (Runnable) null, 0, true);
                    return;
                }
                bD bDVar4 = (bD) aHVar.g;
                int i9 = bDVar4.l;
                int i10 = bDVar4.m;
                if (bDVar4.n > 0 && bDVar4.o > 0) {
                    i9 = bDVar4.n;
                    i10 = bDVar4.o;
                }
                int[] iArr3 = new int[2];
                this.ak = cellLayout.a((int) this.aB[0], (int) this.aB[1], i9, i10, i7, i8, view, this.ak, iArr3, 2);
                boolean z6 = this.ak[0] >= 0 && this.ak[1] >= 0;
                if (z6 && (view instanceof AppWidgetHostView) && (iArr3[0] != bDVar4.l || iArr3[1] != bDVar4.m)) {
                    bDVar4.l = iArr3[0];
                    bDVar4.m = iArr3[1];
                    C0112e.a((AppWidgetHostView) view, this.aw, iArr3[0], iArr3[1]);
                    z = true;
                } else {
                    z = false;
                }
                if (a(this.i) != jA2 && !zA) {
                    iC = c(jA2);
                    o(iC);
                }
                int i11 = iC;
                if (z6) {
                    bD bDVar5 = (bD) view.getTag();
                    if (z5) {
                        b(view).removeView(view);
                        a(view, j2, jA2, this.ak[0], this.ak[1], bDVar5.l, bDVar5.m, false, false);
                    }
                    CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) view.getLayoutParams();
                    int i12 = this.ak[0];
                    layoutParams2.c = i12;
                    layoutParams2.f74a = i12;
                    int i13 = this.ak[1];
                    layoutParams2.d = i13;
                    layoutParams2.b = i13;
                    layoutParams2.f = bDVar4.l;
                    layoutParams2.g = bDVar4.m;
                    layoutParams2.h = true;
                    if (j2 == -101 || !(view instanceof cE)) {
                        fzVar = null;
                    } else {
                        cE cEVar = (cE) view;
                        AppWidgetProviderInfo appWidgetInfo = cEVar.getAppWidgetInfo();
                        appWidgetInfo.resizeMode = 3;
                        if (appWidgetInfo == null || appWidgetInfo.resizeMode == 0) {
                            fzVar = null;
                        } else {
                            fzVar = new fz(this, new RunnableC0164fy(this, bDVar5, cEVar, cellLayout));
                        }
                    }
                    cO.a(this.aw, bDVar5, j2, jA2, layoutParams2.f74a, layoutParams2.b, bDVar4.l, bDVar4.m);
                    fzVar2 = fzVar;
                    i = i11;
                } else {
                    CellLayout.LayoutParams layoutParams3 = (CellLayout.LayoutParams) view.getLayoutParams();
                    this.ak[0] = layoutParams3.f74a;
                    this.ak[1] = layoutParams3.b;
                    ((CellLayout) view.getParent().getParent()).c(view);
                    i = i11;
                }
            }
            CellLayout cellLayout2 = (CellLayout) view.getParent().getParent();
            fA fAVar = new fA(this, fzVar2);
            this.f116a = true;
            if (aHVar.f.g()) {
                bD bDVar6 = (bD) view.getTag();
                if (bDVar6.g == 4) {
                    a(bDVar6, cellLayout2, aHVar.f, (Runnable) fAVar, z ? 2 : 0, view, false);
                } else {
                    this.aw.g().a(aHVar.f, view, i < 0 ? -1 : 300, fAVar, this);
                }
            } else {
                aHVar.k = false;
                view.setVisibility(0);
            }
            CellLayout.b(view);
        }
    }

    final void b(ArrayList arrayList) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(arrayList);
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        Iterator it = aH().iterator();
        while (it.hasNext()) {
            C0136ex c0136exQ = ((CellLayout) it.next()).q();
            int childCount = c0136exQ.getChildCount();
            for (int i = 0; i < childCount; i++) {
                hashSet2.add((bD) c0136exQ.getChildAt(i).getTag());
            }
        }
        cO.a(hashSet2, new fG(this, hashSet, hashSet3));
        a(hashSet3);
    }

    public final void b(boolean z) {
        this.bC = false;
        this.bD = z;
        if (this.bB != null) {
            this.bB.run();
        }
    }

    @Override // com.android.launcher3.aF
    public final boolean b() {
        return true;
    }

    public final int c(long j) {
        return indexOfChild((View) this.ag.get(Long.valueOf(j)));
    }

    @Override // com.android.launcher3.InterfaceC0022aq
    public final void c() {
        this.b = false;
        d(false);
        this.aw.e(false);
        InstallShortcutReceiver.a(getContext());
        UninstallShortcutReceiver.a(getContext());
        this.ae = null;
        Launcher launcher = this.aw;
        Launcher.t();
    }

    @Override // com.android.launcher3.dH
    public final void c(Launcher launcher, boolean z, boolean z2) {
        aD();
    }

    @Override // com.android.launcher3.aF
    public final void c(aH aHVar) {
        this.bh.a();
        this.bf = false;
        this.bg = false;
        this.av = null;
        CellLayout cellLayoutAG = aG();
        c(cellLayoutAG);
        d(cellLayoutAG);
        if (cB.a().j()) {
            az();
        }
    }

    final void c(ArrayList arrayList) {
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            hashSet.add(((C0086d) it.next()).d);
        }
        a(hashSet);
    }

    final void c(boolean z) {
        switch (aJ()[a.a.a.c.d.h(getContext()).ordinal()]) {
            case 2:
                e(this.aw.a() ? 1 : 0, true);
                break;
            case 3:
                int childCount = getChildCount() - 1;
                if (this.aw.a()) {
                    childCount++;
                }
                e(childCount > 0 ? (int) Math.floor(childCount / 2) : 0, true);
                break;
            case 4:
                e(getChildCount() - 1, true);
                break;
        }
    }

    @Override // com.android.launcher3.AbstractC0138ez, com.android.launcher3.dX, android.view.View
    public void computeScroll() {
        super.computeScroll();
        this.c.a();
    }

    @Override // com.android.launcher3.dX, com.android.launcher3.InterfaceC0030ay
    public final void d() {
        if (!aj() && !this.aI) {
            super.d();
        }
        Folder folderK = k();
        if (folderK != null) {
            folderK.l();
        }
    }

    public final void d(int i, boolean z) {
        a(false, i, z);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0394  */
    @Override // com.android.launcher3.aF
    public final void d(aH aHVar) {
        CellLayout cellLayoutA;
        if (this.aL || this.aI || this.aH == fU.SMALL) {
            return;
        }
        Rect rect = new Rect();
        bD bDVar = (bD) aHVar.g;
        if (bDVar.l < 0 || bDVar.m < 0) {
            throw new RuntimeException("Improper spans found");
        }
        this.aB = a(aHVar.f126a, aHVar.b, aHVar.c, aHVar.d, aHVar.f, this.aB);
        View view = this.aj == null ? null : this.aj.f93a;
        if (aj()) {
            if (this.aw.i() == null) {
                cellLayoutA = null;
            } else {
                if ((aHVar.h != this && f(aHVar)) || !a(aHVar.f126a, aHVar.b, rect)) {
                    cellLayoutA = null;
                } else {
                    cellLayoutA = this.aw.i().a();
                }
            }
            if (cellLayoutA == null) {
                aA aAVar = aHVar.f;
                cellLayoutA = a(aHVar.f126a, aHVar.b, false);
            }
            if (cellLayoutA != this.at) {
                c(cellLayoutA);
                d(cellLayoutA);
                if (this.aH == fU.SPRING_LOADED) {
                    if (this.aw.a(cellLayoutA)) {
                        this.aE.f305a.a();
                    } else {
                        this.aE.a(this.at);
                    }
                }
            }
        } else {
            CellLayout cellLayoutA2 = (this.aw.i() == null || f(aHVar) || !a(aHVar.f126a, aHVar.b, rect)) ? null : this.aw.i().a();
            if (cellLayoutA2 == null) {
                cellLayoutA2 = aG();
            }
            if (cellLayoutA2 != this.at) {
                c(cellLayoutA2);
                d(cellLayoutA2);
            }
        }
        if (this.at != null) {
            if (this.aw.a(this.at)) {
                a(this.aw.i(), this.aB);
            } else {
                a(this.at, this.aB);
            }
            bD bDVar2 = (bD) aHVar.g;
            int i = bDVar.l;
            int i2 = bDVar.m;
            if (bDVar.n > 0 && bDVar.o > 0) {
                i = bDVar.n;
                i2 = bDVar.o;
            }
            this.ak = a((int) this.aB[0], (int) this.aB[1], i, i2, this.at, this.ak);
            int i3 = this.ak[0];
            int i4 = this.ak[1];
            d(this.ak[0], this.ak[1]);
            float fA = this.at.a(this.aB[0], this.aB[1], this.ak);
            View viewE = this.at.e(this.ak[0], this.ak[1]);
            CellLayout cellLayout = this.at;
            int[] iArr = this.ak;
            boolean zA = a(bDVar2, cellLayout, iArr, fA, false);
            if (this.bl == 0 && zA && !this.bb.b()) {
                this.bb.a(new fR(this, cellLayout, iArr[0], iArr[1]));
                this.bb.a(0L);
            } else {
                boolean zA2 = a(bDVar2, cellLayout, iArr, fA);
                if (zA2 && this.bl == 0) {
                    this.be = (FolderIcon) viewE;
                    this.be.b(bDVar2);
                    if (cellLayout != null) {
                        cellLayout.r();
                    }
                    s(2);
                } else {
                    if (this.bl == 2 && !zA2) {
                        s(0);
                    }
                    if (this.bl == 1 && !zA) {
                        s(0);
                    }
                }
            }
            boolean zA3 = this.at.a((int) this.aB[0], (int) this.aB[1], bDVar.l, bDVar.m, view, this.ak);
            if (!zA3) {
                CellLayout cellLayout2 = this.at;
                Bitmap bitmap = this.aN;
                float[] fArr = this.aB;
                float[] fArr2 = this.aB;
                cellLayout2.a(view, bitmap, this.ak[0], this.ak[1], bDVar.l, bDVar.m, false, aHVar.f.c(), aHVar.f.d());
            } else if ((this.bl == 0 || this.bl == 3) && !this.bc.b() && (this.bm != i3 || this.bn != i4)) {
                this.at.a((int) this.aB[0], (int) this.aB[1], i, i2, bDVar.l, bDVar.m, view, this.ak, new int[2], 0);
                this.bc.a(new fT(this, this.aB, i, i2, bDVar.l, bDVar.m, aHVar.f, view));
                this.bc.a(350L);
            }
            if ((this.bl == 1 || this.bl == 2 || !zA3) && this.at != null) {
                this.at.s();
            }
        }
    }

    final void d(ArrayList arrayList) {
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0086d c0086d = (C0086d) it.next();
            map.put(c0086d.d, c0086d);
        }
        for (C0136ex c0136ex : aI()) {
            new HashMap();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < c0136ex.getChildCount()) {
                    View childAt = c0136ex.getChildAt(i2);
                    bD bDVar = (bD) childAt.getTag();
                    if ((bDVar instanceof C0043bk) && (childAt instanceof FolderIcon)) {
                        FolderIcon folderIcon = (FolderIcon) childAt;
                        for (View view : folderIcon.a().u()) {
                            a(map, (bD) view.getTag(), view);
                        }
                        folderIcon.invalidate();
                    } else if (bDVar instanceof C0137ey) {
                        a(map, bDVar, childAt);
                    }
                    i = i2 + 1;
                }
            }
        }
    }

    @Override // com.android.launcher3.dX
    protected final boolean d(View view) {
        CellLayout cellLayout = (CellLayout) view;
        return super.d(view) && (this.aI || cellLayout.q().getAlpha() > 0.0f || cellLayout.getBackgroundAlpha() > 0.0f);
    }

    @Override // com.android.launcher3.dX, com.android.launcher3.InterfaceC0030ay
    public final void d_() {
        if (!aj() && !this.aI) {
            super.d_();
        }
        Folder folderK = k();
        if (folderK != null) {
            folderK.l();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.bo = sparseArray;
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        if (aj() || !ab()) {
            return false;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    @Override // com.android.launcher3.dX
    protected final void e(int i) {
        float fMax;
        float f;
        boolean z = z();
        super.e(i);
        boolean z2 = this.C < 0 || this.C > this.l;
        if (this.aT && this.aH == fU.NORMAL && !this.aI && !z2) {
            int iAg = ag();
            while (true) {
                int i2 = iAg;
                if (i2 >= getChildCount()) {
                    break;
                }
                CellLayout cellLayout = (CellLayout) getChildAt(i2);
                if (cellLayout != null) {
                    cellLayout.q().setAlpha(1.0f - Math.abs(a(i, cellLayout, i2)));
                }
                iAg = i2 + 1;
            }
        }
        if (af()) {
            int iIndexOf = this.ah.indexOf(-301L);
            int scrollX = (getScrollX() - m(iIndexOf)) - n(iIndexOf);
            float fM = m(iIndexOf + 1) - m(iIndexOf);
            float f2 = fM - scrollX;
            float f3 = f2 / fM;
            float fMin = z() ? Math.min(0.0f, f2) : Math.max(0.0f, f2);
            fMax = Math.max(0.0f, f3);
            f = fMin;
        } else {
            fMax = 0.0f;
            f = 0.0f;
        }
        if (Float.compare(fMax, this.ar) != 0) {
            CellLayout cellLayout2 = (CellLayout) this.ag.get(-301L);
            if (fMax > 0.0f && cellLayout2.getVisibility() != 0 && !aj()) {
                cellLayout2.setVisibility(0);
            }
            this.ar = fMax;
            setBackgroundAlpha(0.8f * fMax);
            if (this.aw.i() != null) {
                this.aw.i().setTranslationX(f);
            }
            if (y() != null) {
                y().setTranslationX(f);
            }
            if (this.ap != null) {
                InterfaceC0077cr interfaceC0077cr = this.ap;
            }
        }
        aB();
        if (!((this.C < 0 && (!af() || z())) || (this.C > this.l && !(af() && z())))) {
            if (!this.aR || getChildCount() <= 0) {
                return;
            }
            this.aR = false;
            ((CellLayout) getChildAt(0)).i();
            ((CellLayout) getChildAt(getChildCount() - 1)).i();
            return;
        }
        int childCount = getChildCount() - 1;
        boolean z3 = this.C < 0;
        int i3 = ((z || !z3) && (!z || z3)) ? childCount : 0;
        float f4 = z3 ? 0.75f : 0.25f;
        CellLayout cellLayout3 = (CellLayout) getChildAt(i3);
        float fA = a(i, cellLayout3, i3);
        cellLayout3.a(Math.abs(fA), z3);
        cellLayout3.setRotationY(fA * (-24.0f));
        if (this.aR && Float.compare(this.aS, f4) == 0) {
            return;
        }
        this.aR = true;
        this.aS = f4;
        cellLayout3.setCameraDistance(this.e * this.ba);
        cellLayout3.setPivotX(f4 * cellLayout3.getMeasuredWidth());
        cellLayout3.setPivotY(cellLayout3.getMeasuredHeight() * 0.5f);
        cellLayout3.e(true);
    }

    public final void e(int i, boolean z) {
        Log.d("KLP", "Moving to screen " + i);
        if (!aj()) {
            if (z) {
                o(i);
            } else {
                i(i);
            }
        }
        View childAt = getChildAt(i);
        if (childAt != null) {
            childAt.requestFocus();
        }
    }

    @Override // com.android.launcher3.aF
    public final void e(aH aHVar) {
        this.bh.b();
        if (!this.aL) {
            this.av = this.at;
        } else if (I()) {
            this.av = (CellLayout) c(D());
        } else {
            this.av = this.au;
        }
        if (this.bl == 1) {
            this.bf = true;
        } else if (this.bl == 2) {
            this.bg = true;
        }
        d((CellLayout) null);
        this.aL = false;
        c((CellLayout) null);
        d((CellLayout) null);
        this.aE.f305a.a();
        if (this.J) {
            return;
        }
        aA();
    }

    @Override // com.android.launcher3.InterfaceC0030ay
    public final boolean e() {
        if (!this.aL) {
            return false;
        }
        invalidate();
        CellLayout cellLayoutAG = aG();
        c(cellLayoutAG);
        d(cellLayoutAG);
        this.aL = false;
        return true;
    }

    @Override // com.android.launcher3.dH
    public final View f() {
        return this;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final void g() {
    }

    public float getBackgroundAlpha() {
        return this.U;
    }

    public float getChildrenOutlineAlpha() {
        return this.Q;
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        if (aj()) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }

    @Override // com.android.launcher3.dX
    protected final dW h(int i) {
        return (a(i) != -201 || this.ah.size() - ag() <= 1) ? super.h(i) : new dW(R.drawable.ic_pageindicator_current, R.drawable.ic_pageindicator_add);
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final boolean h() {
        return false;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final boolean i() {
        return true;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final float j() {
        return 1.0f;
    }

    final Folder k() {
        DragLayer dragLayerG = this.aw.g();
        int childCount = dragLayerG.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = dragLayerG.getChildAt(i);
            if (childAt instanceof Folder) {
                Folder folder = (Folder) childAt;
                if (folder.e().f198a) {
                    return folder;
                }
            }
        }
        return null;
    }

    final boolean l() {
        return this.p != 0;
    }

    @Override // com.android.launcher3.dX
    public final void m() {
    }

    public final void n() {
        setLayoutTransition(null);
        if (af()) {
            CellLayout cellLayoutB = b(-301L);
            if (cellLayoutB == null) {
                throw new RuntimeException("Expected custom content screen to exist");
            }
            this.ag.remove(-301L);
            this.ah.remove((Object) (-301L));
            removeView(cellLayoutB);
            if (this.ap != null) {
                InterfaceC0077cr interfaceC0077cr = this.ap;
                InterfaceC0077cr interfaceC0077cr2 = this.ap;
            }
            this.ap = null;
            this.ad = this.ac - 1;
            this.aw.n().b();
            if (this.j != -1001) {
                this.j--;
            } else {
                i(C() - 1);
            }
        }
        removeAllViews();
        this.ah.clear();
        this.ag.clear();
        ax();
    }

    @Override // com.android.launcher3.dX
    protected final void o() {
        super.o();
        if (isHardwareAccelerated()) {
            d(false);
        } else {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                CellLayout cellLayout = (CellLayout) getChildAt(i);
                cellLayout.setChildrenDrawnWithCacheEnabled(false);
                if (!isHardwareAccelerated()) {
                    cellLayout.setChildrenDrawingCacheEnabled(false);
                }
            }
        }
        if (this.ay.b() && aj()) {
            this.ay.f();
        }
        if (this.aX != null) {
            this.aX.run();
            this.aX = null;
        }
        if (this.aY != null) {
            this.aY.run();
            this.aY = null;
        }
        if (this.aK) {
            Z();
            this.aK = false;
        }
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ab = getWindowToken();
        computeScroll();
        this.ay.a(this.ab);
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (!(view2 instanceof CellLayout)) {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        }
        CellLayout cellLayout = (CellLayout) view2;
        cellLayout.a((View.OnTouchListener) this);
        cellLayout.setClickable(true);
        cellLayout.setImportantForAccessibility(2);
        super.onChildViewAdded(view, view2);
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.ab = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.S != null && this.U > 0.0f && this.T) {
            this.S.setAlpha((int) (this.U * 255.0f));
            this.S.setBounds(getScrollX(), 0, getScrollX() + getMeasuredWidth(), getMeasuredHeight());
            this.S.draw(canvas);
        }
        super.onDraw(canvas);
        post(this.bE);
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.bj = motionEvent.getX();
                this.bk = motionEvent.getY();
                this.V = System.currentTimeMillis();
                break;
            case 1:
            case 6:
                if (this.p == 0 && !((CellLayout) getChildAt(this.i)).x()) {
                    int[] iArr = this.az;
                    getLocationOnScreen(iArr);
                    int actionIndex = motionEvent.getActionIndex();
                    iArr[0] = iArr[0] + ((int) motionEvent.getX(actionIndex));
                    iArr[1] = ((int) motionEvent.getY(actionIndex)) + iArr[1];
                    this.aa.sendWallpaperCommand(getWindowToken(), motionEvent.getAction() == 1 ? "android.wallpaper.tap" : "android.wallpaper.secondaryTap", iArr[0], iArr[1], 0, null);
                }
                break;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.h && this.i >= 0 && this.i < getChildCount()) {
            this.c.a();
            this.c.b();
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (this.aw.w()) {
            return false;
        }
        Folder folderK = k();
        return folderK != null ? folderK.requestFocus(i, rect) : super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        Launcher.a(this.i);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return (!aj() && ab() && (aj() || indexOfChild(view) == this.i)) ? false : true;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        this.aw.b(i);
    }

    public final void p() {
        CellLayout cellLayout = (CellLayout) this.aw.getLayoutInflater().inflate(R.layout.workspace_screen, (ViewGroup) null);
        cellLayout.g();
        this.ag.put(-301L, cellLayout);
        this.ah.add(0, -301L);
        cellLayout.setPadding(0, 0, 0, 0);
        c((View) cellLayout);
        this.ad = this.ac + 1;
        this.aw.n().b();
        if (this.j != -1001) {
            this.j++;
        } else {
            i(C() + 1);
        }
    }

    public final void q() {
        boolean z;
        boolean z2 = false;
        Launcher.a("Launcher.Workspace", "11683562 - addExtraEmptyScreenOnDrag()", true);
        this.ai = null;
        if (this.ae != null) {
            z = this.ae.getChildCount() == 1;
            if (indexOfChild((CellLayout) this.ae.getParent()) == getChildCount() - 1) {
                z2 = true;
            }
        } else {
            z = false;
        }
        if ((z && z2) || this.ag.containsKey(-201L)) {
            return;
        }
        d(-201L);
    }

    public final void r(int i) {
        if (i >= 0) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            setScrollX(this.bq);
            cellLayout.setTranslationX(this.bs);
            cellLayout.setRotationY(this.br);
        }
    }

    public final boolean r() {
        Launcher.a("Launcher.Workspace", "11683562 - addExtraEmptyScreen()", true);
        if (this.ag.containsKey(-201L)) {
            return false;
        }
        d(-201L);
        return true;
    }

    final void s(int i) {
        if (i != this.bl) {
            if (i == 0) {
                aF();
                e(false);
                aE();
            } else if (i == 2) {
                e(true);
                aE();
            } else if (i == 1) {
                aF();
                e(true);
            } else if (i == 3) {
                aF();
                aE();
            }
            this.bl = i;
        }
    }

    public final boolean s() {
        return this.ag.containsKey(-201L) && getChildCount() - ag() > 1;
    }

    public void setBackgroundAlpha(float f) {
        if (f != this.U) {
            this.U = f;
            invalidate();
        }
    }

    public void setChildrenOutlineAlpha(float f) {
        this.Q = f;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= getChildCount()) {
                return;
            }
            ((CellLayout) getChildAt(i2)).setBackgroundAlpha(f);
            i = i2 + 1;
        }
    }

    @Override // com.android.launcher3.dX
    protected final String t() {
        int i = this.k != -1 ? this.k : this.i;
        int iAg = ag();
        return (af() && D() == 0) ? this.as : String.format(getContext().getString(R.string.workspace_scroll_format), Integer.valueOf((i + 1) - iAg), Integer.valueOf(getChildCount() - iAg));
    }

    public final void t(int i) {
        if (this.bo != null) {
            this.bp.add(Integer.valueOf(i));
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            if (cellLayout != null) {
                cellLayout.a(this.bo);
            }
        }
    }

    @Override // com.android.launcher3.dX
    protected final String u() {
        return String.valueOf(t()) + ", " + getResources().getString(R.string.settings_button_text);
    }

    @Override // com.android.launcher3.dX
    protected final View.OnClickListener v() {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            return new fO(this);
        }
        return null;
    }
}
