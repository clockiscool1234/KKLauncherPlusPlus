package a.a.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class i implements Set {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ f f26a;

    i(f fVar) {
        this.f26a = fVar;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.f26a.c();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f26a.a(obj) >= 0;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Map mapB = this.f26a.b();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!mapB.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        return f.a((Set) this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        int iHashCode = 0;
        for (int iA = this.f26a.a() - 1; iA >= 0; iA--) {
            Object objA = this.f26a.a(iA, 0);
            iHashCode += objA == null ? 0 : objA.hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.f26a.a() == 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new g(this.f26a, 0);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        int iA = this.f26a.a(obj);
        if (iA < 0) {
            return false;
        }
        this.f26a.a(iA);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Map mapB = this.f26a.b();
        int size = mapB.size();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            mapB.remove(it.next());
        }
        return size != mapB.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Map mapB = this.f26a.b();
        int size = mapB.size();
        Iterator it = mapB.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != mapB.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.f26a.a();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return this.f26a.b(0);
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f26a.a(objArr, 0);
    }
}
