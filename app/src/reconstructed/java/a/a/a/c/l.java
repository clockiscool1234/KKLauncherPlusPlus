package a.a.a.c;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class l {
    private static Object[] c;
    private static int d;
    private static Object[] e;
    private static int f;
    private int[] g = c.f20a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object[] f29a = c.b;
    int b = 0;

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (a.class) {
                if (f < 10) {
                    objArr[0] = e;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    e = objArr;
                    f++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (a.class) {
                if (d < 10) {
                    objArr[0] = c;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    c = objArr;
                    d++;
                }
            }
        }
    }

    private void d(int i) {
        if (i == 8) {
            synchronized (a.class) {
                if (e != null) {
                    Object[] objArr = e;
                    this.f29a = objArr;
                    e = (Object[]) objArr[0];
                    this.g = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (a.class) {
                if (c != null) {
                    Object[] objArr2 = c;
                    this.f29a = objArr2;
                    c = (Object[]) objArr2[0];
                    this.g = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    d--;
                    return;
                }
            }
        }
        this.g = new int[i];
        this.f29a = new Object[i << 1];
    }

    private Object e(int i) {
        return this.f29a[i << 1];
    }

    final int a() {
        int i = this.b;
        if (i == 0) {
            return -1;
        }
        int iA = c.a(this.g, i, 0);
        if (iA < 0 || this.f29a[iA << 1] == null) {
            return iA;
        }
        int i2 = iA + 1;
        while (i2 < i && this.g[i2] == 0) {
            if (this.f29a[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iA - 1; i3 >= 0 && this.g[i3] == 0; i3--) {
            if (this.f29a[i3 << 1] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    final int a(Object obj) {
        int i = 1;
        int i2 = this.b << 1;
        Object[] objArr = this.f29a;
        if (obj == null) {
            while (i < i2) {
                if (objArr[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        } else {
            while (i < i2) {
                if (obj.equals(objArr[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }

    final int a(Object obj, int i) {
        int i2 = this.b;
        if (i2 == 0) {
            return -1;
        }
        int iA = c.a(this.g, i2, i);
        if (iA < 0 || obj.equals(this.f29a[iA << 1])) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.g[i3] == i) {
            if (obj.equals(this.f29a[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.g[i4] == i; i4--) {
            if (obj.equals(this.f29a[i4 << 1])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    public final void a(int i) {
        if (this.g.length < i) {
            int[] iArr = this.g;
            Object[] objArr = this.f29a;
            d(i);
            if (this.b > 0) {
                System.arraycopy(iArr, 0, this.g, 0, this.b);
                System.arraycopy(objArr, 0, this.f29a, 0, this.b << 1);
            }
            a(iArr, objArr, this.b);
        }
    }

    public final Object b(int i) {
        return this.f29a[(i << 1) + 1];
    }

    public final Object c(int i) {
        Object obj = this.f29a[(i << 1) + 1];
        if (this.b <= 1) {
            a(this.g, this.f29a, this.b);
            this.g = c.f20a;
            this.f29a = c.b;
            this.b = 0;
        } else if (this.g.length <= 8 || this.b >= this.g.length / 3) {
            this.b--;
            if (i < this.b) {
                System.arraycopy(this.g, i + 1, this.g, i, this.b - i);
                System.arraycopy(this.f29a, (i + 1) << 1, this.f29a, i << 1, (this.b - i) << 1);
            }
            this.f29a[this.b << 1] = null;
            this.f29a[(this.b << 1) + 1] = null;
        } else {
            int i2 = this.b > 8 ? this.b + (this.b >> 1) : 8;
            int[] iArr = this.g;
            Object[] objArr = this.f29a;
            d(i2);
            this.b--;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.g, 0, i);
                System.arraycopy(objArr, 0, this.f29a, 0, i << 1);
            }
            if (i < this.b) {
                System.arraycopy(iArr, i + 1, this.g, i, this.b - i);
                System.arraycopy(objArr, (i + 1) << 1, this.f29a, i << 1, (this.b - i) << 1);
            }
        }
        return obj;
    }

    public void clear() {
        if (this.b != 0) {
            a(this.g, this.f29a, this.b);
            this.g = c.f20a;
            this.f29a = c.b;
            this.b = 0;
        }
    }

    public boolean containsKey(Object obj) {
        if (obj == null) {
            return a() >= 0;
        }
        return a(obj, obj.hashCode()) >= 0;
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        for (int i = 0; i < this.b; i++) {
            try {
                Object objE = e(i);
                Object objB = b(i);
                Object obj2 = map.get(objE);
                if (objB == null) {
                    if (obj2 != null || !map.containsKey(objE)) {
                        return false;
                    }
                } else if (!objB.equals(obj2)) {
                    return false;
                }
            } catch (ClassCastException e2) {
                return false;
            } catch (NullPointerException e3) {
                return false;
            }
        }
        return true;
    }

    public Object get(Object obj) {
        int iA = obj == null ? a() : a(obj, obj.hashCode());
        if (iA >= 0) {
            return this.f29a[(iA << 1) + 1];
        }
        return null;
    }

    public int hashCode() {
        int[] iArr = this.g;
        Object[] objArr = this.f29a;
        int i = this.b;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.b <= 0;
    }

    public Object put(Object obj, Object obj2) {
        int iHashCode;
        int iA;
        int i = 8;
        if (obj == null) {
            iA = a();
            iHashCode = 0;
        } else {
            iHashCode = obj.hashCode();
            iA = a(obj, iHashCode);
        }
        if (iA >= 0) {
            int i2 = (iA << 1) + 1;
            Object obj3 = this.f29a[i2];
            this.f29a[i2] = obj2;
            return obj3;
        }
        int i3 = iA ^ (-1);
        if (this.b >= this.g.length) {
            if (this.b >= 8) {
                i = this.b + (this.b >> 1);
            } else if (this.b < 4) {
                i = 4;
            }
            int[] iArr = this.g;
            Object[] objArr = this.f29a;
            d(i);
            if (this.g.length > 0) {
                System.arraycopy(iArr, 0, this.g, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f29a, 0, objArr.length);
            }
            a(iArr, objArr, this.b);
        }
        if (i3 < this.b) {
            System.arraycopy(this.g, i3, this.g, i3 + 1, this.b - i3);
            System.arraycopy(this.f29a, i3 << 1, this.f29a, (i3 + 1) << 1, (this.b - i3) << 1);
        }
        this.g[i3] = iHashCode;
        this.f29a[i3 << 1] = obj;
        this.f29a[(i3 << 1) + 1] = obj2;
        this.b++;
        return null;
    }

    public Object remove(Object obj) {
        int iA = obj == null ? a() : a(obj, obj.hashCode());
        if (iA >= 0) {
            return c(iA);
        }
        return null;
    }

    public int size() {
        return this.b;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.b * 28);
        sb.append('{');
        for (int i = 0; i < this.b; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object objE = e(i);
            if (objE != this) {
                sb.append(objE);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objB = b(i);
            if (objB != this) {
                sb.append(objB);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
