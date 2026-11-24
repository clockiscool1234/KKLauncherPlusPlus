package a.a.a.b;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f19a;
    private f b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;

    public final void a() {
        this.c = true;
        this.e = false;
        this.d = false;
    }

    public final void a(int i, f fVar) {
        if (this.b != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.b = fVar;
        this.f19a = i;
    }

    public final void a(f fVar) {
        if (this.b == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.b != fVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.b = null;
    }

    public final void a(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f19a);
        printWriter.print(" mListener=");
        printWriter.println(this.b);
        if (this.c) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.c);
            printWriter.print(" mContentChanged=");
            printWriter.print(false);
            printWriter.print(" mProcessingChange=");
            printWriter.println(false);
        }
        if (this.e) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(false);
            printWriter.print(" mReset=");
            printWriter.println(this.e);
        }
    }

    public final void b() {
        this.c = false;
    }

    public final void c() {
        this.e = true;
        this.c = false;
        this.d = false;
        this.f = false;
        this.g = false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        a.a.a.c.d.a(this, sb);
        sb.append(" id=");
        sb.append(this.f19a);
        sb.append("}");
        return sb.toString();
    }
}
