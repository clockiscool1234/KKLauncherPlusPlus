package a.a.a.a;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: renamed from: a.a.a.a.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class ComponentCallbacksC0004e implements ComponentCallbacks, View.OnCreateContextMenuListener {
    private static final a.a.a.c.l M = new a.a.a.c.l();
    boolean A;
    boolean B;
    boolean C;
    boolean E;
    int F;
    ViewGroup G;
    View H;
    View I;
    boolean J;
    y L;
    private boolean N;
    private boolean O;
    View b;
    int c;
    Bundle d;
    SparseArray e;
    String g;
    Bundle h;
    ComponentCallbacksC0004e i;
    int k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    int r;
    p s;
    h t;
    p u;
    ComponentCallbacksC0004e v;
    int w;
    int x;
    String y;
    boolean z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f4a = 0;
    int f = -1;
    int j = -1;
    boolean D = true;
    boolean K = true;

    public static ComponentCallbacksC0004e a(Context context, String str) {
        return a(context, str, (Bundle) null);
    }

    public static ComponentCallbacksC0004e a(Context context, String str, Bundle bundle) {
        try {
            Class<?> clsLoadClass = (Class) M.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                M.put(str, clsLoadClass);
            }
            ComponentCallbacksC0004e componentCallbacksC0004e = (ComponentCallbacksC0004e) clsLoadClass.newInstance();
            if (bundle != null) {
                bundle.setClassLoader(componentCallbacksC0004e.getClass().getClassLoader());
                componentCallbacksC0004e.h = bundle;
            }
            return componentCallbacksC0004e;
        } catch (ClassNotFoundException e) {
            throw new g("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (IllegalAccessException e2) {
            throw new g("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (InstantiationException e3) {
            throw new g("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        }
    }

    static boolean b(Context context, String str) {
        try {
            Class<?> clsLoadClass = (Class) M.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                M.put(str, clsLoadClass);
            }
            return ComponentCallbacksC0004e.class.isAssignableFrom(clsLoadClass);
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static void c() {
    }

    public static void d() {
    }

    public static Animation h() {
        return null;
    }

    public static void i() {
    }

    public static void l() {
    }

    final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.u == null) {
            return null;
        }
        this.u.e();
        return null;
    }

    final void a(int i, ComponentCallbacksC0004e componentCallbacksC0004e) {
        this.f = i;
        if (componentCallbacksC0004e != null) {
            this.g = componentCallbacksC0004e.g + ":" + this.f;
        } else {
            this.g = "android:fragment:" + this.f;
        }
    }

    final void a(Configuration configuration) {
        onConfigurationChanged(configuration);
        if (this.u != null) {
            this.u.a(configuration);
        }
    }

    final void a(Bundle bundle) {
        if (this.e != null) {
            this.I.restoreHierarchyState(this.e);
            this.e = null;
        }
        this.E = false;
        this.E = true;
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.w));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.x));
        printWriter.print(" mTag=");
        printWriter.println(this.y);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f4a);
        printWriter.print(" mIndex=");
        printWriter.print(this.f);
        printWriter.print(" mWho=");
        printWriter.print(this.g);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.r);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.l);
        printWriter.print(" mRemoving=");
        printWriter.print(this.m);
        printWriter.print(" mResumed=");
        printWriter.print(this.n);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.o);
        printWriter.print(" mInLayout=");
        printWriter.println(this.p);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.z);
        printWriter.print(" mDetached=");
        printWriter.print(this.A);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.D);
        printWriter.print(" mHasMenu=");
        printWriter.println(false);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.B);
        printWriter.print(" mRetaining=");
        printWriter.print(this.C);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.K);
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.s);
        }
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("mActivity=");
            printWriter.println(this.t);
        }
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.v);
        }
        if (this.h != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.h);
        }
        if (this.d != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.d);
        }
        if (this.e != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.e);
        }
        if (this.i != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.i);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.k);
        }
        if (this.F != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(this.F);
        }
        if (this.G != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.G);
        }
        if (this.H != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.H);
        }
        if (this.I != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.H);
        }
        if (this.b != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(this.b);
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.c);
        }
        if (this.L != null) {
            printWriter.print(str);
            printWriter.println("Loader Manager:");
            this.L.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.u + ":");
            this.u.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    final boolean a() {
        return this.r > 0;
    }

    final boolean a(Menu menu) {
        if (this.z || this.u == null) {
            return false;
        }
        return this.u.a(menu) | false;
    }

    final boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.z || this.u == null) {
            return false;
        }
        return this.u.a(menu, menuInflater) | false;
    }

    final boolean a(MenuItem menuItem) {
        return (this.z || this.u == null || !this.u.a(menuItem)) ? false : true;
    }

    public final Resources b() {
        if (this.t == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        return this.t.getResources();
    }

    final void b(Bundle bundle) {
        Parcelable parcelable;
        if (this.u != null) {
            this.u.e();
        }
        this.E = false;
        this.E = true;
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onCreate()");
        }
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        if (this.u == null) {
            this.u = new p();
            this.u.a(this.t, new f(this), this);
        }
        this.u.a(parcelable, (ArrayList) null);
        this.u.f();
    }

    final void b(Menu menu) {
        if (this.z || this.u == null) {
            return;
        }
        this.u.b(menu);
    }

    final boolean b(MenuItem menuItem) {
        return (this.z || this.u == null || !this.u.b(menuItem)) ? false : true;
    }

    final void c(Bundle bundle) {
        if (this.u != null) {
            this.u.e();
        }
        this.E = false;
        this.E = true;
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        if (this.u != null) {
            this.u.g();
        }
    }

    final void d(Bundle bundle) {
        Parcelable parcelableD;
        if (this.u == null || (parcelableD = this.u.d()) == null) {
            return;
        }
        bundle.putParcelable("android:support:fragments", parcelableD);
    }

    public final LayoutInflater e() {
        return this.t.getLayoutInflater();
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final void f() {
        this.E = true;
    }

    public final void g() {
        this.E = true;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    final void j() {
        this.f = -1;
        this.g = null;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = 0;
        this.s = null;
        this.u = null;
        this.t = null;
        this.w = 0;
        this.x = 0;
        this.y = null;
        this.z = false;
        this.A = false;
        this.C = false;
        this.L = null;
        this.N = false;
        this.O = false;
    }

    public final void k() {
        this.E = true;
    }

    final void m() {
        if (this.u != null) {
            this.u.e();
            this.u.b();
        }
        this.E = false;
        this.E = true;
        if (!this.N) {
            this.N = true;
            if (!this.O) {
                this.O = true;
                this.L = this.t.a(this.g, this.N, false);
            }
            if (this.L != null) {
                this.L.b();
            }
        }
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onStart()");
        }
        if (this.u != null) {
            this.u.h();
        }
        if (this.L != null) {
            this.L.g();
        }
    }

    final void n() {
        if (this.u != null) {
            this.u.e();
            this.u.b();
        }
        this.E = false;
        this.E = true;
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onResume()");
        }
        if (this.u != null) {
            this.u.i();
            this.u.b();
        }
    }

    final void o() {
        onLowMemory();
        if (this.u != null) {
            this.u.o();
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.E = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.t.onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.E = true;
    }

    final void p() {
        if (this.u != null) {
            this.u.j();
        }
        this.E = false;
        this.E = true;
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    final void q() {
        if (this.u != null) {
            this.u.k();
        }
        this.E = false;
        this.E = true;
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    final void r() {
        if (this.u != null) {
            this.u.l();
        }
        if (this.N) {
            this.N = false;
            if (!this.O) {
                this.O = true;
                this.L = this.t.a(this.g, this.N, false);
            }
            if (this.L != null) {
                if (this.t.d) {
                    this.L.d();
                } else {
                    this.L.c();
                }
            }
        }
    }

    final void s() {
        if (this.u != null) {
            this.u.m();
        }
        this.E = false;
        this.E = true;
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        if (this.L != null) {
            this.L.f();
        }
    }

    final void t() {
        if (this.u != null) {
            this.u.n();
        }
        this.E = false;
        this.E = true;
        if (!this.O) {
            this.O = true;
            this.L = this.t.a(this.g, this.N, false);
        }
        if (this.L != null) {
            this.L.h();
        }
        if (!this.E) {
            throw new E("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        a.a.a.c.d.a(this, sb);
        if (this.f >= 0) {
            sb.append(" #");
            sb.append(this.f);
        }
        if (this.w != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.w));
        }
        if (this.y != null) {
            sb.append(" ");
            sb.append(this.y);
        }
        sb.append('}');
        return sb.toString();
    }
}
