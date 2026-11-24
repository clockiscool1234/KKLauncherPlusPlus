package a.a.a.c;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class j implements Iterator, Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27a;
    private /* synthetic */ f d;
    private boolean c = false;
    private int b = -1;

    j(f fVar) {
        this.d = fVar;
        this.f27a = fVar.a() - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return c.a(entry.getKey(), this.d.a(this.b, 0)) && c.a(entry.getValue(), this.d.a(this.b, 1));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.c) {
            return this.d.a(this.b, 0);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.c) {
            return this.d.a(this.b, 1);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.f27a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        Object objA = this.d.a(this.b, 0);
        Object objA2 = this.d.a(this.b, 1);
        return (objA2 != null ? objA2.hashCode() : 0) ^ (objA == null ? 0 : objA.hashCode());
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.b++;
        this.c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.c) {
            throw new IllegalStateException();
        }
        this.d.a(this.b);
        this.b--;
        this.f27a--;
        this.c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.c) {
            return this.d.a(this.b, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
