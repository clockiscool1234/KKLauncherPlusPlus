package a.a.a.e;

import a.a.a.d.d;

/* JADX INFO: loaded from: classes.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ a f34a;

    private c(a aVar) {
        this.f34a = aVar;
    }

    /* synthetic */ c(a aVar, byte b) {
        this(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f34a.o) {
            if (this.f34a.m) {
                a.a(this.f34a, false);
                this.f34a.f32a.a();
            }
            b bVar = this.f34a.f32a;
            if (bVar.c() || !this.f34a.b()) {
                a.b(this.f34a, false);
                return;
            }
            if (this.f34a.n) {
                a.c(this.f34a, false);
                a.f(this.f34a);
            }
            bVar.d();
            this.f34a.a(bVar.g(), bVar.h());
            d.a(this.f34a.c, this);
        }
    }
}
