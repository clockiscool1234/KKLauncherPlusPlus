package a.a.a.a;

import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: renamed from: a.a.a.a.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0001b extends w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    C0000a f2a;
    int b;
    int c;
    int d;
    boolean e;
    String f;
    int g = -1;
    int h;
    CharSequence i;
    int j;
    CharSequence k;
    private p l;
    private C0000a m;

    public RunnableC0001b(p pVar) {
        this.l = pVar;
    }

    final void a(int i) {
        if (this.e) {
            for (C0000a c0000a = this.f2a; c0000a != null; c0000a = c0000a.f1a) {
                if (c0000a.d != null) {
                    c0000a.d.r += i;
                }
                if (c0000a.i != null) {
                    for (int size = c0000a.i.size() - 1; size >= 0; size--) {
                        ((ComponentCallbacksC0004e) c0000a.i.get(size)).r += i;
                    }
                }
            }
        }
    }

    final void a(C0000a c0000a) {
        if (this.f2a == null) {
            this.m = c0000a;
            this.f2a = c0000a;
        } else {
            c0000a.b = this.m;
            this.m.f1a = c0000a;
            this.m = c0000a;
        }
        c0000a.e = 0;
        c0000a.f = 0;
        c0000a.g = 0;
        c0000a.h = 0;
        this.b++;
    }

    public final void a(String str, PrintWriter printWriter) {
        String str2;
        printWriter.print(str);
        printWriter.print("mName=");
        printWriter.print(this.f);
        printWriter.print(" mIndex=");
        printWriter.print(this.g);
        printWriter.print(" mCommitted=");
        printWriter.println(false);
        if (this.c != 0) {
            printWriter.print(str);
            printWriter.print("mTransition=#");
            printWriter.print(Integer.toHexString(this.c));
            printWriter.print(" mTransitionStyle=#");
            printWriter.println(Integer.toHexString(this.d));
        }
        if (this.h != 0 || this.i != null) {
            printWriter.print(str);
            printWriter.print("mBreadCrumbTitleRes=#");
            printWriter.print(Integer.toHexString(this.h));
            printWriter.print(" mBreadCrumbTitleText=");
            printWriter.println(this.i);
        }
        if (this.j != 0 || this.k != null) {
            printWriter.print(str);
            printWriter.print("mBreadCrumbShortTitleRes=#");
            printWriter.print(Integer.toHexString(this.j));
            printWriter.print(" mBreadCrumbShortTitleText=");
            printWriter.println(this.k);
        }
        if (this.f2a != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str3 = str + "    ";
            int i = 0;
            C0000a c0000a = this.f2a;
            while (c0000a != null) {
                switch (c0000a.c) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    default:
                        str2 = "cmd=" + c0000a.c;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(c0000a.d);
                if (c0000a.e != 0 || c0000a.f != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c0000a.e));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c0000a.f));
                }
                if (c0000a.g != 0 || c0000a.h != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0000a.g));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c0000a.h));
                }
                if (c0000a.i != null && c0000a.i.size() > 0) {
                    for (int i2 = 0; i2 < c0000a.i.size(); i2++) {
                        printWriter.print(str3);
                        if (c0000a.i.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str3);
                            printWriter.print("  #");
                            printWriter.print(i2);
                            printWriter.print(": ");
                        }
                        printWriter.println(c0000a.i.get(i2));
                    }
                }
                c0000a = c0000a.f1a;
                i++;
            }
        }
    }

    public final void a(boolean z) {
        a(-1);
        for (C0000a c0000a = this.m; c0000a != null; c0000a = c0000a.b) {
            switch (c0000a.c) {
                case 1:
                    ComponentCallbacksC0004e componentCallbacksC0004e = c0000a.d;
                    componentCallbacksC0004e.F = c0000a.h;
                    this.l.a(componentCallbacksC0004e, p.c(this.c), this.d);
                    break;
                case 2:
                    ComponentCallbacksC0004e componentCallbacksC0004e2 = c0000a.d;
                    if (componentCallbacksC0004e2 != null) {
                        componentCallbacksC0004e2.F = c0000a.h;
                        this.l.a(componentCallbacksC0004e2, p.c(this.c), this.d);
                    }
                    if (c0000a.i != null) {
                        for (int i = 0; i < c0000a.i.size(); i++) {
                            ComponentCallbacksC0004e componentCallbacksC0004e3 = (ComponentCallbacksC0004e) c0000a.i.get(i);
                            componentCallbacksC0004e3.F = c0000a.g;
                            this.l.a(componentCallbacksC0004e3, false);
                        }
                    }
                    break;
                case 3:
                    ComponentCallbacksC0004e componentCallbacksC0004e4 = c0000a.d;
                    componentCallbacksC0004e4.F = c0000a.g;
                    this.l.a(componentCallbacksC0004e4, false);
                    break;
                case 4:
                    ComponentCallbacksC0004e componentCallbacksC0004e5 = c0000a.d;
                    componentCallbacksC0004e5.F = c0000a.g;
                    this.l.c(componentCallbacksC0004e5, p.c(this.c), this.d);
                    break;
                case 5:
                    ComponentCallbacksC0004e componentCallbacksC0004e6 = c0000a.d;
                    componentCallbacksC0004e6.F = c0000a.h;
                    this.l.b(componentCallbacksC0004e6, p.c(this.c), this.d);
                    break;
                case 6:
                    ComponentCallbacksC0004e componentCallbacksC0004e7 = c0000a.d;
                    componentCallbacksC0004e7.F = c0000a.g;
                    this.l.e(componentCallbacksC0004e7, p.c(this.c), this.d);
                    break;
                case 7:
                    ComponentCallbacksC0004e componentCallbacksC0004e8 = c0000a.d;
                    componentCallbacksC0004e8.F = c0000a.g;
                    this.l.d(componentCallbacksC0004e8, p.c(this.c), this.d);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0000a.c);
            }
        }
        if (z) {
            this.l.a(this.l.d, p.c(this.c), this.d, true);
        }
        if (this.g >= 0) {
            this.l.b(this.g);
            this.g = -1;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ComponentCallbacksC0004e componentCallbacksC0004e;
        if (this.e && this.g < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        a(1);
        for (C0000a c0000a = this.f2a; c0000a != null; c0000a = c0000a.f1a) {
            switch (c0000a.c) {
                case 1:
                    ComponentCallbacksC0004e componentCallbacksC0004e2 = c0000a.d;
                    componentCallbacksC0004e2.F = c0000a.e;
                    this.l.a(componentCallbacksC0004e2, false);
                    break;
                case 2:
                    ComponentCallbacksC0004e componentCallbacksC0004e3 = c0000a.d;
                    if (this.l.c != null) {
                        componentCallbacksC0004e = componentCallbacksC0004e3;
                        for (int i = 0; i < this.l.c.size(); i++) {
                            ComponentCallbacksC0004e componentCallbacksC0004e4 = (ComponentCallbacksC0004e) this.l.c.get(i);
                            if (componentCallbacksC0004e == null || componentCallbacksC0004e4.x == componentCallbacksC0004e.x) {
                                if (componentCallbacksC0004e4 == componentCallbacksC0004e) {
                                    componentCallbacksC0004e = null;
                                    c0000a.d = null;
                                } else {
                                    if (c0000a.i == null) {
                                        c0000a.i = new ArrayList();
                                    }
                                    c0000a.i.add(componentCallbacksC0004e4);
                                    componentCallbacksC0004e4.F = c0000a.f;
                                    if (this.e) {
                                        componentCallbacksC0004e4.r++;
                                    }
                                    this.l.a(componentCallbacksC0004e4, this.c, this.d);
                                }
                            }
                        }
                    } else {
                        componentCallbacksC0004e = componentCallbacksC0004e3;
                    }
                    if (componentCallbacksC0004e != null) {
                        componentCallbacksC0004e.F = c0000a.e;
                        this.l.a(componentCallbacksC0004e, false);
                    }
                    break;
                case 3:
                    ComponentCallbacksC0004e componentCallbacksC0004e5 = c0000a.d;
                    componentCallbacksC0004e5.F = c0000a.f;
                    this.l.a(componentCallbacksC0004e5, this.c, this.d);
                    break;
                case 4:
                    ComponentCallbacksC0004e componentCallbacksC0004e6 = c0000a.d;
                    componentCallbacksC0004e6.F = c0000a.f;
                    this.l.b(componentCallbacksC0004e6, this.c, this.d);
                    break;
                case 5:
                    ComponentCallbacksC0004e componentCallbacksC0004e7 = c0000a.d;
                    componentCallbacksC0004e7.F = c0000a.e;
                    this.l.c(componentCallbacksC0004e7, this.c, this.d);
                    break;
                case 6:
                    ComponentCallbacksC0004e componentCallbacksC0004e8 = c0000a.d;
                    componentCallbacksC0004e8.F = c0000a.f;
                    this.l.d(componentCallbacksC0004e8, this.c, this.d);
                    break;
                case 7:
                    ComponentCallbacksC0004e componentCallbacksC0004e9 = c0000a.d;
                    componentCallbacksC0004e9.F = c0000a.e;
                    this.l.e(componentCallbacksC0004e9, this.c, this.d);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0000a.c);
            }
        }
        this.l.a(this.l.d, this.c, this.d, true);
        if (this.e) {
            this.l.a(this);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.g >= 0) {
            sb.append(" #");
            sb.append(this.g);
        }
        if (this.f != null) {
            sb.append(" ");
            sb.append(this.f);
        }
        sb.append("}");
        return sb.toString();
    }
}
