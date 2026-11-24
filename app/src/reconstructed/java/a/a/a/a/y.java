package a.a.a.a;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes.dex */
final class y extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f16a = false;
    final String b;
    h c;
    boolean d;
    boolean e;
    private a.a.a.c.m f;
    private a.a.a.c.m g;

    final void a(h hVar) {
        this.c = hVar;
    }

    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.f.a() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.f.a(); i++) {
                z zVar = (z) this.f.b(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f.a(i));
                printWriter.print(": ");
                printWriter.println(zVar.toString());
                zVar.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.g.a() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.g.a(); i2++) {
                z zVar2 = (z) this.g.b(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.g.a(i2));
                printWriter.print(": ");
                printWriter.println(zVar2.toString());
                zVar2.a(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // a.a.a.a.x
    public final boolean a() {
        int iA = this.f.a();
        boolean z = false;
        for (int i = 0; i < iA; i++) {
            z zVar = (z) this.f.b(i);
            z |= zVar.e && !zVar.d;
        }
        return z;
    }

    final void b() {
        if (this.d) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
            return;
        }
        this.d = true;
        for (int iA = this.f.a() - 1; iA >= 0; iA--) {
            z zVar = (z) this.f.b(iA);
            if (zVar.f && zVar.g) {
                zVar.e = true;
            } else if (zVar.e) {
                continue;
            } else {
                zVar.e = true;
                a.a.a.b.e eVar = zVar.c;
                if (zVar.c == null) {
                    continue;
                } else {
                    if (zVar.c.getClass().isMemberClass() && !Modifier.isStatic(zVar.c.getClass().getModifiers())) {
                        throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + zVar.c);
                    }
                    if (!zVar.i) {
                        zVar.c.a(zVar.f17a, zVar);
                        zVar.i = true;
                    }
                    zVar.c.a();
                }
            }
        }
    }

    final void c() {
        if (!this.d) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
        } else {
            for (int iA = this.f.a() - 1; iA >= 0; iA--) {
                ((z) this.f.b(iA)).a();
            }
            this.d = false;
        }
    }

    final void d() {
        if (!this.d) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
            return;
        }
        this.e = true;
        this.d = false;
        for (int iA = this.f.a() - 1; iA >= 0; iA--) {
            z zVar = (z) this.f.b(iA);
            zVar.f = true;
            zVar.g = zVar.e;
            zVar.e = false;
            zVar.b = null;
        }
    }

    final void e() {
        if (this.e) {
            this.e = false;
            for (int iA = this.f.a() - 1; iA >= 0; iA--) {
                z zVar = (z) this.f.b(iA);
                if (zVar.f) {
                    zVar.f = false;
                    if (zVar.e != zVar.g && !zVar.e) {
                        zVar.a();
                    }
                }
                boolean z = zVar.e;
            }
        }
    }

    final void f() {
        for (int iA = this.f.a() - 1; iA >= 0; iA--) {
            ((z) this.f.b(iA)).h = true;
        }
    }

    final void g() {
        for (int iA = this.f.a() - 1; iA >= 0; iA--) {
            z zVar = (z) this.f.b(iA);
            if (zVar.e && zVar.h) {
                zVar.h = false;
            }
        }
    }

    final void h() {
        if (!this.e) {
            for (int iA = this.f.a() - 1; iA >= 0; iA--) {
                ((z) this.f.b(iA)).b();
            }
            this.f.b();
        }
        for (int iA2 = this.g.a() - 1; iA2 >= 0; iA2--) {
            ((z) this.g.b(iA2)).b();
        }
        this.g.b();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        a.a.a.c.d.a(this.c, sb);
        sb.append("}}");
        return sb.toString();
    }
}
