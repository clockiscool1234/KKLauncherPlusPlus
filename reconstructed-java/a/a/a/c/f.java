package a.a.a.c;

import java.lang.reflect.Array;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f23a;
    i b;
    k c;

    f() {
    }

    public static boolean a(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException e) {
            return false;
        } catch (NullPointerException e2) {
            return false;
        }
    }

    protected abstract int a();

    protected abstract int a(Object obj);

    protected abstract Object a(int i, int i2);

    protected abstract Object a(int i, Object obj);

    protected abstract void a(int i);

    protected abstract void a(Object obj, Object obj2);

    public final Object[] a(Object[] objArr, int i) {
        int iA = a();
        Object[] objArr2 = objArr.length < iA ? (Object[]) Array.newInstance(objArr.getClass().getComponentType(), iA) : objArr;
        for (int i2 = 0; i2 < iA; i2++) {
            objArr2[i2] = a(i2, i);
        }
        if (objArr2.length > iA) {
            objArr2[iA] = null;
        }
        return objArr2;
    }

    protected abstract int b(Object obj);

    protected abstract Map b();

    public final Object[] b(int i) {
        int iA = a();
        Object[] objArr = new Object[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            objArr[i2] = a(i2, i);
        }
        return objArr;
    }

    protected abstract void c();
}
