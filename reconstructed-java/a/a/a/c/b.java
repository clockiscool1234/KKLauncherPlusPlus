package a.a.a.c;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class b extends f {
    private /* synthetic */ a d;

    b(a aVar) {
        this.d = aVar;
    }

    @Override // a.a.a.c.f
    protected final int a() {
        return this.d.b;
    }

    @Override // a.a.a.c.f
    protected final int a(Object obj) {
        return obj == null ? this.d.a() : this.d.a(obj, obj.hashCode());
    }

    @Override // a.a.a.c.f
    protected final Object a(int i, int i2) {
        return this.d.f29a[(i << 1) + i2];
    }

    @Override // a.a.a.c.f
    protected final Object a(int i, Object obj) {
        a aVar = this.d;
        int i2 = (i << 1) + 1;
        Object obj2 = aVar.f29a[i2];
        aVar.f29a[i2] = obj;
        return obj2;
    }

    @Override // a.a.a.c.f
    protected final void a(int i) {
        this.d.c(i);
    }

    @Override // a.a.a.c.f
    protected final void a(Object obj, Object obj2) {
        this.d.put(obj, obj2);
    }

    @Override // a.a.a.c.f
    protected final int b(Object obj) {
        return this.d.a(obj);
    }

    @Override // a.a.a.c.f
    protected final Map b() {
        return this.d;
    }

    @Override // a.a.a.c.f
    protected final void c() {
        this.d.clear();
    }
}
