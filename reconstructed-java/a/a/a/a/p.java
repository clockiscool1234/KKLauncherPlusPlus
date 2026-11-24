package a.a.a.a;

import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class p extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f11a = false;
    private static boolean f;
    private static Interpolator w;
    private static Interpolator x;
    ArrayList b;
    ArrayList c;
    String e;
    private boolean g;
    private ArrayList h;
    private ArrayList i;
    private ArrayList j;
    private ArrayList k;
    private ArrayList l;
    private h m;
    private m n;
    private ComponentCallbacksC0004e o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    int d = 0;
    private Bundle t = null;
    private SparseArray u = null;
    private Runnable v = new q(this);

    static {
        f = Build.VERSION.SDK_INT >= 11;
        w = new DecelerateInterpolator(2.5f);
        x = new DecelerateInterpolator(1.5f);
        new AccelerateInterpolator(2.5f);
        new AccelerateInterpolator(1.5f);
    }

    p() {
    }

    private ComponentCallbacksC0004e a(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.b.size()) {
            a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        }
        ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.b.get(i);
        if (componentCallbacksC0004e != null) {
            return componentCallbacksC0004e;
        }
        a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        return componentCallbacksC0004e;
    }

    private static Animation a(float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(x);
        alphaAnimation.setDuration(220L);
        return alphaAnimation;
    }

    private static Animation a(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(w);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(x);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    private Animation a(ComponentCallbacksC0004e componentCallbacksC0004e, int i, boolean z, int i2) {
        Animation animationLoadAnimation;
        int i3 = componentCallbacksC0004e.F;
        ComponentCallbacksC0004e.h();
        if (componentCallbacksC0004e.F != 0 && (animationLoadAnimation = AnimationUtils.loadAnimation(this.m, componentCallbacksC0004e.F)) != null) {
            return animationLoadAnimation;
        }
        if (i == 0) {
            return null;
        }
        byte b = -1;
        switch (i) {
            case 4097:
                b = !z ? (byte) 2 : (byte) 1;
                break;
            case 4099:
                b = !z ? (byte) 6 : (byte) 5;
                break;
            case 8194:
                b = !z ? (byte) 4 : (byte) 3;
                break;
        }
        if (b < 0) {
            return null;
        }
        switch (b) {
            case 1:
                h hVar = this.m;
                return a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                h hVar2 = this.m;
                return a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                h hVar3 = this.m;
                return a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                h hVar4 = this.m;
                return a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                h hVar5 = this.m;
                return a(0.0f, 1.0f);
            case 6:
                h hVar6 = this.m;
                return a(1.0f, 0.0f);
            default:
                if (i2 == 0 && this.m.getWindow() != null) {
                    i2 = this.m.getWindow().getAttributes().windowAnimations;
                }
                return i2 == 0 ? null : null;
        }
    }

    private void a(int i, RunnableC0001b runnableC0001b) {
        synchronized (this) {
            if (this.k == null) {
                this.k = new ArrayList();
            }
            int size = this.k.size();
            if (i < size) {
                this.k.set(i, runnableC0001b);
            } else {
                while (size < i) {
                    this.k.add(null);
                    if (this.l == null) {
                        this.l = new ArrayList();
                    }
                    this.l.add(Integer.valueOf(size));
                    size++;
                }
                this.k.add(runnableC0001b);
            }
        }
    }

    private void a(int i, boolean z) {
        a(i, 0, 0, false);
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new a.a.a.c.e("FragmentManager"));
        if (this.m != null) {
            try {
                this.m.dump("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw runtimeException;
            }
        }
        try {
            a("  ", (FileDescriptor) null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw runtimeException;
        }
    }

    private void b(ComponentCallbacksC0004e componentCallbacksC0004e) {
        if (componentCallbacksC0004e.I == null) {
            return;
        }
        if (this.u == null) {
            this.u = new SparseArray();
        } else {
            this.u.clear();
        }
        componentCallbacksC0004e.I.saveHierarchyState(this.u);
        if (this.u.size() > 0) {
            componentCallbacksC0004e.e = this.u;
            this.u = null;
        }
    }

    public static int c(int i) {
        switch (i) {
            case 4097:
                return 8194;
            case 4099:
                return 4099;
            case 8194:
                return 4097;
            default:
                return 0;
        }
    }

    private void p() {
        if (this.b == null) {
            return;
        }
        for (int i = 0; i < this.b.size(); i++) {
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.b.get(i);
            if (componentCallbacksC0004e != null && componentCallbacksC0004e.J) {
                if (this.g) {
                    this.s = true;
                } else {
                    componentCallbacksC0004e.J = false;
                    a(componentCallbacksC0004e, this.d, 0, 0, false);
                }
            }
        }
    }

    public final ComponentCallbacksC0004e a(int i) {
        if (this.c != null) {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(size);
                if (componentCallbacksC0004e != null && componentCallbacksC0004e.w == i) {
                    return componentCallbacksC0004e;
                }
            }
        }
        if (this.b != null) {
            for (int size2 = this.b.size() - 1; size2 >= 0; size2--) {
                ComponentCallbacksC0004e componentCallbacksC0004e2 = (ComponentCallbacksC0004e) this.b.get(size2);
                if (componentCallbacksC0004e2 != null && componentCallbacksC0004e2.w == i) {
                    return componentCallbacksC0004e2;
                }
            }
        }
        return null;
    }

    public final ComponentCallbacksC0004e a(String str) {
        if (this.c != null && str != null) {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(size);
                if (componentCallbacksC0004e != null && str.equals(componentCallbacksC0004e.y)) {
                    return componentCallbacksC0004e;
                }
            }
        }
        if (this.b != null && str != null) {
            for (int size2 = this.b.size() - 1; size2 >= 0; size2--) {
                ComponentCallbacksC0004e componentCallbacksC0004e2 = (ComponentCallbacksC0004e) this.b.get(size2);
                if (componentCallbacksC0004e2 != null && str.equals(componentCallbacksC0004e2.y)) {
                    return componentCallbacksC0004e2;
                }
            }
        }
        return null;
    }

    final void a(int i, int i2, int i3, boolean z) {
        if (this.m == null && i != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || this.d != i) {
            this.d = i;
            if (this.b != null) {
                int i4 = 0;
                boolean zA = false;
                while (i4 < this.b.size()) {
                    ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.b.get(i4);
                    if (componentCallbacksC0004e != null) {
                        a(componentCallbacksC0004e, i, i2, i3, false);
                        if (componentCallbacksC0004e.L != null) {
                            zA |= componentCallbacksC0004e.L.a();
                        }
                    }
                    i4++;
                    zA = zA;
                }
                if (!zA) {
                    p();
                }
                if (this.p && this.m != null && this.d == 5) {
                    this.m.b();
                    this.p = false;
                }
            }
        }
    }

    final void a(RunnableC0001b runnableC0001b) {
        if (this.i == null) {
            this.i = new ArrayList();
        }
        this.i.add(runnableC0001b);
    }

    final void a(ComponentCallbacksC0004e componentCallbacksC0004e) {
        a(componentCallbacksC0004e, this.d, 0, 0, false);
    }

    public final void a(ComponentCallbacksC0004e componentCallbacksC0004e, int i, int i2) {
        boolean z = !componentCallbacksC0004e.a();
        if (!componentCallbacksC0004e.A || z) {
            if (this.c != null) {
                this.c.remove(componentCallbacksC0004e);
            }
            componentCallbacksC0004e.l = false;
            componentCallbacksC0004e.m = true;
            a(componentCallbacksC0004e, z ? 0 : 1, i, i2, false);
        }
    }


    final void a(ComponentCallbacksC0004e componentCallbacksC0004e, int i, int i2, int i3, boolean z) {
        ViewGroup viewGroup;
        if ((!componentCallbacksC0004e.l || componentCallbacksC0004e.A) && i > 1) {
            i = 1;
        }
        if (componentCallbacksC0004e.m && i > componentCallbacksC0004e.f4a) {
            i = componentCallbacksC0004e.f4a;
        }
        if (componentCallbacksC0004e.J && componentCallbacksC0004e.f4a < 4 && i > 3) {
            i = 3;
        }
        if (componentCallbacksC0004e.f4a < i) {
            if (componentCallbacksC0004e.o && !componentCallbacksC0004e.p) {
                return;
            }
            if (componentCallbacksC0004e.b != null) {
                componentCallbacksC0004e.b = null;
                a(componentCallbacksC0004e, componentCallbacksC0004e.c, 0, 0, true);
            }
            switch (componentCallbacksC0004e.f4a) {
                case 0:
                    if (componentCallbacksC0004e.d != null) {
                        componentCallbacksC0004e.e = componentCallbacksC0004e.d.getSparseParcelableArray("android:view_state");
                        componentCallbacksC0004e.i = a(componentCallbacksC0004e.d, "android:target_state");
                        if (componentCallbacksC0004e.i != null) {
                            componentCallbacksC0004e.k = componentCallbacksC0004e.d.getInt("android:target_req_state", 0);
                        }
                        componentCallbacksC0004e.K = componentCallbacksC0004e.d.getBoolean("android:user_visible_hint", true);
                        if (!componentCallbacksC0004e.K) {
                            componentCallbacksC0004e.J = true;
                            if (i > 3) {
                                i = 3;
                            }
                        }
                    }
                    componentCallbacksC0004e.t = this.m;
                    componentCallbacksC0004e.v = this.o;
                    componentCallbacksC0004e.s = this.o != null ? this.o.u : this.m.b;
                    componentCallbacksC0004e.E = false;
                    h hVar = this.m;
                    componentCallbacksC0004e.g();
                    if (!componentCallbacksC0004e.E) {
                        throw new E("Fragment " + componentCallbacksC0004e + " did not call through to super.onAttach()");
                    }
                    if (componentCallbacksC0004e.v == null) {
                        h hVar2 = this.m;
                        h.c();
                    }
                    if (!componentCallbacksC0004e.C) {
                        componentCallbacksC0004e.b(componentCallbacksC0004e.d);
                    }
                    componentCallbacksC0004e.C = false;
                    if (componentCallbacksC0004e.o) {
                        Bundle bundle = componentCallbacksC0004e.d;
                        componentCallbacksC0004e.H = componentCallbacksC0004e.a(componentCallbacksC0004e.e(), (ViewGroup) null, componentCallbacksC0004e.d);
                        if (componentCallbacksC0004e.H == null) {
                            componentCallbacksC0004e.I = null;
                        } else {
                            componentCallbacksC0004e.I = componentCallbacksC0004e.H;
                            componentCallbacksC0004e.H = D.a(componentCallbacksC0004e.H);
                            if (componentCallbacksC0004e.z) {
                                componentCallbacksC0004e.H.setVisibility(8);
                            }
                            View view = componentCallbacksC0004e.H;
                            Bundle bundle2 = componentCallbacksC0004e.d;
                            ComponentCallbacksC0004e.i();
                        }
                    }
                    break;
                case 1:
                    if (i > 1) {
                        if (!componentCallbacksC0004e.o) {
                            if (componentCallbacksC0004e.x != 0) {
                                viewGroup = (ViewGroup) this.n.a(componentCallbacksC0004e.x);
                                if (viewGroup == null && !componentCallbacksC0004e.q) {
                                    a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(componentCallbacksC0004e.x) + " (" + componentCallbacksC0004e.b().getResourceName(componentCallbacksC0004e.x) + ") for fragment " + componentCallbacksC0004e));
                                }
                            } else {
                                viewGroup = null;
                            }
                            componentCallbacksC0004e.G = viewGroup;
                            Bundle bundle3 = componentCallbacksC0004e.d;
                            componentCallbacksC0004e.H = componentCallbacksC0004e.a(componentCallbacksC0004e.e(), viewGroup, componentCallbacksC0004e.d);
                            if (componentCallbacksC0004e.H != null) {
                                componentCallbacksC0004e.I = componentCallbacksC0004e.H;
                                componentCallbacksC0004e.H = D.a(componentCallbacksC0004e.H);
                                if (viewGroup != null) {
                                    Animation animationA = a(componentCallbacksC0004e, i2, true, i3);
                                    if (animationA != null) {
                                        componentCallbacksC0004e.H.startAnimation(animationA);
                                    }
                                    viewGroup.addView(componentCallbacksC0004e.H);
                                }
                                if (componentCallbacksC0004e.z) {
                                    componentCallbacksC0004e.H.setVisibility(8);
                                }
                                View view2 = componentCallbacksC0004e.H;
                                Bundle bundle4 = componentCallbacksC0004e.d;
                                ComponentCallbacksC0004e.i();
                            } else {
                                componentCallbacksC0004e.I = null;
                            }
                        }
                        componentCallbacksC0004e.c(componentCallbacksC0004e.d);
                        if (componentCallbacksC0004e.H != null) {
                            componentCallbacksC0004e.a(componentCallbacksC0004e.d);
                        }
                        componentCallbacksC0004e.d = null;
                        break;
                    }
                case 2:
                case 3:
                    if (i > 3) {
                        componentCallbacksC0004e.m();
                        break;
                    }
                case 4:
                    if (i > 4) {
                        componentCallbacksC0004e.n = true;
                        componentCallbacksC0004e.n();
                        componentCallbacksC0004e.d = null;
                        componentCallbacksC0004e.e = null;
                        break;
                    }
                default:
                    componentCallbacksC0004e.f4a = i;
            }
        } else if (componentCallbacksC0004e.f4a > i) {
            switch (componentCallbacksC0004e.f4a) {
                case 5:
                    if (i < 5) {
                        componentCallbacksC0004e.p();
                        componentCallbacksC0004e.n = false;
                        break;
                    }
                case 4:
                    if (i < 4) {
                        componentCallbacksC0004e.q();
                        break;
                    }
                case 3:
                    if (i < 3) {
                        componentCallbacksC0004e.r();
                        break;
                    }
                case 2:
                    if (i < 2) {
                        if (componentCallbacksC0004e.H != null && !this.m.isFinishing() && componentCallbacksC0004e.e == null) {
                            b(componentCallbacksC0004e);
                        }
                        componentCallbacksC0004e.s();
                        if (componentCallbacksC0004e.H != null && componentCallbacksC0004e.G != null) {
                            Animation animationA2 = (this.d <= 0 || this.r) ? null : a(componentCallbacksC0004e, i2, false, i3);
                            if (animationA2 != null) {
                                componentCallbacksC0004e.b = componentCallbacksC0004e.H;
                                componentCallbacksC0004e.c = i;
                                animationA2.setAnimationListener(new r(this, componentCallbacksC0004e));
                                componentCallbacksC0004e.H.startAnimation(animationA2);
                            }
                            componentCallbacksC0004e.G.removeView(componentCallbacksC0004e.H);
                        }
                        componentCallbacksC0004e.G = null;
                        componentCallbacksC0004e.H = null;
                        componentCallbacksC0004e.I = null;
                        break;
                    }
                case 1:
                    if (i <= 0) {
                        if (this.r && componentCallbacksC0004e.b != null) {
                            View view3 = componentCallbacksC0004e.b;
                            componentCallbacksC0004e.b = null;
                            view3.clearAnimation();
                        }
                        if (componentCallbacksC0004e.b == null) {
                            if (!componentCallbacksC0004e.C) {
                                componentCallbacksC0004e.t();
                            }
                            componentCallbacksC0004e.E = false;
                            componentCallbacksC0004e.k();
                            if (!componentCallbacksC0004e.E) {
                                throw new E("Fragment " + componentCallbacksC0004e + " did not call through to super.onDetach()");
                            }
                            if (!z) {
                                if (componentCallbacksC0004e.C) {
                                    componentCallbacksC0004e.t = null;
                                    componentCallbacksC0004e.v = null;
                                    componentCallbacksC0004e.s = null;
                                    componentCallbacksC0004e.u = null;
                                } else if (componentCallbacksC0004e.f >= 0) {
                                    this.b.set(componentCallbacksC0004e.f, null);
                                    if (this.h == null) {
                                        this.h = new ArrayList();
                                    }
                                    this.h.add(Integer.valueOf(componentCallbacksC0004e.f));
                                    this.m.a(componentCallbacksC0004e.g);
                                    componentCallbacksC0004e.j();
                                }
                            }
                        } else {
                            componentCallbacksC0004e.c = i;
                            i = 1;
                        }
                        break;
                    }
                default:
                    componentCallbacksC0004e.f4a = i;
            }
        }
        componentCallbacksC0004e.f4a = i;
    }

    public final void a(ComponentCallbacksC0004e componentCallbacksC0004e, boolean z) {
        if (this.c == null) {
            this.c = new ArrayList();
        }
        if (componentCallbacksC0004e.f < 0) {
            if (this.h == null || this.h.size() <= 0) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                componentCallbacksC0004e.a(this.b.size(), this.o);
                this.b.add(componentCallbacksC0004e);
            } else {
                componentCallbacksC0004e.a(((Integer) this.h.remove(this.h.size() - 1)).intValue(), this.o);
                this.b.set(componentCallbacksC0004e.f, componentCallbacksC0004e);
            }
        }
        if (componentCallbacksC0004e.A) {
            return;
        }
        if (this.c.contains(componentCallbacksC0004e)) {
            throw new IllegalStateException("Fragment already added: " + componentCallbacksC0004e);
        }
        this.c.add(componentCallbacksC0004e);
        componentCallbacksC0004e.l = true;
        componentCallbacksC0004e.m = false;
        if (z) {
            a(componentCallbacksC0004e);
        }
    }

    public final void a(h hVar, m mVar, ComponentCallbacksC0004e componentCallbacksC0004e) {
        if (this.m != null) {
            throw new IllegalStateException("Already attached");
        }
        this.m = hVar;
        this.n = mVar;
        this.o = componentCallbacksC0004e;
    }

    public final void a(Configuration configuration) {
        if (this.c == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.c.size()) {
                return;
            }
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(i2);
            if (componentCallbacksC0004e != null) {
                componentCallbacksC0004e.a(configuration);
            }
            i = i2 + 1;
        }
    }

    final void a(Parcelable parcelable, ArrayList arrayList) {
        if (parcelable == null) {
            return;
        }
        s sVar = (s) parcelable;
        if (sVar.f14a != null) {
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) arrayList.get(i);
                    u uVar = sVar.f14a[componentCallbacksC0004e.f];
                    uVar.b = componentCallbacksC0004e;
                    componentCallbacksC0004e.e = null;
                    componentCallbacksC0004e.r = 0;
                    componentCallbacksC0004e.p = false;
                    componentCallbacksC0004e.l = false;
                    componentCallbacksC0004e.i = null;
                    if (uVar.f15a != null) {
                        uVar.f15a.setClassLoader(this.m.getClassLoader());
                        componentCallbacksC0004e.e = uVar.f15a.getSparseParcelableArray("android:view_state");
                    }
                }
            }
            this.b = new ArrayList(sVar.f14a.length);
            if (this.h != null) {
                this.h.clear();
            }
            for (int i2 = 0; i2 < sVar.f14a.length; i2++) {
                u uVar2 = sVar.f14a[i2];
                if (uVar2 != null) {
                    this.b.add(uVar2.a(this.m, this.o));
                    uVar2.b = null;
                } else {
                    this.b.add(null);
                    if (this.h == null) {
                        this.h = new ArrayList();
                    }
                    this.h.add(Integer.valueOf(i2));
                }
            }
            if (arrayList != null) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    ComponentCallbacksC0004e componentCallbacksC0004e2 = (ComponentCallbacksC0004e) arrayList.get(i3);
                    if (componentCallbacksC0004e2.j >= 0) {
                        if (componentCallbacksC0004e2.j < this.b.size()) {
                            componentCallbacksC0004e2.i = (ComponentCallbacksC0004e) this.b.get(componentCallbacksC0004e2.j);
                        } else {
                            Log.w("FragmentManager", "Re-attaching retained fragment " + componentCallbacksC0004e2 + " target no longer exists: " + componentCallbacksC0004e2.j);
                            componentCallbacksC0004e2.i = null;
                        }
                    }
                }
            }
            if (sVar.b != null) {
                this.c = new ArrayList(sVar.b.length);
                for (int i4 = 0; i4 < sVar.b.length; i4++) {
                    ComponentCallbacksC0004e componentCallbacksC0004e3 = (ComponentCallbacksC0004e) this.b.get(sVar.b[i4]);
                    if (componentCallbacksC0004e3 == null) {
                        a(new IllegalStateException("No instantiated fragment for index #" + sVar.b[i4]));
                    }
                    componentCallbacksC0004e3.l = true;
                    if (this.c.contains(componentCallbacksC0004e3)) {
                        throw new IllegalStateException("Already added!");
                    }
                    this.c.add(componentCallbacksC0004e3);
                }
            } else {
                this.c = null;
            }
            if (sVar.c == null) {
                this.i = null;
                return;
            }
            this.i = new ArrayList(sVar.c.length);
            for (int i5 = 0; i5 < sVar.c.length; i5++) {
                RunnableC0001b runnableC0001bA = sVar.c[i5].a(this);
                this.i.add(runnableC0001bA);
                if (runnableC0001bA.g >= 0) {
                    a(runnableC0001bA.g, runnableC0001bA);
                }
            }
        }
    }

    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        String str2 = str + "    ";
        if (this.b != null && (size5 = this.b.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size5; i++) {
                ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.b.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(componentCallbacksC0004e);
                if (componentCallbacksC0004e != null) {
                    componentCallbacksC0004e.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        if (this.c != null && (size4 = this.c.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size4; i2++) {
                ComponentCallbacksC0004e componentCallbacksC0004e2 = (ComponentCallbacksC0004e) this.c.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(componentCallbacksC0004e2.toString());
            }
        }
        if (this.j != null && (size3 = this.j.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size3; i3++) {
                ComponentCallbacksC0004e componentCallbacksC0004e3 = (ComponentCallbacksC0004e) this.j.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(componentCallbacksC0004e3.toString());
            }
        }
        if (this.i != null && (size2 = this.i.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size2; i4++) {
                RunnableC0001b runnableC0001b = (RunnableC0001b) this.i.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(runnableC0001b.toString());
                runnableC0001b.a(str2, printWriter);
            }
        }
        synchronized (this) {
            if (this.k != null && (size = this.k.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size; i5++) {
                    Object obj = (RunnableC0001b) this.k.get(i5);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            if (this.l != null && this.l.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.l.toArray()));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mActivity=");
        printWriter.println(this.m);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.n);
        if (this.o != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.o);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.d);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.q);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.r);
        if (this.p) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.p);
        }
        if (this.e != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.e);
        }
        if (this.h == null || this.h.size() <= 0) {
            return;
        }
        printWriter.print(str);
        printWriter.print("  mAvailIndices: ");
        printWriter.println(Arrays.toString(this.h.toArray()));
    }

    public final boolean a() {
        int size;
        if (this.q) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.e != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.e);
        }
        b();
        Handler handler = this.m.f6a;
        if (this.i == null || (size = this.i.size() - 1) < 0) {
            return false;
        }
        ((RunnableC0001b) this.i.remove(size)).a(true);
        return true;
    }

    public final boolean a(Menu menu) {
        if (this.c == null) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.c.size(); i++) {
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(i);
            if (componentCallbacksC0004e != null && componentCallbacksC0004e.a(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final boolean a(Menu menu, MenuInflater menuInflater) {
        boolean z;
        ArrayList arrayList = null;
        if (this.c != null) {
            int i = 0;
            z = false;
            while (i < this.c.size()) {
                ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(i);
                if (componentCallbacksC0004e != null && componentCallbacksC0004e.a(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(componentCallbacksC0004e);
                }
                i++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.j != null) {
            for (int i2 = 0; i2 < this.j.size(); i2++) {
                ComponentCallbacksC0004e componentCallbacksC0004e2 = (ComponentCallbacksC0004e) this.j.get(i2);
                if (arrayList == null || !arrayList.contains(componentCallbacksC0004e2)) {
                    ComponentCallbacksC0004e.l();
                }
            }
        }
        this.j = arrayList;
        return z;
    }

    public final boolean a(MenuItem menuItem) {
        if (this.c == null) {
            return false;
        }
        for (int i = 0; i < this.c.size(); i++) {
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(i);
            if (componentCallbacksC0004e != null && componentCallbacksC0004e.a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void b(int i) {
        synchronized (this) {
            this.k.set(i, null);
            if (this.l == null) {
                this.l = new ArrayList();
            }
            this.l.add(Integer.valueOf(i));
        }
    }

    public final void b(ComponentCallbacksC0004e componentCallbacksC0004e, int i, int i2) {
        if (componentCallbacksC0004e.z) {
            return;
        }
        componentCallbacksC0004e.z = true;
        if (componentCallbacksC0004e.H != null) {
            Animation animationA = a(componentCallbacksC0004e, i, false, i2);
            if (animationA != null) {
                componentCallbacksC0004e.H.startAnimation(animationA);
            }
            componentCallbacksC0004e.H.setVisibility(8);
        }
        boolean z = componentCallbacksC0004e.l;
        ComponentCallbacksC0004e.c();
    }

    public final void b(Menu menu) {
        if (this.c == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.c.size()) {
                return;
            }
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(i2);
            if (componentCallbacksC0004e != null) {
                componentCallbacksC0004e.b(menu);
            }
            i = i2 + 1;
        }
    }

    public final boolean b() {
        if (this.g) {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        }
        if (Looper.myLooper() != this.m.f6a.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of process");
        }
        synchronized (this) {
        }
        if (this.s) {
            boolean zA = false;
            for (int i = 0; i < this.b.size(); i++) {
                ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.b.get(i);
                if (componentCallbacksC0004e != null && componentCallbacksC0004e.L != null) {
                    zA |= componentCallbacksC0004e.L.a();
                }
            }
            if (!zA) {
                this.s = false;
                p();
            }
        }
        return false;
    }

    public final boolean b(MenuItem menuItem) {
        if (this.c == null) {
            return false;
        }
        for (int i = 0; i < this.c.size(); i++) {
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(i);
            if (componentCallbacksC0004e != null && componentCallbacksC0004e.b(menuItem)) {
                return true;
            }
        }
        return false;
    }

    final ArrayList c() {
        ArrayList arrayList = null;
        if (this.b != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.b.size()) {
                    break;
                }
                ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.b.get(i2);
                if (componentCallbacksC0004e != null && componentCallbacksC0004e.B) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(componentCallbacksC0004e);
                    componentCallbacksC0004e.C = true;
                    componentCallbacksC0004e.j = componentCallbacksC0004e.i != null ? componentCallbacksC0004e.i.f : -1;
                }
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    public final void c(ComponentCallbacksC0004e componentCallbacksC0004e, int i, int i2) {
        if (componentCallbacksC0004e.z) {
            componentCallbacksC0004e.z = false;
            if (componentCallbacksC0004e.H != null) {
                Animation animationA = a(componentCallbacksC0004e, i, true, i2);
                if (animationA != null) {
                    componentCallbacksC0004e.H.startAnimation(animationA);
                }
                componentCallbacksC0004e.H.setVisibility(0);
            }
            boolean z = componentCallbacksC0004e.l;
            ComponentCallbacksC0004e.c();
        }
    }

    final Parcelable d() {
        int[] iArr;
        int size;
        int size2;
        boolean z;
        Bundle bundle;
        C0002c[] c0002cArr = null;
        b();
        if (f) {
            this.q = true;
        }
        if (this.b == null || this.b.size() <= 0) {
            return null;
        }
        int size3 = this.b.size();
        u[] uVarArr = new u[size3];
        int i = 0;
        boolean z2 = false;
        while (i < size3) {
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.b.get(i);
            if (componentCallbacksC0004e != null) {
                if (componentCallbacksC0004e.f < 0) {
                    a(new IllegalStateException("Failure saving state: active " + componentCallbacksC0004e + " has cleared index: " + componentCallbacksC0004e.f));
                }
                u uVar = new u(componentCallbacksC0004e);
                uVarArr[i] = uVar;
                if (componentCallbacksC0004e.f4a <= 0 || uVar.f15a != null) {
                    uVar.f15a = componentCallbacksC0004e.d;
                } else {
                    if (this.t == null) {
                        this.t = new Bundle();
                    }
                    componentCallbacksC0004e.d(this.t);
                    if (this.t.isEmpty()) {
                        bundle = null;
                    } else {
                        bundle = this.t;
                        this.t = null;
                    }
                    if (componentCallbacksC0004e.H != null) {
                        b(componentCallbacksC0004e);
                    }
                    if (componentCallbacksC0004e.e != null) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putSparseParcelableArray("android:view_state", componentCallbacksC0004e.e);
                    }
                    if (!componentCallbacksC0004e.K) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putBoolean("android:user_visible_hint", componentCallbacksC0004e.K);
                    }
                    uVar.f15a = bundle;
                    if (componentCallbacksC0004e.i != null) {
                        if (componentCallbacksC0004e.i.f < 0) {
                            a(new IllegalStateException("Failure saving state: " + componentCallbacksC0004e + " has target not in fragment manager: " + componentCallbacksC0004e.i));
                        }
                        if (uVar.f15a == null) {
                            uVar.f15a = new Bundle();
                        }
                        Bundle bundle2 = uVar.f15a;
                        ComponentCallbacksC0004e componentCallbacksC0004e2 = componentCallbacksC0004e.i;
                        if (componentCallbacksC0004e2.f < 0) {
                            a(new IllegalStateException("Fragment " + componentCallbacksC0004e2 + " is not currently in the FragmentManager"));
                        }
                        bundle2.putInt("android:target_state", componentCallbacksC0004e2.f);
                        if (componentCallbacksC0004e.k != 0) {
                            uVar.f15a.putInt("android:target_req_state", componentCallbacksC0004e.k);
                            z = true;
                        }
                    }
                }
                z = true;
            } else {
                z = z2;
            }
            i++;
            z2 = z;
        }
        if (!z2) {
            return null;
        }
        if (this.c == null || (size2 = this.c.size()) <= 0) {
            iArr = null;
        } else {
            iArr = new int[size2];
            for (int i2 = 0; i2 < size2; i2++) {
                iArr[i2] = ((ComponentCallbacksC0004e) this.c.get(i2)).f;
                if (iArr[i2] < 0) {
                    a(new IllegalStateException("Failure saving state: active " + this.c.get(i2) + " has cleared index: " + iArr[i2]));
                }
            }
        }
        if (this.i != null && (size = this.i.size()) > 0) {
            c0002cArr = new C0002c[size];
            for (int i3 = 0; i3 < size; i3++) {
                c0002cArr[i3] = new C0002c((RunnableC0001b) this.i.get(i3));
            }
        }
        s sVar = new s();
        sVar.f14a = uVarArr;
        sVar.b = iArr;
        sVar.c = c0002cArr;
        return sVar;
    }

    public final void d(ComponentCallbacksC0004e componentCallbacksC0004e, int i, int i2) {
        if (componentCallbacksC0004e.A) {
            return;
        }
        componentCallbacksC0004e.A = true;
        if (componentCallbacksC0004e.l) {
            if (this.c != null) {
                this.c.remove(componentCallbacksC0004e);
            }
            componentCallbacksC0004e.l = false;
            a(componentCallbacksC0004e, 1, i, i2, false);
        }
    }

    public final void e() {
        this.q = false;
    }

    public final void e(ComponentCallbacksC0004e componentCallbacksC0004e, int i, int i2) {
        if (componentCallbacksC0004e.A) {
            componentCallbacksC0004e.A = false;
            if (componentCallbacksC0004e.l) {
                return;
            }
            if (this.c == null) {
                this.c = new ArrayList();
            }
            if (this.c.contains(componentCallbacksC0004e)) {
                throw new IllegalStateException("Fragment already added: " + componentCallbacksC0004e);
            }
            this.c.add(componentCallbacksC0004e);
            componentCallbacksC0004e.l = true;
            a(componentCallbacksC0004e, this.d, i, i2, false);
        }
    }

    public final void f() {
        this.q = false;
        a(1, false);
    }

    public final void g() {
        this.q = false;
        a(2, false);
    }

    public final void h() {
        this.q = false;
        a(4, false);
    }

    public final void i() {
        this.q = false;
        a(5, false);
    }

    public final void j() {
        a(4, false);
    }

    public final void k() {
        this.q = true;
        a(3, false);
    }

    public final void l() {
        a(2, false);
    }

    public final void m() {
        a(1, false);
    }

    public final void n() {
        this.r = true;
        b();
        a(0, false);
        this.m = null;
        this.n = null;
        this.o = null;
    }

    public final void o() {
        if (this.c == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.c.size()) {
                return;
            }
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) this.c.get(i2);
            if (componentCallbacksC0004e != null) {
                componentCallbacksC0004e.o();
            }
            i = i2 + 1;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.o != null) {
            a.a.a.c.d.a(this.o, sb);
        } else {
            a.a.a.c.d.a(this.m, sb);
        }
        sb.append("}}");
        return sb.toString();
    }
}
