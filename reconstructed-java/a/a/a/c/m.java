package a.a.a.c;

/* JADX INFO: loaded from: classes.dex */
public final class m implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f30a = new Object();
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    public m() {
        this(10);
    }

    private m(int i) {
        this.b = false;
        int iA = c.a(10);
        this.c = new int[iA];
        this.d = new Object[iA];
        this.e = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public m clone() {
        try {
            m mVar = (m) super.clone();
            try {
                mVar.c = (int[]) this.c.clone();
                mVar.d = (Object[]) this.d.clone();
                return mVar;
            } catch (CloneNotSupportedException e) {
                return mVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public final int a() {
        return this.e;
    }

    public final int a(int i) {
        return this.c[i];
    }

    public final Object b(int i) {
        return this.d[i];
    }

    public final void b() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public final String toString() {
        if (this.e <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(this.c[i]);
            sb.append('=');
            Object obj = this.d[i];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
