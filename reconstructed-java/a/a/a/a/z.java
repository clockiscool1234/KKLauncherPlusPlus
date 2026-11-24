package a.a.a.a;

import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
final class z implements a.a.a.b.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f17a;
    o b;
    a.a.a.b.e c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    private Bundle j;
    private boolean k;
    private Object l;
    private boolean m;

    final void a() {
        this.e = false;
        if (this.f || this.c == null || !this.i) {
            return;
        }
        this.i = false;
        this.c.a(this);
        this.c.b();
    }

    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f17a);
        printWriter.print(" mArgs=");
        printWriter.println(this.j);
        printWriter.print(str);
        printWriter.print("mCallbacks=");
        printWriter.println((Object) null);
        printWriter.print(str);
        printWriter.print("mLoader=");
        printWriter.println(this.c);
        if (this.c != null) {
            this.c.a(str + "  ", printWriter);
        }
        if (this.d) {
            printWriter.print(str);
            printWriter.print("mHaveData=");
            printWriter.print(false);
            printWriter.print("  mDeliveredData=");
            printWriter.println(this.d);
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println((Object) null);
        }
        printWriter.print(str);
        printWriter.print("mStarted=");
        printWriter.print(this.e);
        printWriter.print(" mReportNextStart=");
        printWriter.print(this.h);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.m);
        printWriter.print(str);
        printWriter.print("mRetaining=");
        printWriter.print(this.f);
        printWriter.print(" mRetainingStarted=");
        printWriter.print(this.g);
        printWriter.print(" mListenerRegistered=");
        printWriter.println(this.i);
    }

    final void b() {
        this.m = true;
        boolean z = this.d;
        this.d = false;
        this.b = null;
        this.l = null;
        this.k = false;
        if (this.c != null) {
            if (this.i) {
                this.i = false;
                this.c.a(this);
            }
            this.c.c();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.f17a);
        sb.append(" : ");
        a.a.a.c.d.a(this.c, sb);
        sb.append("}}");
        return sb.toString();
    }
}
