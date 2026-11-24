package a.a.a.c;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class g implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f24a;
    private int b;
    private int c;
    private boolean d = false;
    private /* synthetic */ f e;

    g(f fVar, int i) {
        this.e = fVar;
        this.f24a = i;
        this.b = fVar.a();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object objA = this.e.a(this.c, this.f24a);
        this.c++;
        this.d = true;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.d) {
            throw new IllegalStateException();
        }
        this.c--;
        this.b--;
        this.d = false;
        this.e.a(this.c);
    }
}
