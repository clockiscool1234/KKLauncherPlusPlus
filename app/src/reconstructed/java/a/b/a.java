package a.b;

import a.a.a.c.d;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {
    private final Object c;

    public a(int i) {
        super(64);
        this.c = new Object();
    }

    @Override // a.a.a.c.d
    public final Object a() {
        Object objA;
        synchronized (this.c) {
            objA = super.a();
        }
        return objA;
    }

    @Override // a.a.a.c.d
    public final boolean a(Object obj) {
        boolean zA;
        synchronized (this.c) {
            zA = super.a(obj);
        }
        return zA;
    }
}
