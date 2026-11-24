package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.SearchManager;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Advanceable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import nl.ndsc.kitkatlauncher.SettingsActivity;

/* JADX INFO: loaded from: classes.dex */
public class Launcher extends Activity implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener, InterfaceC0091de {
    private static ArrayList ak;
    private static ArrayList ar;
    private static boolean as;
    private ViewGroup A;
    private SearchDropTargetBar B;
    private AppsCustomizeTabHost C;
    private AppsCustomizePagedView D;
    private View F;
    private Bundle G;
    private boolean L;
    private boolean M;
    private boolean N;
    private cO R;
    private C0055bw S;
    private View.OnTouchListener Z;
    private long aa;
    private Drawable ag;
    private SharedPreferences aj;
    private ImageView al;
    private Bitmap am;
    private Canvas an;
    private BubbleTextView ap;
    private eD at;
    private boolean au;
    private ArrayList ay;
    private AnimatorSet b;
    private LayoutInflater k;
    private Workspace l;
    private View m;
    private View n;
    private DragLayer o;
    private C0021ap p;
    private View q;
    private cG r;
    private AppWidgetManager s;
    private cD t;
    private AppWidgetProviderInfo v;
    private C0043bk y;
    private Hotseat z;
    private static final Object c = new Object();
    private static final AtomicInteger e = new AtomicInteger(1);
    private static int f = 500;
    private static int g = 5;
    private static int h = 500;
    private static boolean Q = false;
    private static C0078cs X = null;
    private static HashMap Y = new HashMap();
    private static Drawable.ConstantState[] ad = new Drawable.ConstantState[2];
    private static Drawable.ConstantState[] ae = new Drawable.ConstantState[2];
    private static Drawable.ConstantState[] af = new Drawable.ConstantState[2];
    private static ArrayList ai = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EnumC0081cv f94a = EnumC0081cv.WORKSPACE;
    private HashMap d = new HashMap();
    private final BroadcastReceiver i = new C0076cq(this, (byte) 0);
    private final ContentObserver j = new C0075cp(this);
    private bD u = new bD();
    private int w = -1;
    private int[] x = new int[2];
    private boolean E = false;
    private EnumC0081cv H = EnumC0081cv.NONE;
    private SpannableStringBuilder I = null;
    private boolean J = true;
    private boolean K = true;
    private ArrayList O = new ArrayList();
    private ArrayList P = new ArrayList();
    private boolean T = true;
    private boolean U = false;
    private boolean V = false;
    private boolean W = false;
    private long ab = -1;
    private HashMap ac = new HashMap();
    private final ArrayList ah = new ArrayList();
    private Rect ao = new Rect();
    private Runnable aq = new bE(this);
    private C0080cu av = new C0080cu(this);
    private final BroadcastReceiver aw = new C0060ca(this);
    private final Handler ax = new HandlerC0068ci(this);
    private Runnable az = new RunnableC0070ck(this);

    static {
        new Date();
        DateFormat.getDateTimeInstance(3, 3);
        System.currentTimeMillis();
        ak = null;
        ar = new ArrayList();
        as = Log.isLoggable("launcher_force_rotate", 2);
    }

    protected static String G() {
        return "";
    }

    protected static String H() {
        return "";
    }

    protected static int I() {
        return -1;
    }

    protected static ComponentName J() {
        return null;
    }

    protected static int K() {
        return -1;
    }

    protected static String L() {
        return "";
    }

    protected static String M() {
        return "";
    }

    private void Q() {
        boolean zG;
        boolean z = true;
        boolean z2 = false;
        int iV = V();
        if (ad[iV] == null || ae[iV] == null || af[iV] == null) {
            boolean zW = W();
            z2 = zW;
            zG = g(zW);
        } else {
            zG = false;
        }
        if (ad[iV] != null) {
            Drawable.ConstantState constantState = ad[iV];
            View viewFindViewById = findViewById(R.id.search_button_container);
            ImageView imageView = (ImageView) findViewById(R.id.search_button);
            a(R.id.search_button, constantState);
            a(viewFindViewById, imageView);
            z2 = true;
        }
        if (ae[iV] != null) {
            Drawable.ConstantState constantState2 = ae[iV];
            View viewFindViewById2 = findViewById(R.id.voice_button_container);
            View viewFindViewById3 = findViewById(R.id.voice_button);
            a(R.id.voice_button, constantState2);
            a(viewFindViewById2, viewFindViewById3);
        } else {
            z = zG;
        }
        if (this.B != null) {
            this.B.a(z2, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        if (X == null) {
            new AsyncTaskC0071cl(this).execute(new Void[0]);
            return;
        }
        Configuration configuration = getResources().getConfiguration();
        String str = X.f250a;
        String string = configuration.locale.toString();
        int i = X.b;
        int i2 = configuration.mcc;
        int i3 = X.c;
        int i4 = configuration.mnc;
        if ((string.equals(str) && i2 == i && i4 == i3) ? false : true) {
            X.f250a = string;
            X.b = i2;
            X.c = i4;
            this.S.b();
            new AsyncTaskC0072cm(this, X).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        boolean z = this.U && this.T && !this.ac.isEmpty();
        if (z != this.E) {
            this.E = z;
            if (z) {
                a(this.ab == -1 ? 20000L : this.ab);
                return;
            }
            if (!this.ac.isEmpty()) {
                this.ab = Math.max(0L, 20000 - (System.currentTimeMillis() - this.aa));
            }
            this.ax.removeMessages(1);
            this.ax.removeMessages(0);
        }
    }

    private boolean T() {
        return this.J || this.M;
    }

    private void U() {
        this.u.h = -1L;
        this.u.i = -1L;
        bD bDVar = this.u;
        this.u.k = -1;
        bDVar.j = -1;
        bD bDVar2 = this.u;
        this.u.m = -1;
        bDVar2.l = -1;
        bD bDVar3 = this.u;
        this.u.o = -1;
        bDVar3.n = -1;
        this.u.r = null;
    }

    private int V() {
        switch (getResources().getConfiguration().orientation) {
            case 2:
                return 1;
            default:
                return 0;
        }
    }

    private boolean W() {
        View viewFindViewById = findViewById(R.id.search_button_container);
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        View viewFindViewById2 = findViewById(R.id.voice_button_container);
        View viewFindViewById3 = findViewById(R.id.voice_button);
        ComponentName globalSearchActivity = ((SearchManager) getSystemService("search")).getGlobalSearchActivity();
        if (globalSearchActivity != null) {
            int iV = V();
            ad[iV] = a(R.id.search_button, globalSearchActivity, R.drawable.ic_home_search_normal_holo, "com.android.launcher.toolbar_search_icon");
            if (ad[iV] == null) {
                ad[iV] = a(R.id.search_button, globalSearchActivity, R.drawable.ic_home_search_normal_holo, "com.android.launcher.toolbar_icon");
            }
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            imageView.setVisibility(0);
            a(viewFindViewById, imageView);
            return true;
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility(8);
        }
        c(false);
        return false;
    }

    private boolean X() {
        return as || getResources().getBoolean(R.bool.allow_rotation);
    }

    private Drawable.ConstantState a(int i, ComponentName componentName, int i2, String str) {
        ImageView imageView = (ImageView) findViewById(i);
        Drawable drawableA = a(componentName, str);
        if (imageView != null) {
            if (drawableA == null) {
                imageView.setImageResource(i2);
            } else {
                imageView.setImageDrawable(drawableA);
            }
        }
        if (drawableA != null) {
            return drawableA.getConstantState();
        }
        return null;
    }

    private Drawable a(ComponentName componentName, String str) {
        int i;
        try {
            PackageManager packageManager = getPackageManager();
            Bundle bundle = packageManager.getActivityInfo(componentName, 128).metaData;
            if (bundle != null && (i = bundle.getInt(str)) != 0) {
                return packageManager.getResourcesForActivity(componentName).getDrawable(i);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("Launcher", "Failed to load toolbar icon; " + componentName.flattenToShortString() + " not found", e2);
        } catch (Resources.NotFoundException e3) {
            Log.w("Launcher", "Failed to load toolbar icon from " + componentName.flattenToShortString(), e3);
        }
        return null;
    }

    private View a(C0137ey c0137ey) {
        return a(R.layout.application, (ViewGroup) this.l.getChildAt(this.l.C()), c0137ey);
    }

    static void a(int i) {
        synchronized (c) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        bG bGVar;
        AppWidgetHostView appWidgetHostViewCreateView = null;
        CellLayout cellLayoutB = this.l.b(this.u.i);
        int i3 = 0;
        if (i == -1) {
            i3 = 3;
            appWidgetHostViewCreateView = this.t.createView(this, i2, this.v);
            bGVar = new bG(this, i2, appWidgetHostViewCreateView, i);
        } else if (i == 0) {
            this.t.deleteAppWidgetId(i2);
            i3 = 4;
            bGVar = null;
        } else {
            bGVar = null;
        }
        if (this.o.c() != null) {
            this.l.a(this.u, cellLayoutB, (aA) this.o.c(), (Runnable) bGVar, i3, (View) appWidgetHostViewCreateView, true);
        } else if (bGVar != null) {
            bGVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, long j2, AppWidgetHostView appWidgetHostView, AppWidgetProviderInfo appWidgetProviderInfo) {
        boolean zA;
        if (appWidgetProviderInfo == null) {
            appWidgetProviderInfo = this.s.getAppWidgetInfo(i);
        }
        CellLayout cellLayoutA = a(j, j2);
        int[] iArrB = b(this, appWidgetProviderInfo);
        int[] iArrA = a(this, appWidgetProviderInfo);
        int[] iArr = this.x;
        int[] iArr2 = this.u.r;
        int[] iArr3 = new int[2];
        if (this.u.j >= 0 && this.u.k >= 0) {
            iArr[0] = this.u.j;
            iArr[1] = this.u.k;
            iArrA[0] = this.u.l;
            iArrA[1] = this.u.m;
            zA = true;
        } else if (iArr2 != null) {
            int[] iArrA2 = cellLayoutA.a(iArr2[0], iArr2[1], iArrB[0], iArrB[1], iArrA[0], iArrA[1], iArr, iArr3);
            iArrA[0] = iArr3[0];
            iArrA[1] = iArr3[1];
            zA = iArrA2 != null;
        } else {
            zA = cellLayoutA.a(iArr, iArrB[0], iArrB[1]);
        }
        if (!zA) {
            if (i != -1) {
                new bK(this, i).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            }
            a(a(cellLayoutA));
            return;
        }
        cF cFVar = new cF(i, appWidgetProviderInfo.provider);
        cFVar.l = iArrA[0];
        cFVar.m = iArrA[1];
        cFVar.n = this.u.n;
        cFVar.o = this.u.o;
        cO.a((Context) this, (bD) cFVar, j, j2, iArr[0], iArr[1], false);
        if (!this.L) {
            if (appWidgetHostView == null) {
                cFVar.e = this.t.createView(this, i, appWidgetProviderInfo);
                cFVar.e.setAppWidget(i, appWidgetProviderInfo);
            } else {
                cFVar.e = appWidgetHostView;
            }
            cFVar.e.setTag(cFVar);
            cFVar.e.setVisibility(0);
            cFVar.b(this);
            this.l.a(cFVar.e, j, j2, iArr[0], iArr[1], cFVar.l, cFVar.m, T());
            a(cFVar.e, appWidgetProviderInfo);
        }
        U();
    }

    private void a(int i, Drawable.ConstantState constantState) {
        ((ImageView) findViewById(i)).setImageDrawable(constantState.newDrawable(getResources()));
    }

    private void a(int i, bD bDVar, AppWidgetHostView appWidgetHostView, AppWidgetProviderInfo appWidgetProviderInfo) {
        a(i, bDVar, appWidgetHostView, appWidgetProviderInfo, 0);
    }

    private void a(int i, bD bDVar, AppWidgetHostView appWidgetHostView, AppWidgetProviderInfo appWidgetProviderInfo, int i2) {
        if (appWidgetProviderInfo.configure == null) {
            bN bNVar = new bN(this);
            a(i, bDVar.h, bDVar.i, appWidgetHostView, appWidgetProviderInfo);
            this.l.a(true, (Runnable) bNVar, i2, false);
        } else {
            this.v = appWidgetProviderInfo;
            this.w = i;
            Intent intent = new Intent("android.appwidget.action.APPWIDGET_CONFIGURE");
            intent.setComponent(appWidgetProviderInfo.configure);
            intent.putExtra("appWidgetId", i);
            eI.a(this, intent, 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        this.ax.removeMessages(1);
        this.ax.sendMessageDelayed(this.ax.obtainMessage(1), j);
        this.aa = System.currentTimeMillis();
    }

    static /* synthetic */ void a(Context context, C0078cs c0078cs) throws Throwable {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2 = null;
        try {
            dataInputStream = new DataInputStream(context.openFileInput("launcher.preferences"));
            try {
                c0078cs.f250a = dataInputStream.readUTF();
                c0078cs.b = dataInputStream.readInt();
                c0078cs.c = dataInputStream.readInt();
                try {
                    dataInputStream.close();
                } catch (IOException e2) {
                }
            } catch (FileNotFoundException e3) {
                if (dataInputStream != null) {
                    try {
                        dataInputStream.close();
                    } catch (IOException e4) {
                    }
                }
            } catch (IOException e5) {
                if (dataInputStream != null) {
                    try {
                        dataInputStream.close();
                    } catch (IOException e6) {
                    }
                }
            } catch (Throwable th) {
                dataInputStream2 = dataInputStream;
                th = th;
                if (dataInputStream2 != null) {
                    try {
                        dataInputStream2.close();
                    } catch (IOException e7) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e8) {
            dataInputStream = null;
        } catch (IOException e9) {
            dataInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void a(Intent intent) {
        String string = getResources().getString(R.string.group_applications);
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        if (string == null || !string.equals(stringExtra)) {
            eI.a(this, intent, 1);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        Intent intent3 = new Intent("android.intent.action.PICK_ACTIVITY");
        intent3.putExtra("android.intent.extra.INTENT", intent2);
        intent3.putExtra("android.intent.extra.TITLE", getText(R.string.title_select_application));
        eI.a(this, intent3, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(View view, float f2) {
        if (view instanceof dH) {
            ((dH) view).a(this, f2);
        }
    }

    private void a(View view, AppWidgetProviderInfo appWidgetProviderInfo) {
        if (appWidgetProviderInfo == null || appWidgetProviderInfo.autoAdvanceViewId == -1) {
            return;
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(appWidgetProviderInfo.autoAdvanceViewId);
        if (callbackFindViewById instanceof Advanceable) {
            this.ac.put(view, appWidgetProviderInfo);
            ((Advanceable) callbackFindViewById).fyiWillBeAdvancedByHostKThx();
            S();
        }
    }

    private static void a(View view, View view2) {
        if (view instanceof HolographicLinearLayout) {
            ((HolographicLinearLayout) view).a();
        } else if (view2 instanceof HolographicImageView) {
            ((HolographicImageView) view2).a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(View view, boolean z, boolean z2) {
        if (view instanceof dH) {
            ((dH) view).a(this, z, z2);
        }
    }

    private void a(Folder folder) {
        FolderIcon folderIcon;
        folder.e().f198a = false;
        if (((ViewGroup) folder.getParent().getParent()) != null && (folderIcon = (FolderIcon) this.l.b(folder.c)) != null) {
            PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat("alpha", 1.0f);
            PropertyValuesHolder propertyValuesHolderOfFloat2 = PropertyValuesHolder.ofFloat("scaleX", 1.0f);
            PropertyValuesHolder propertyValuesHolderOfFloat3 = PropertyValuesHolder.ofFloat("scaleY", 1.0f);
            CellLayout cellLayout = (CellLayout) folderIcon.getParent().getParent();
            this.o.removeView(this.al);
            b(folderIcon);
            ObjectAnimator objectAnimatorA = C0082cw.a(this.al, propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2, propertyValuesHolderOfFloat3);
            objectAnimatorA.setDuration(getResources().getInteger(R.integer.config_folderAnimDuration));
            objectAnimatorA.addListener(new bP(this, cellLayout, folderIcon));
            objectAnimatorA.start();
        }
        folder.k();
        this.o.sendAccessibilityEvent(32);
    }

    static void a(C0043bk c0043bk) {
        Y.remove(Long.valueOf(c0043bk.f));
    }

    private void a(fU fUVar, boolean z, Runnable runnable) {
        Animator animatorA;
        if (this.b != null) {
            this.b.setDuration(0L);
            this.b.cancel();
            this.b = null;
        }
        Resources resources = getResources();
        int integer = resources.getInteger(R.integer.config_appsCustomizeZoomOutTime);
        int integer2 = resources.getInteger(R.integer.config_appsCustomizeFadeOutTime);
        float integer3 = resources.getInteger(R.integer.config_appsCustomizeZoomScaleFactor);
        AppsCustomizeTabHost appsCustomizeTabHost = this.C;
        Workspace workspace = this.l;
        if (fUVar == fU.NORMAL) {
            animatorA = this.l.a(fUVar, z, resources.getInteger(R.integer.config_appsCustomizeWorkspaceAnimationStagger), -1);
        } else {
            animatorA = (fUVar == fU.SPRING_LOADED || fUVar == fU.OVERVIEW) ? this.l.a(fUVar, z) : null;
        }
        b(appsCustomizeTabHost);
        if (!cB.a().j()) {
            if (!z) {
                this.z.setAlpha(1.0f);
            } else if (this.z.getAlpha() != 1.0f) {
                int iB = 0;
                if (this.B != null) {
                    SearchDropTargetBar searchDropTargetBar = this.B;
                    iB = SearchDropTargetBar.b();
                }
                this.z.animate().alpha(1.0f).setDuration(iB);
            }
        }
        if (!z) {
            appsCustomizeTabHost.setVisibility(8);
            a((View) appsCustomizeTabHost, z, true);
            b((View) appsCustomizeTabHost, z, true);
            c(appsCustomizeTabHost, z, true);
            a((View) workspace, z, true);
            b((View) workspace, z, true);
            c(workspace, z, true);
            return;
        }
        dI dIVar = new dI(appsCustomizeTabHost);
        dIVar.b(integer3).c(integer3).setDuration(integer).setInterpolator(new fX());
        ObjectAnimator duration = C0082cw.a(appsCustomizeTabHost, "alpha", 1.0f, 0.0f).setDuration(integer2);
        duration.setInterpolator(new AccelerateDecelerateInterpolator());
        duration.addUpdateListener(new bU(this, appsCustomizeTabHost, workspace));
        this.b = C0082cw.b();
        a((View) appsCustomizeTabHost, z, true);
        a((View) workspace, z, true);
        this.D.F();
        this.b.addListener(new bV(this, appsCustomizeTabHost, z, workspace, runnable));
        this.b.playTogether(dIVar, duration);
        if (animatorA != null) {
            this.b.play(animatorA);
        }
        b((View) appsCustomizeTabHost, z, true);
        b((View) workspace, z, true);
        C0082cw.a(this.b, workspace);
    }

    public static void a(String str, String str2, Exception exc, boolean z) {
        if (z) {
            if (exc != null) {
                Log.d(str, str2, exc);
            } else {
                Log.d(str, str2);
            }
        }
    }

    public static void a(String str, String str2, boolean z) {
        a(str, str2, (Exception) null, z);
    }

    private void a(String str, boolean z, Bundle bundle, Rect rect) {
        ComponentName globalSearchActivity = ((SearchManager) getSystemService("search")).getGlobalSearchActivity();
        if (globalSearchActivity == null) {
            Log.w("Launcher", "No global search activity found.");
            return;
        }
        Intent intent = new Intent("android.search.action.GLOBAL_SEARCH");
        intent.addFlags(268435456);
        intent.setComponent(globalSearchActivity);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        if (!bundle2.containsKey("source")) {
            bundle2.putString("source", getPackageName());
        }
        intent.putExtra("app_data", bundle2);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("query", str);
        }
        if (z) {
            intent.putExtra("select_query", z);
        }
        intent.setSourceBounds(rect);
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException e2) {
            Log.e("Launcher", "Global search activity not found: " + globalSearchActivity);
        }
    }

    private void a(boolean z, boolean z2, EnumC0176r enumC0176r) {
        if (this.b != null) {
            this.b.setDuration(0L);
            this.b.cancel();
            this.b = null;
        }
        Resources resources = getResources();
        int integer = resources.getInteger(R.integer.config_appsCustomizeZoomInTime);
        int integer2 = resources.getInteger(R.integer.config_appsCustomizeFadeInTime);
        float integer3 = resources.getInteger(R.integer.config_appsCustomizeZoomScaleFactor);
        View view = this.l;
        AppsCustomizeTabHost appsCustomizeTabHost = this.C;
        int integer4 = resources.getInteger(R.integer.config_workspaceAppsCustomizeAnimationStagger);
        b(appsCustomizeTabHost);
        Animator animatorA = this.l.a(fU.SMALL, z);
        if (!cB.o() || enumC0176r == EnumC0176r.Widgets) {
            this.C.a(enumC0176r);
        }
        if (!z) {
            appsCustomizeTabHost.setTranslationX(0.0f);
            appsCustomizeTabHost.setTranslationY(0.0f);
            appsCustomizeTabHost.setScaleX(1.0f);
            appsCustomizeTabHost.setScaleY(1.0f);
            appsCustomizeTabHost.setVisibility(0);
            appsCustomizeTabHost.bringToFront();
            if (!z2 && !cB.a().j() && this.B != null) {
                this.B.b(false);
            }
            a(view, z, false);
            b(view, z, false);
            c(view, z, false);
            a((View) appsCustomizeTabHost, z, false);
            b((View) appsCustomizeTabHost, z, false);
            c(appsCustomizeTabHost, z, false);
            return;
        }
        appsCustomizeTabHost.setScaleX(integer3);
        appsCustomizeTabHost.setScaleY(integer3);
        dI dIVar = new dI(appsCustomizeTabHost);
        dIVar.b(1.0f).c(1.0f).setDuration(integer).setInterpolator(new fY());
        appsCustomizeTabHost.setVisibility(0);
        appsCustomizeTabHost.setAlpha(0.0f);
        ObjectAnimator duration = C0082cw.a(appsCustomizeTabHost, "alpha", 0.0f, 1.0f).setDuration(integer2);
        duration.setInterpolator(new DecelerateInterpolator(1.5f));
        duration.addUpdateListener(new bQ(this, view, appsCustomizeTabHost));
        this.b = C0082cw.b();
        this.b.play(dIVar).after(integer4);
        this.b.play(duration).after(integer4);
        this.b.addListener(new bR(this, appsCustomizeTabHost, view, z));
        if (animatorA != null) {
            this.b.play(animatorA);
        }
        a(view, z, false);
        a((View) appsCustomizeTabHost, z, false);
        boolean z3 = appsCustomizeTabHost.f().getMeasuredWidth() == 0 || this.l.getMeasuredWidth() == 0 || appsCustomizeTabHost.getMeasuredWidth() == 0;
        bS bSVar = new bS(this, this.b, appsCustomizeTabHost, integer3, view, z);
        if (z3) {
            appsCustomizeTabHost.getViewTreeObserver().addOnGlobalLayoutListener(new bT(this, bSVar, appsCustomizeTabHost));
        } else {
            bSVar.run();
        }
    }

    private boolean a(C0079ct c0079ct) {
        boolean z;
        boolean zA;
        switch (c0079ct.f251a) {
            case 1:
                Intent intent = c0079ct.b;
                long j = c0079ct.c;
                long j2 = c0079ct.d;
                int i = c0079ct.e;
                int i2 = c0079ct.f;
                int[] iArr = this.x;
                int[] iArr2 = this.u.r;
                CellLayout cellLayoutA = a(j, j2);
                C0137ey c0137eyA = this.R.a(this, intent, (Bitmap) null);
                if (c0137eyA != null) {
                    View viewA = a(c0137eyA);
                    if (i >= 0 && i2 >= 0) {
                        iArr[0] = i;
                        iArr[1] = i2;
                        if (!this.l.a(viewA, j, cellLayoutA, iArr, 0.0f, true, (aA) null, (Runnable) null)) {
                            aH aHVar = new aH();
                            aHVar.g = c0137eyA;
                            if (!this.l.a(cellLayoutA, iArr, 0.0f, aHVar, true)) {
                                zA = true;
                            }
                        }
                    } else if (iArr2 != null) {
                        zA = cellLayoutA.b(iArr2[0], iArr2[1], 1, 1, iArr) != null;
                    } else {
                        zA = cellLayoutA.a(iArr, 1, 1);
                    }
                    if (zA) {
                        cO.a((Context) this, (bD) c0137eyA, j, j2, iArr[0], iArr[1], false);
                        if (!this.L) {
                            this.l.a(viewA, j, j2, iArr[0], iArr[1], 1, 1, T());
                        }
                    } else {
                        a(a(cellLayoutA));
                    }
                }
                z = true;
                break;
            case 2:
            case 3:
            case 4:
            default:
                z = false;
                break;
            case 5:
                a(c0079ct.b.getIntExtra("appWidgetId", -1), c0079ct.c, c0079ct.d, (AppWidgetHostView) null, (AppWidgetProviderInfo) null);
                z = true;
                break;
            case 6:
                Intent intent2 = c0079ct.b;
                long j3 = c0079ct.c;
                long j4 = c0079ct.d;
                int i3 = c0079ct.e;
                int i4 = c0079ct.f;
                int[] iArr3 = this.x;
                CellLayout cellLayoutA2 = a(j3, j4);
                if (i3 >= 0 && i4 >= 0) {
                    iArr3[0] = i3;
                    iArr3[1] = i4;
                } else if (!cellLayoutA2.a(iArr3, 1, 1)) {
                    a(a(cellLayoutA2));
                    z = false;
                }
                C0137ey c0137eyA2 = this.R.a(getPackageManager(), intent2, this);
                if (c0137eyA2 == null) {
                    Log.e("Launcher", "Couldn't find ActivityInfo for selected application: " + intent2);
                    z = false;
                } else {
                    ComponentName component = intent2.getComponent();
                    c0137eyA2.f343a = new Intent("android.intent.action.MAIN");
                    c0137eyA2.f343a.addCategory("android.intent.category.LAUNCHER");
                    c0137eyA2.f343a.setComponent(component);
                    c0137eyA2.f343a.setFlags(270532608);
                    c0137eyA2.g = 0;
                    c0137eyA2.a(C0137ey.a(this, c0137eyA2.f343a.getComponent().getPackageName()));
                    c0137eyA2.h = -1L;
                    this.l.a(c0137eyA2, cellLayoutA2, j3, j4, T(), i3, i4);
                    z = false;
                }
                break;
            case 7:
                a(c0079ct.b);
                z = false;
                break;
        }
        U();
        return z;
    }

    private boolean a(Runnable runnable, boolean z) {
        if (!this.K) {
            return false;
        }
        Log.i("Launcher", "Deferring update until onResume");
        if (z) {
            while (this.O.remove(runnable)) {
            }
        }
        this.O.add(runnable);
        return true;
    }

    static int[] a(Context context, AppWidgetProviderInfo appWidgetProviderInfo) {
        return a(context, appWidgetProviderInfo.provider, appWidgetProviderInfo.minWidth, appWidgetProviderInfo.minHeight);
    }

    private static int[] a(Context context, ComponentName componentName, int i, int i2) {
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, componentName, null);
        return CellLayout.a(defaultPaddingForWidget.left + i + defaultPaddingForWidget.right, defaultPaddingForWidget.bottom + defaultPaddingForWidget.top + i2, (int[]) null);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4 */
    static /* synthetic */ void b(Context context, C0078cs preferences) throws Throwable {
        DataOutputStream output = null;
        try {
            output = new DataOutputStream(context.openFileOutput("launcher.preferences", 0));
            output.writeUTF(preferences.f250a);
            output.writeInt(preferences.b);
            output.writeInt(preferences.c);
            output.flush();
        } catch (FileNotFoundException ignored) {
        } catch (IOException e) {
            context.getFileStreamPath("launcher.preferences").delete();
        } finally {
            if (output != null) {
                try {
                    output.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view) {
        view.setPivotX(view.getWidth() / 2.0f);
        view.setPivotY(view.getHeight() / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void b(View view, boolean z, boolean z2) {
        if (view instanceof dH) {
            ((dH) view).b(this, z, z2);
        }
        a(view, 0.0f);
    }

    private void b(FolderIcon folderIcon) {
        int measuredWidth = folderIcon.getMeasuredWidth();
        int measuredHeight = folderIcon.getMeasuredHeight();
        if (this.al == null) {
            this.al = new ImageView(this);
        }
        if (this.am == null || this.am.getWidth() != measuredWidth || this.am.getHeight() != measuredHeight) {
            this.am = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            this.an = new Canvas(this.am);
        }
        DragLayer.LayoutParams layoutParams = this.al.getLayoutParams() instanceof DragLayer.LayoutParams ? (DragLayer.LayoutParams) this.al.getLayoutParams() : new DragLayer.LayoutParams(measuredWidth, measuredHeight);
        float fA = this.o.a(folderIcon, this.ao);
        layoutParams.c = true;
        layoutParams.f78a = this.ao.left;
        layoutParams.b = this.ao.top;
        layoutParams.width = (int) (measuredWidth * fA);
        layoutParams.height = (int) (measuredHeight * fA);
        this.an.drawColor(0, PorterDuff.Mode.CLEAR);
        folderIcon.draw(this.an);
        this.al.setImageBitmap(this.am);
        if (folderIcon.a() != null) {
            this.al.setPivotX(folderIcon.a().p());
            this.al.setPivotY(folderIcon.a().q());
        }
        if (this.o.indexOfChild(this.al) != -1) {
            this.o.removeView(this.al);
        }
        this.o.addView(this.al, layoutParams);
        if (folderIcon.a() != null) {
            folderIcon.a().bringToFront();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    private boolean b(View view, Intent intent, Object obj) {
        boolean z;
        intent.addFlags(268435456);
        if (view != null) {
            try {
                if (intent.hasExtra("com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION")) {
                    z = false;
                } else {
                    z = true;
                }
            } catch (SecurityException e2) {
                Toast.makeText(this, R.string.activity_not_found, 0).show();
                Log.e("Launcher", "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. tag=" + obj + " intent=" + intent, e2);
                return false;
            }
        } else {
            z = false;
        }
        if (z) {
            startActivity(intent, ActivityOptions.makeScaleUpAnimation(view, 0, 0, view.getMeasuredWidth(), view.getMeasuredHeight()).toBundle());
        } else {
            startActivity(intent);
        }
        return true;
    }

    static int[] b(Context context, AppWidgetProviderInfo appWidgetProviderInfo) {
        return a(context, appWidgetProviderInfo.provider, appWidgetProviderInfo.minResizeWidth, appWidgetProviderInfo.minResizeHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void c(View view, boolean z, boolean z2) {
        if (view instanceof dH) {
            ((dH) view).c(this, z, z2);
        }
        a(view, 1.0f);
    }

    private static EnumC0081cv e(int i) {
        EnumC0081cv enumC0081cv = EnumC0081cv.WORKSPACE;
        EnumC0081cv[] enumC0081cvArrValuesCustom = EnumC0081cv.valuesCustom();
        for (int i2 = 0; i2 < enumC0081cvArrValuesCustom.length; i2++) {
            if (enumC0081cvArrValuesCustom[i2].ordinal() == i) {
                return enumC0081cvArrValuesCustom[i2];
            }
        }
        return enumC0081cv;
    }

    private void e(ArrayList arrayList) {
        a("Launcher", "11683562 - bindAddScreens()", (Exception) null, true);
        a("Launcher", "11683562 -   orderedScreenIds: " + TextUtils.join(", ", arrayList), (Exception) null, true);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.l.a(((Long) arrayList.get(i)).longValue());
        }
    }

    private void f(boolean z) {
        this.l.setVisibility(0);
        a(fU.OVERVIEW, true, (Runnable) null);
        this.f94a = EnumC0081cv.WORKSPACE;
    }

    private boolean g(boolean z) {
        View viewFindViewById = findViewById(R.id.voice_button_container);
        View viewFindViewById2 = findViewById(R.id.voice_button);
        ComponentName globalSearchActivity = ((SearchManager) getSystemService("search")).getGlobalSearchActivity();
        ComponentName componentNameResolveActivity = null;
        if (globalSearchActivity != null) {
            Intent intent = new Intent("android.speech.action.WEB_SEARCH");
            intent.setPackage(globalSearchActivity.getPackageName());
            componentNameResolveActivity = intent.resolveActivity(getPackageManager());
        }
        if (componentNameResolveActivity == null) {
            componentNameResolveActivity = new Intent("android.speech.action.WEB_SEARCH").resolveActivity(getPackageManager());
        }
        if (!z || componentNameResolveActivity == null) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(8);
            }
            c(false);
            return false;
        }
        int iV = V();
        ae[iV] = a(R.id.voice_button, componentNameResolveActivity, R.drawable.ic_home_voice_search_holo, "com.android.launcher.toolbar_voice_search_icon");
        if (ae[iV] == null) {
            ae[iV] = a(R.id.voice_button, componentNameResolveActivity, R.drawable.ic_home_voice_search_holo, "com.android.launcher.toolbar_icon");
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
        viewFindViewById2.setVisibility(0);
        c(false);
        a(viewFindViewById, viewFindViewById2);
        return true;
    }

    static /* synthetic */ void i(Launcher launcher) {
        if (launcher.t != null) {
            launcher.t.startListening();
        }
    }

    protected static void t() {
    }

    protected static void u() {
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final boolean A() {
        if (!this.K) {
            return false;
        }
        Log.i("Launcher", "setLoadOnResume");
        this.N = true;
        return true;
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final int B() {
        if (this.l != null) {
            return this.l.C();
        }
        return 2;
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void C() {
        this.O.clear();
        this.l.av();
        this.l.n();
        this.ac.clear();
        if (this.z != null) {
            this.z.b();
        }
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void D() {
        boolean zW = W();
        boolean zG = g(zW);
        if (this.B != null) {
            this.B.a(zW, zG);
        }
    }

    public final void E() {
        if (X()) {
            int i = getResources().getConfiguration().orientation;
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            switch (defaultDisplay.getRotation()) {
                case 0:
                case 2:
                    break;
                case 1:
                case 3:
                    i = i != 2 ? 2 : 1;
                    break;
                default:
                    i = 2;
                    break;
            }
            setRequestedOrientation(new int[]{1, 0, 9, 8}[(defaultDisplay.getRotation() + (i != 2 ? 0 : 1)) % 4]);
        }
    }

    protected final boolean F() {
        try {
            return (getPackageManager().getApplicationInfo(getComponentName().getPackageName(), 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    final void N() {
        if (this.l != null) {
            this.l.setAlpha(1.0f);
        }
        if (this.z != null) {
            this.z.setAlpha(1.0f);
        }
        if (this.n != null) {
            this.n.setAlpha(1.0f);
        }
        if (this.B != null) {
            this.B.a(false);
        }
    }

    final void O() {
        if (this.l != null) {
            this.l.setAlpha(0.0f);
        }
        if (this.z != null) {
            this.z.setAlpha(0.0f);
        }
        if (this.n != null) {
            this.n.setAlpha(0.0f);
        }
        if (this.B != null) {
            this.B.b(false);
        }
    }

    public final int a(bD bDVar) {
        int i;
        int i2;
        int i3 = (int) bDVar.f;
        if (this.d.containsKey(Integer.valueOf(i3))) {
            return ((Integer) this.d.get(Integer.valueOf(i3))).intValue();
        }
        do {
            i = e.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!e.compareAndSet(i, i2));
        this.d.put(Integer.valueOf(i3), Integer.valueOf(i));
        return i;
    }

    final View a(int i, ViewGroup viewGroup, C0137ey c0137ey) {
        BubbleTextView bubbleTextView = (BubbleTextView) this.k.inflate(R.layout.application, viewGroup, false);
        bubbleTextView.a(c0137ey, this.S);
        bubbleTextView.setOnClickListener(this);
        return bubbleTextView;
    }

    final CellLayout a(long j, long j2) {
        if (j != -101) {
            return this.l.b(j2);
        }
        if (this.z != null) {
            return this.z.a();
        }
        return null;
    }

    final FolderIcon a(CellLayout cellLayout, long j, long j2, int i, int i2) {
        C0043bk c0043bk = new C0043bk();
        c0043bk.q = getText(R.string.folder_name);
        cO.a((Context) this, (bD) c0043bk, j, j2, i, i2, false);
        Y.put(Long.valueOf(c0043bk.f), c0043bk);
        C0055bw c0055bw = this.S;
        FolderIcon folderIconA = FolderIcon.a(R.layout.folder_icon, this, cellLayout, c0043bk);
        this.l.a(folderIconA, j, j2, i, i2, 1, 1, T());
        this.l.b((View) folderIconA).q().a(folderIconA);
        return folderIconA;
    }

    public final C0080cu a(View view, InterfaceC0077cr interfaceC0077cr, String str) {
        this.l.a(view, interfaceC0077cr, str);
        return this.av;
    }

    final void a(ComponentName componentName) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", componentName.getPackageName(), null));
        intent.setFlags(276856832);
        a((View) null, intent, "startApplicationDetailsActivity");
    }

    final void a(ComponentName componentName, long j, long j2, int[] iArr, int[] iArr2) {
        U();
        this.u.h = j;
        this.u.i = j2;
        this.u.r = null;
        if (iArr != null) {
            this.u.j = iArr[0];
            this.u.k = iArr[1];
        }
        Intent intent = new Intent("android.intent.action.CREATE_SHORTCUT");
        intent.setComponent(componentName);
        a(intent);
    }

    public final void a(FolderIcon folderIcon) {
        Folder folderA = folderIcon.a();
        folderA.c.f198a = true;
        if (folderA.getParent() == null) {
            this.o.addView(folderA);
            this.p.a((aF) folderA);
        } else {
            Log.w("Launcher", "Opening folder (" + folderA + ") which already has a parent (" + folderA.getParent() + ").");
        }
        folderA.f();
        if (folderIcon != null) {
            PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat("alpha", 0.0f);
            PropertyValuesHolder propertyValuesHolderOfFloat2 = PropertyValuesHolder.ofFloat("scaleX", 1.5f);
            PropertyValuesHolder propertyValuesHolderOfFloat3 = PropertyValuesHolder.ofFloat("scaleY", 1.5f);
            if (((C0043bk) folderIcon.getTag()).h == -101) {
                CellLayout cellLayout = (CellLayout) folderIcon.getParent().getParent();
                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) folderIcon.getLayoutParams();
                cellLayout.c(layoutParams.f74a, layoutParams.b);
            }
            b(folderIcon);
            folderIcon.setVisibility(4);
            ObjectAnimator objectAnimatorA = C0082cw.a(this.al, propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2, propertyValuesHolderOfFloat3);
            objectAnimatorA.setDuration(getResources().getInteger(R.integer.config_folderAnimDuration));
            objectAnimatorA.start();
        }
        folderA.sendAccessibilityEvent(32);
        this.o.sendAccessibilityEvent(2048);
    }

    public final void a(cF cFVar) {
        AppWidgetHostView appWidgetHostView = cFVar.e;
        if (this.ac.containsKey(appWidgetHostView)) {
            this.ac.remove(appWidgetHostView);
            S();
        }
        cFVar.e = null;
    }

    final void a(C0129eq c0129eq, long j, long j2, int[] iArr, int[] iArr2, int[] iArr3) {
        U();
        bD bDVar = this.u;
        c0129eq.h = j;
        bDVar.h = j;
        bD bDVar2 = this.u;
        c0129eq.i = j2;
        bDVar2.i = j2;
        this.u.r = null;
        this.u.n = c0129eq.n;
        this.u.o = c0129eq.o;
        if (iArr != null) {
            this.u.j = iArr[0];
            this.u.k = iArr[1];
        }
        if (iArr2 != null) {
            this.u.l = iArr2[0];
            this.u.m = iArr2[1];
        }
        AppWidgetHostView appWidgetHostView = c0129eq.t;
        if (appWidgetHostView != null) {
            a(appWidgetHostView.getAppWidgetId(), c0129eq, appWidgetHostView, c0129eq.s);
            return;
        }
        int iAllocateAppWidgetId = this.t.allocateAppWidgetId();
        Bundle bundle = c0129eq.u;
        if (bundle != null ? this.s.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, c0129eq.f337a, bundle) : this.s.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, c0129eq.f337a)) {
            a(iAllocateAppWidgetId, c0129eq, (AppWidgetHostView) null, c0129eq.s);
            return;
        }
        this.v = c0129eq.s;
        Intent intent = new Intent("android.appwidget.action.APPWIDGET_BIND");
        intent.putExtra("appWidgetId", iAllocateAppWidgetId);
        intent.putExtra("appWidgetProvider", c0129eq.f337a);
        startActivityForResult(intent, 11);
    }

    public final void a(Runnable runnable) {
        this.P.add(runnable);
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void a(ArrayList arrayList) {
        e(arrayList);
        if (arrayList.size() == 0) {
            this.l.r();
        }
        if (a()) {
            this.l.p();
            b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0092  */
    @Override // com.android.launcher3.InterfaceC0091de
    public final void a(ArrayList arrayList, int i, int i2, boolean z) {
        boolean z2;
        long j;
        CellLayout cellLayoutB;
        if (a((Runnable) new bY(this, arrayList, i, i2, z), false)) {
            return;
        }
        AnimatorSet animatorSetB = C0082cw.b();
        ArrayList arrayList2 = new ArrayList();
        if (!z) {
            z2 = false;
        } else if (System.currentTimeMillis() - this.p.d() > ((long) (g * 1000))) {
            z2 = true;
        } else {
            z2 = false;
        }
        Workspace workspace = this.l;
        long j2 = -1;
        while (i < i2) {
            bD bDVar = (bD) arrayList.get(i);
            if (bDVar.h == -101 && this.z == null) {
                j = j2;
            } else {
                switch (bDVar.g) {
                    case 0:
                    case 1:
                        View viewA = a((C0137ey) bDVar);
                        if (bDVar.h == -100 && (cellLayoutB = this.l.b(bDVar.i)) != null && cellLayoutB.f(bDVar.j, bDVar.k)) {
                            throw new RuntimeException("OCCUPIED");
                        }
                        workspace.a(viewA, bDVar.h, bDVar.i, bDVar.j, bDVar.k, 1, 1);
                        if (z2) {
                            viewA.setAlpha(0.0f);
                            viewA.setScaleX(0.0f);
                            viewA.setScaleY(0.0f);
                            ObjectAnimator objectAnimatorA = C0082cw.a(viewA, PropertyValuesHolder.ofFloat("alpha", 1.0f), PropertyValuesHolder.ofFloat("scaleX", 1.0f), PropertyValuesHolder.ofFloat("scaleY", 1.0f));
                            objectAnimatorA.setDuration(450L);
                            objectAnimatorA.setStartDelay(i * 85);
                            objectAnimatorA.setInterpolator(new eA());
                            arrayList2.add(objectAnimatorA);
                            j = bDVar.i;
                        }
                        break;
                    case 2:
                        C0055bw c0055bw = this.S;
                        workspace.a(FolderIcon.a(R.layout.folder_icon, this, (ViewGroup) workspace.getChildAt(workspace.C()), (C0043bk) bDVar), bDVar.h, bDVar.i, bDVar.j, bDVar.k, 1, 1);
                        j = j2;
                        continue;
                    default:
                        throw new RuntimeException("Invalid Item Type");
                }
                j = j2;
            }
            i++;
            j2 = j;
        }
        if (z2 && j2 > -1) {
            long jA = this.l.a(this.l.D());
            int iC = this.l.c(j2);
            bZ bZVar = new bZ(this, animatorSetB, arrayList2);
            if (j2 != jA) {
                this.l.postDelayed(new RunnableC0061cb(this, iC, bZVar), f);
            } else {
                this.l.postDelayed(bZVar, h);
            }
        }
        workspace.requestLayout();
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void a(ArrayList arrayList, ArrayList arrayList2) {
        if (a((Runnable) new RunnableC0066cg(this, arrayList, arrayList2), false)) {
            return;
        }
        if (!arrayList.isEmpty()) {
            this.l.b(arrayList);
        }
        if (!arrayList2.isEmpty()) {
            this.l.c(arrayList2);
        }
        this.p.a(arrayList, arrayList2);
        if (cB.o() || this.D == null) {
            return;
        }
        this.D.d(arrayList2);
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void a(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        if (a((Runnable) new bX(this, arrayList, arrayList2, arrayList3, arrayList4), false)) {
            return;
        }
        e(arrayList);
        if (!arrayList2.isEmpty()) {
            a(arrayList2, 0, arrayList2.size(), false);
        }
        if (!arrayList3.isEmpty()) {
            a(arrayList3, 0, arrayList3.size(), true);
        }
        this.l.a(false, (Runnable) null);
        if (cB.o() || arrayList4 == null || this.D == null) {
            return;
        }
        this.D.c(arrayList4);
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void a(HashMap map) {
        if (a((Runnable) new RunnableC0062cc(this, map), false)) {
            return;
        }
        Y.clear();
        Y.putAll(map);
    }

    final void a(boolean z) {
        Toast.makeText(this, getString(z ? R.string.hotseat_out_of_space : R.string.out_of_space), 0).show();
    }

    final void a(boolean z, int i, Runnable runnable) {
        if (this.f94a != EnumC0081cv.APPS_CUSTOMIZE_SPRING_LOADED) {
            return;
        }
        this.ax.postDelayed(new bW(this, z, null), i);
    }

    final void a(boolean z, EnumC0176r enumC0176r, boolean z2) {
        if (this.f94a != EnumC0081cv.WORKSPACE) {
            return;
        }
        if (z2) {
            this.C.a();
        }
        a(z, false, enumC0176r);
        this.C.requestFocus();
        this.f94a = EnumC0081cv.APPS_CUSTOMIZE;
        this.T = false;
        S();
        v();
        getWindow().getDecorView().sendAccessibilityEvent(32);
    }

    final void a(boolean z, Runnable runnable) {
        boolean z2 = false;
        if (this.l.am()) {
            this.l.a(z);
        }
        if (this.f94a != EnumC0081cv.WORKSPACE) {
            boolean z3 = this.f94a != EnumC0081cv.WORKSPACE;
            this.l.setVisibility(0);
            a(fU.NORMAL, z, runnable);
            if (this.B != null) {
                SearchDropTargetBar searchDropTargetBar = this.B;
                if (z && z3) {
                    z2 = true;
                }
                searchDropTargetBar.a(z2);
            }
        }
        this.f94a = EnumC0081cv.WORKSPACE;
        this.T = true;
        S();
        getWindow().getDecorView().sendAccessibilityEvent(32);
    }

    protected boolean a() {
        return false;
    }

    final boolean a(ComponentName componentName, int i) {
        if ((i & 1) == 0) {
            Toast.makeText(this, R.string.uninstall_system_app_text, 0).show();
            return false;
        }
        Intent intent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", componentName.getPackageName(), componentName.getClassName()));
        intent.setFlags(276824064);
        startActivity(intent);
        return true;
    }

    final boolean a(View view) {
        return this.z != null && view != null && (view instanceof CellLayout) && view == this.z.a();
    }

    public final boolean a(View view, Intent intent, Object obj) {
        try {
            return b(view, intent, obj);
        } catch (ActivityNotFoundException e2) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
            Log.e("Launcher", "Unable to launch. tag=" + obj + " intent=" + intent, e2);
            return false;
        }
    }

    protected void b() {
    }

    public final void b(int i) {
        this.U = i == 0;
        S();
        if (this.U) {
            this.C.b();
            if (!this.J) {
                this.l.getViewTreeObserver().addOnDrawListener(new bL(this));
            }
            this.I.clear();
            this.I.clearSpans();
            Selection.setSelection(this.I, 0);
        }
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void b(cF cFVar) {
        if (a((Runnable) new RunnableC0063cd(this, cFVar), false)) {
            return;
        }
        Workspace workspace = this.l;
        int i = cFVar.f213a;
        AppWidgetProviderInfo appWidgetInfo = this.s.getAppWidgetInfo(i);
        cFVar.e = this.t.createView(this, i, appWidgetInfo);
        cFVar.e.setTag(cFVar);
        cFVar.a(this);
        workspace.a((View) cFVar.e, cFVar.h, cFVar.i, cFVar.j, cFVar.k, cFVar.l, cFVar.m, false);
        a(cFVar.e, appWidgetInfo);
        workspace.requestLayout();
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void b(ArrayList arrayList) {
        if (!cB.o()) {
            if (this.D != null) {
                this.D.b(arrayList);
                this.D.a(cO.a((Context) this));
                return;
            }
            return;
        }
        if (ak != null) {
            ak = null;
        }
        if (this.D != null) {
            this.D.a(cO.a((Context) this));
        }
    }

    protected final void b(boolean z) {
        a(z, (Runnable) null);
    }

    public final eD c() {
        return this.at;
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void c(int i) {
        this.ah.add(Integer.valueOf(i));
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void c(ArrayList arrayList) {
        if (a((Runnable) new RunnableC0065cf(this, arrayList), false)) {
            return;
        }
        if (this.l != null) {
            this.l.d(arrayList);
        }
        if (cB.o() || this.D == null) {
            return;
        }
        this.D.e(arrayList);
    }

    public final void c(boolean z) {
        View viewFindViewById = findViewById(R.id.voice_button_proxy);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(this.l.ao() && !this.au ? 0 : 8);
            viewFindViewById.bringToFront();
        }
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void d(ArrayList arrayList) {
        if (a(this.az, true)) {
            this.ay = arrayList;
        } else if (this.D != null) {
            this.D.a(arrayList);
        }
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final void d(boolean z) {
        if (a((Runnable) new RunnableC0064ce(this, z), false)) {
            return;
        }
        if (this.G != null) {
            if (!this.l.hasFocus()) {
                this.l.getChildAt(this.l.C()).requestFocus();
            }
            this.G = null;
        }
        this.l.au();
        for (int i = 0; i < ar.size(); i++) {
            a((C0079ct) ar.get(i));
        }
        ar.clear();
        this.J = false;
        if (z) {
            this.l.a((ArrayList) null);
            ak = this.l.a((ArrayList) null);
        }
    }

    final boolean d() {
        return !this.R.f();
    }

    @Override // com.android.launcher3.InterfaceC0091de
    public final boolean d(int i) {
        if (this.z != null) {
            return this.z.c(i);
        }
        return false;
    }

    public void dismissFirstRunCling(View view) {
        this.r.dismissFirstRunCling(view);
    }

    public void dismissFolderCling(View view) {
        this.r.dismissFolderCling(view);
    }

    public void dismissMigrationClingCopyApps(View view) {
        this.r.dismissMigrationClingCopyApps(view);
    }

    public void dismissMigrationClingUseDefault(View view) {
        this.r.dismissMigrationClingUseDefault(view);
    }

    public void dismissMigrationWorkspaceCling(View view) {
        this.r.dismissMigrationWorkspaceCling(view);
    }

    public void dismissWorkspaceCling(View view) {
        this.r.dismissWorkspaceCling(view);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case 3:
                    return true;
                case 25:
                    if (Log.isLoggable("launcher_dump_state", 2)) {
                        Log.d("Launcher", "BEGIN launcher3 dump state for launcher " + this);
                        Log.d("Launcher", "mSavedState=" + this.G);
                        Log.d("Launcher", "mWorkspaceLoading=" + this.J);
                        Log.d("Launcher", "mRestoring=" + this.L);
                        Log.d("Launcher", "mWaitingForResult=" + this.M);
                        Log.d("Launcher", "mSavedInstanceState=" + ((Object) null));
                        Log.d("Launcher", "sFolders.size=" + Y.size());
                        this.R.h();
                        if (this.D != null) {
                            this.D.q();
                        }
                        Log.d("Launcher", "END launcher3 dump state");
                        return true;
                    }
                    break;
            }
        } else if (keyEvent.getAction() == 1) {
            switch (keyEvent.getKeyCode()) {
                case 3:
                    return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        boolean zDispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        List<CharSequence> text = accessibilityEvent.getText();
        text.clear();
        if (this.f94a == EnumC0081cv.APPS_CUSTOMIZE) {
            text.add(this.C.getCurrentTabView().getContentDescription());
        } else {
            text.add(getString(R.string.all_apps_home_button_label));
        }
        return zDispatchPopulateAccessibilityEvent;
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        synchronized (ai) {
            printWriter.println(" ");
            printWriter.println("Debug logs: ");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < ai.size()) {
                    printWriter.println("  " + ((String) ai.get(i2)));
                    i = i2 + 1;
                }
            }
        }
    }

    public final void e() {
        this.B.animate().translationY(0.0f).start();
        z().animate().translationY(0.0f).start();
    }

    public final void e(boolean z) {
        if (X()) {
            if (z) {
                setRequestedOrientation(-1);
            } else {
                this.ax.postDelayed(new RunnableC0067ch(this), 500L);
            }
        }
    }

    protected final void f() {
        Intent intent = new Intent(this, (Class<?>) SettingsActivity.class);
        intent.setFlags(268435456);
        getApplicationContext().startActivity(intent);
    }

    public final DragLayer g() {
        return this.o;
    }

    public final Workspace h() {
        return this.l;
    }

    public final Hotseat i() {
        return this.z;
    }

    public final ViewGroup j() {
        return this.A;
    }

    public final SearchDropTargetBar k() {
        return this.B;
    }

    public final cD l() {
        return this.t;
    }

    public final cO m() {
        return this.R;
    }

    public final cG n() {
        return this.r;
    }

    protected final SharedPreferences o() {
        return this.aj;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        Runnable runnableC0074co;
        this.M = false;
        int i3 = this.w;
        this.w = -1;
        RunnableC0073cn runnableC0073cn = new RunnableC0073cn(this, i2);
        if (i == 11) {
            int intExtra = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            if (i2 == 0) {
                a(0, intExtra);
                this.l.a(true, (Runnable) runnableC0073cn, 500, false);
                return;
            } else {
                if (i2 == -1) {
                    a(intExtra, this.u, (AppWidgetHostView) null, this.v, 500);
                    return;
                }
                return;
            }
        }
        if (i == 10) {
            if (i2 == -1 && this.l.am()) {
                this.l.a(false);
                return;
            }
            return;
        }
        if (i == 9 || i == 5) {
            int intExtra2 = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            if (intExtra2 < 0) {
                intExtra2 = i3;
            }
            if (intExtra2 < 0 || i2 == 0) {
                Log.e("Launcher", "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the \\widget configuration activity.");
                a(0, intExtra2);
                runnableC0074co = new RunnableC0074co(this);
            } else {
                CellLayout cellLayoutB = this.l.b(this.u.i);
                cellLayoutB.c(true);
                runnableC0074co = new bF(this, i2, intExtra2, cellLayoutB);
            }
            this.l.a(true, runnableC0074co, 500, false);
            return;
        }
        if (i2 == -1 && this.u.h != -1) {
            C0079ct c0079ct = new C0079ct((byte) 0);
            c0079ct.f251a = i;
            c0079ct.b = intent;
            c0079ct.c = this.u.h;
            c0079ct.d = this.u.i;
            c0079ct.e = this.u.j;
            c0079ct.f = this.u.k;
            if (T()) {
                ar.add(c0079ct);
            } else {
                a(c0079ct);
            }
            this.l.a(true, (Runnable) runnableC0073cn, 500, false);
        } else if (i2 == 0) {
            this.l.a(true, (Runnable) runnableC0073cn, 500, false);
        }
        this.o.b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.aw, intentFilter);
        aK.a(getWindow().getDecorView());
        this.W = true;
        this.U = true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (w()) {
            if (this.D.l() == EnumC0176r.Applications) {
                a(true, (Runnable) null);
                return;
            } else {
                f(true);
                return;
            }
        }
        if (this.l.am()) {
            this.l.a(true);
            return;
        }
        if (this.l.k() == null) {
            this.l.al();
            this.l.ae();
            return;
        }
        Folder folderK = this.l.k();
        if (folderK.a()) {
            folderK.c();
        } else {
            v();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getWindowToken() != null && this.l.ab()) {
            if (view instanceof Workspace) {
                if (this.l.am()) {
                    this.l.a(true);
                    return;
                }
                return;
            }
            if ((view instanceof CellLayout) && this.l.am()) {
                this.l.d(this.l.indexOfChild(view), true);
            }
            Object tag = view.getTag();
            if (tag instanceof C0137ey) {
                C0137ey c0137ey = (C0137ey) tag;
                Intent intent = c0137ey.f343a;
                if (intent.getComponent() != null) {
                    String className = intent.getComponent().getClassName();
                    if (className.equals(ActivityC0156fq.class.getName())) {
                        a(true, EnumC0176r.Widgets, true);
                        return;
                    }
                    if (className.equals(MemoryDumpActivity.class.getName())) {
                        MemoryDumpActivity.startDump(this);
                        return;
                    }
                    if (className.equals(eG.class.getName())) {
                        SharedPreferences sharedPreferences = getSharedPreferences("com.android.launcher3.prefs", 0);
                        boolean z = !sharedPreferences.getBoolean("debug.show_mem", true);
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putBoolean("debug.show_mem", z);
                        editorEdit.commit();
                        if (this.q != null) {
                            this.q.setVisibility(z ? 0 : 8);
                            return;
                        }
                        return;
                    }
                }
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                intent.setSourceBounds(new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight()));
                boolean zA = a(view, intent, tag);
                this.at.a(intent, c0137ey);
                if (zA && (view instanceof BubbleTextView)) {
                    this.ap = (BubbleTextView) view;
                    this.ap.a(true);
                    return;
                }
                return;
            }
            if (!(tag instanceof C0043bk)) {
                if (view == null) {
                    if (w()) {
                        a(true, (Runnable) null);
                        return;
                    } else {
                        onClickAllAppsButton(view);
                        return;
                    }
                }
                return;
            }
            if (view instanceof FolderIcon) {
                FolderIcon folderIcon = (FolderIcon) view;
                C0043bk c0043bkB = folderIcon.b();
                Folder folderA = this.l.a(c0043bkB);
                if (c0043bkB.f198a && folderA == null) {
                    Log.d("Launcher", "Folder info marked as open, but associated folder is not open. Screen: " + c0043bkB.i + " (" + c0043bkB.j + ", " + c0043bkB.k + ")");
                    c0043bkB.f198a = false;
                }
                if (!c0043bkB.f198a && !folderIcon.a().s()) {
                    v();
                    a(folderIcon);
                } else if (folderA != null) {
                    int iE = this.l.e(folderA);
                    a(folderA);
                    if (iE != this.l.C()) {
                        v();
                        a(folderIcon);
                    }
                }
            }
        }
    }

    public void onClickAllAppsButton(View view) {
        a(true, EnumC0176r.Applications, false);
    }

    public void onClickAppMarketButton(View view) {
    }

    public void onClickSearchButton(View view) {
        view.performHapticFeedback(1);
        onSearchRequested();
    }

    public void onClickVoiceButton(View view) {
        view.performHapticFeedback(1);
        try {
            ComponentName globalSearchActivity = ((SearchManager) getSystemService("search")).getGlobalSearchActivity();
            Intent intent = new Intent("android.speech.action.WEB_SEARCH");
            intent.setFlags(268435456);
            if (globalSearchActivity != null) {
                intent.setPackage(globalSearchActivity.getPackageName());
            }
            b((View) null, intent, "onClickVoiceButton");
        } catch (ActivityNotFoundException e2) {
            Intent intent2 = new Intent("android.speech.action.WEB_SEARCH");
            intent2.setFlags(268435456);
            a((View) null, intent2, "onClickVoiceButton");
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.au = a.a.a.c.d.a((Context) this);
        super.onCreate(bundle);
        cB.a(getApplicationContext());
        cB cBVarA = cB.a();
        Point point = new Point();
        Point point2 = new Point();
        Point point3 = new Point();
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        defaultDisplay.getCurrentSizeRange(point, point2);
        defaultDisplay.getRealSize(point3);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        C0017al c0017alA = cBVarA.a(this, Math.min(point.x, point.y), Math.min(point2.x, point2.y), point3.x, point3.y, displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.aj = getSharedPreferences("com.android.launcher3.prefs", 0);
        this.R = cBVarA.a(this);
        this.S = cBVarA.e();
        this.S.a(c0017alA);
        this.p = new C0021ap(this);
        this.r = new cG(this);
        this.k = getLayoutInflater();
        this.at = new eD(this);
        this.s = AppWidgetManager.getInstance(this);
        this.t = new cD(this, 1024);
        this.t.startListening();
        this.K = false;
        R();
        setContentView(R.layout.launcher);
        C0021ap c0021ap = this.p;
        this.m = findViewById(R.id.launcher);
        this.o = (DragLayer) findViewById(R.id.drag_layer);
        this.l = (Workspace) this.o.findViewById(R.id.workspace);
        this.n = this.o.findViewById(R.id.page_indicator);
        this.m.setSystemUiVisibility(1536);
        this.ag = getResources().getDrawable(R.drawable.workspace_bg);
        this.o.a(this, c0021ap);
        this.z = (Hotseat) findViewById(R.id.hotseat);
        if (this.z != null) {
            this.z.a(this);
            this.z.setOnLongClickListener(this);
        }
        this.A = (ViewGroup) findViewById(R.id.overview_panel);
        View viewFindViewById = findViewById(R.id.widget_button);
        viewFindViewById.setOnClickListener(new bH(this));
        viewFindViewById.setOnTouchListener(s());
        View viewFindViewById2 = findViewById(R.id.wallpaper_button);
        viewFindViewById2.setOnClickListener(new bI(this));
        viewFindViewById2.setOnTouchListener(s());
        View viewFindViewById3 = findViewById(R.id.settings_button);
        viewFindViewById3.setOnClickListener(new bJ(this));
        viewFindViewById3.setOnTouchListener(s());
        this.A.setAlpha(0.0f);
        this.l.setHapticFeedbackEnabled(false);
        this.l.setOnLongClickListener(this);
        this.l.a(c0021ap);
        c0021ap.a((InterfaceC0022aq) this.l);
        this.B = (SearchDropTargetBar) this.o.findViewById(R.id.search_drop_target_bar);
        this.C = (AppsCustomizeTabHost) findViewById(R.id.apps_customize_pane);
        this.D = (AppsCustomizePagedView) this.C.findViewById(R.id.apps_customize_pane_content);
        this.D.a(this, c0021ap);
        c0021ap.a((InterfaceC0030ay) this.l);
        c0021ap.b(this.o);
        c0021ap.a((View) this.l);
        c0021ap.a((aF) this.l);
        if (this.B != null) {
            this.B.a(this, c0021ap);
        }
        if (getResources().getBoolean(R.bool.debug_memory_enabled)) {
            Log.v("Launcher", "adding WeightWatcher");
            this.q = new C0151fl(this);
            this.q.setAlpha(0.5f);
            ((FrameLayout) this.m).addView(this.q, new FrameLayout.LayoutParams(-1, -2, 80));
            this.q.setVisibility(getSharedPreferences("com.android.launcher3.prefs", 0).getBoolean("debug.show_mem", false) ? 0 : 8);
        }
        c0017alA.a(this);
        getContentResolver().registerContentObserver(LauncherProvider.f95a, true, this.j);
        this.G = bundle;
        Bundle bundle2 = this.G;
        if (bundle2 != null) {
            if (e(bundle2.getInt("launcher.state", EnumC0081cv.WORKSPACE.ordinal())) == EnumC0081cv.APPS_CUSTOMIZE) {
                this.H = EnumC0081cv.APPS_CUSTOMIZE;
            }
            int i = bundle2.getInt("launcher.current_screen", -1001);
            if (i != -1001) {
                this.l.j(i);
            }
            long j = bundle2.getLong("launcher.add_container", -1L);
            long j2 = bundle2.getLong("launcher.add_screen", -1L);
            if (j != -1 && j2 > -1) {
                this.u.h = j;
                this.u.i = j2;
                this.u.j = bundle2.getInt("launcher.add_cell_x");
                this.u.k = bundle2.getInt("launcher.add_cell_y");
                this.u.l = bundle2.getInt("launcher.add_span_x");
                this.u.m = bundle2.getInt("launcher.add_span_y");
                this.v = (AppWidgetProviderInfo) bundle2.getParcelable("launcher.add_widget_info");
                this.w = bundle2.getInt("launcher.add_widget_id");
                this.M = true;
                this.L = true;
            }
            if (bundle2.getBoolean("launcher.rename_folder", false)) {
                long j3 = bundle2.getLong("launcher.rename_folder_id");
                cO cOVar = this.R;
                this.y = cO.a(this, Y, j3);
                this.L = true;
            }
            if (this.C != null) {
                String string = bundle2.getString("apps_customize_currentTab");
                if (string != null) {
                    AppsCustomizeTabHost appsCustomizeTabHost = this.C;
                    AppsCustomizeTabHost appsCustomizeTabHost2 = this.C;
                    appsCustomizeTabHost.a(AppsCustomizeTabHost.a(string));
                    this.D.p(this.D.C());
                }
                this.D.b(bundle2.getInt("apps_customize_currentIndex"));
            }
            this.d = (HashMap) bundle2.getSerializable("launcher.view_ids");
        }
        if (!this.L) {
            if (Q) {
                this.R.a(true, -1001);
            } else {
                this.R.a(true, this.l.G());
            }
        }
        this.I = new SpannableStringBuilder();
        Selection.setSelection(this.I, 0);
        registerReceiver(this.i, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        Q();
        e(true);
        if (ActivityManager.isRunningInTestHarness() || !this.aj.getBoolean("launcher.first_run_activity_displayed", false)) {
        }
        if (!this.r.c()) {
            this.r.d();
        } else if (this.R.a(this)) {
            this.r.f();
        } else {
            this.r.e();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.ax.removeMessages(1);
        this.ax.removeMessages(0);
        this.l.removeCallbacks(this.aq);
        cB cBVarA = cB.a();
        this.R.e();
        cBVarA.a((Launcher) null);
        try {
            this.t.stopListening();
        } catch (NullPointerException e2) {
            Log.w("Launcher", "problem while stopping AppWidgetHost during Launcher destruction", e2);
        }
        this.t = null;
        this.ac.clear();
        TextKeyListener.getInstance().release();
        if (this.R != null) {
            this.R.a();
        }
        getContentResolver().unregisterContentObserver(this.j);
        unregisterReceiver(this.i);
        this.o.a();
        ((ViewGroup) this.l.getParent()).removeAllViews();
        this.l.n();
        this.l = null;
        this.p = null;
        C0082cw.a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.U = false;
        if (this.W) {
            unregisterReceiver(this.aw);
            this.W = false;
        }
        S();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int unicodeChar = keyEvent.getUnicodeChar();
        boolean zOnKeyDown = super.onKeyDown(i, keyEvent);
        boolean z = unicodeChar > 0 && !Character.isWhitespace(unicodeChar);
        if (!zOnKeyDown) {
            if ((!((InputMethodManager) getSystemService("input_method")).isFullscreenMode()) && z && TextKeyListener.getInstance().onKeyDown(this.l, this.I, i, keyEvent) && this.I != null && this.I.length() > 0) {
                return onSearchRequested();
            }
        }
        if (i == 82 && keyEvent.isLongPress()) {
            return true;
        }
        return zOnKeyDown;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        boolean z = false;
        if (!d() || T() || this.f94a != EnumC0081cv.WORKSPACE) {
            return false;
        }
        if ((view instanceof Workspace) && !this.l.am()) {
            if (!this.l.an()) {
                return false;
            }
            this.l.performHapticFeedback(0, 1);
            return true;
        }
        if (!(view instanceof CellLayout)) {
            view = (View) view.getParent().getParent();
        }
        U();
        L l = (L) view.getTag();
        if (l == null) {
            return true;
        }
        View view2 = l.f93a;
        boolean zA = a(view);
        if ((zA || this.l.V()) && !this.p.b()) {
            if (view2 == null) {
                this.l.performHapticFeedback(0, 1);
                if (this.l.am()) {
                    this.l.f(view);
                } else {
                    this.l.an();
                }
            } else {
                if (zA && d(this.z.a(l.b, l.c))) {
                    z = true;
                }
                if (!(view2 instanceof Folder) && !z) {
                    this.l.a(l);
                }
            }
        }
        return true;
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if ("android.intent.action.MAIN".equals(intent.getAction())) {
            p();
            boolean z = this.V && (intent.getFlags() & 4194304) != 4194304;
            if (this.l == null) {
                return;
            }
            Folder folderK = this.l.k();
            this.l.al();
            if (z && this.f94a == EnumC0081cv.WORKSPACE && !this.l.l() && folderK == null) {
                this.l.c(true);
            }
            v();
            y();
            if (z) {
                a(true, (Runnable) null);
            } else {
                this.H = EnumC0081cv.WORKSPACE;
            }
            View viewPeekDecorView = getWindow().peekDecorView();
            if (viewPeekDecorView != null && viewPeekDecorView.getWindowToken() != null) {
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(viewPeekDecorView.getWindowToken(), 0);
            }
            if (z || this.C == null) {
                return;
            }
            this.C.a();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        InstallShortcutReceiver.a();
        super.onPause();
        this.K = true;
        this.p.c();
        this.p.e();
        if (this.l.ad() != null) {
            this.l.ad();
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        if (this.l.ah()) {
            return false;
        }
        v();
        this.l.al();
        if (this.l.am()) {
            a(true, (Runnable) null);
            return false;
        }
        f(true);
        return false;
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        Iterator it = this.ah.iterator();
        while (it.hasNext()) {
            this.l.t(((Integer) it.next()).intValue());
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (a.a.a.c.d.i(this)) {
            a.a.a.c.d.b((Context) this, false);
            System.exit(0);
            return;
        }
        if (this.H == EnumC0081cv.WORKSPACE) {
            a(false, (Runnable) null);
        } else if (this.H == EnumC0081cv.APPS_CUSTOMIZE) {
            a(false, this.D.l(), false);
        }
        this.H = EnumC0081cv.NONE;
        this.m.setBackground(this.f94a == EnumC0081cv.WORKSPACE ? this.ag : null);
        this.K = false;
        Q = false;
        if (this.L || this.N) {
            this.J = true;
            this.R.a(true, -1001);
            this.L = false;
            this.N = false;
        }
        if (this.O.size() > 0) {
            if (this.D != null) {
                this.D.a(true);
            }
            for (int i = 0; i < this.O.size(); i++) {
                ((Runnable) this.O.get(i)).run();
            }
            if (this.D != null) {
                this.D.a(false);
            }
            this.O.clear();
        }
        if (this.P.size() > 0) {
            for (int i2 = 0; i2 < this.P.size(); i2++) {
                ((Runnable) this.P.get(i2)).run();
            }
            this.P.clear();
        }
        if (this.ap != null) {
            this.ap.a(false);
        }
        if (this.D != null) {
            this.D.s();
        }
        this.l.ac();
        InstallShortcutReceiver.a(this);
        c(false);
        Q();
        if (this.l.ad() != null) {
            this.l.ah();
        }
        this.l.ap();
        this.l.ai();
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        this.R.e();
        if (this.D != null) {
            this.D.r();
        }
        return Boolean.TRUE;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.l.getChildCount() > 0) {
            bundle.putInt("launcher.current_screen", this.l.as());
        }
        super.onSaveInstanceState(bundle);
        bundle.putInt("launcher.state", this.f94a.ordinal());
        v();
        if (this.u.h != -1 && this.u.i > -1 && this.M) {
            bundle.putLong("launcher.add_container", this.u.h);
            bundle.putLong("launcher.add_screen", this.u.i);
            bundle.putInt("launcher.add_cell_x", this.u.j);
            bundle.putInt("launcher.add_cell_y", this.u.k);
            bundle.putInt("launcher.add_span_x", this.u.l);
            bundle.putInt("launcher.add_span_y", this.u.m);
            bundle.putParcelable("launcher.add_widget_info", this.v);
            bundle.putInt("launcher.add_widget_id", this.w);
        }
        if (this.y != null && this.M) {
            bundle.putBoolean("launcher.rename_folder", true);
            bundle.putLong("launcher.rename_folder_id", this.y.f);
        }
        if (this.C != null) {
            EnumC0176r enumC0176rL = this.D.l();
            AppsCustomizeTabHost appsCustomizeTabHost = this.C;
            String strC = AppsCustomizeTabHost.c(enumC0176rL);
            if (strC != null) {
                bundle.putString("apps_customize_currentTab", strC);
            }
            bundle.putInt("apps_customize_currentIndex", this.D.c());
        }
        bundle.putSerializable("launcher.view_ids", this.d);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        startSearch(null, false, null, true);
        return true;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        aK.a(true);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        aK.a(false);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (i >= 60) {
            this.C.c();
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Q = true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.V = z;
    }

    public final void p() {
        getWindow().closeAllPanels();
        this.M = false;
    }

    public final C0021ap q() {
        return this.p;
    }

    protected final void r() {
        Intent intent = new Intent("android.intent.action.SET_WALLPAPER");
        intent.setComponent(new ComponentName(getPackageName(), LauncherWallpaperPickerActivity.class.getName()));
        startActivityForResult(intent, 10);
    }

    public final View.OnTouchListener s() {
        if (this.Z == null) {
            this.Z = new bO(this);
        }
        return this.Z;
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (i >= 0) {
            this.M = true;
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startSearch(String str, boolean z, Bundle bundle, boolean z2) {
        a(true, (Runnable) null);
        if (str == null) {
            str = this.I.toString();
        }
        if (bundle == null) {
            bundle = new Bundle();
            bundle.putString("source", "launcher-search");
        }
        Rect rect = new Rect();
        if (this.B != null) {
            rect = this.B.e();
        }
        a(str, z, bundle, rect);
    }

    public final void v() {
        Folder folderK = this.l != null ? this.l.k() : null;
        if (folderK != null) {
            if (folderK.a()) {
                folderK.c();
            }
            a(folderK);
            this.r.dismissFolderCling(null);
        }
    }

    public final boolean w() {
        return this.f94a == EnumC0081cv.APPS_CUSTOMIZE || this.H == EnumC0081cv.APPS_CUSTOMIZE;
    }

    final void x() {
        if (w()) {
            a(fU.SPRING_LOADED, true, (Runnable) null);
            this.f94a = EnumC0081cv.APPS_CUSTOMIZE_SPRING_LOADED;
        }
    }

    final void y() {
        if (this.f94a == EnumC0081cv.APPS_CUSTOMIZE_SPRING_LOADED) {
            a(true, true, this.D.l());
            this.f94a = EnumC0081cv.APPS_CUSTOMIZE;
        }
    }

    public final View z() {
        if (this.F == null) {
            this.F = this.k.inflate(R.layout.qsb, (ViewGroup) this.B, false);
            this.B.addView(this.F);
        }
        return this.F;
    }
}
