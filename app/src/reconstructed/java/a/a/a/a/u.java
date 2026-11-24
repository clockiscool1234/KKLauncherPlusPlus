package a.a.a.a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class u implements Parcelable {
    public static final Parcelable.Creator c = new v();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Bundle f15a;
    ComponentCallbacksC0004e b;
    private String d;
    private int e;
    private boolean f;
    private int g;
    private int h;
    private String i;
    private boolean j;
    private boolean k;
    private Bundle l;

    public u(ComponentCallbacksC0004e componentCallbacksC0004e) {
        this.d = componentCallbacksC0004e.getClass().getName();
        this.e = componentCallbacksC0004e.f;
        this.f = componentCallbacksC0004e.o;
        this.g = componentCallbacksC0004e.w;
        this.h = componentCallbacksC0004e.x;
        this.i = componentCallbacksC0004e.y;
        this.j = componentCallbacksC0004e.B;
        this.k = componentCallbacksC0004e.A;
        this.l = componentCallbacksC0004e.h;
    }

    public u(Parcel parcel) {
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt() != 0;
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = parcel.readString();
        this.j = parcel.readInt() != 0;
        this.k = parcel.readInt() != 0;
        this.l = parcel.readBundle();
        this.f15a = parcel.readBundle();
    }

    public final ComponentCallbacksC0004e a(h hVar, ComponentCallbacksC0004e componentCallbacksC0004e) {
        if (this.b != null) {
            return this.b;
        }
        if (this.l != null) {
            this.l.setClassLoader(hVar.getClassLoader());
        }
        this.b = ComponentCallbacksC0004e.a(hVar, this.d, this.l);
        if (this.f15a != null) {
            this.f15a.setClassLoader(hVar.getClassLoader());
            this.b.d = this.f15a;
        }
        this.b.a(this.e, componentCallbacksC0004e);
        this.b.o = this.f;
        this.b.q = true;
        this.b.w = this.g;
        this.b.x = this.h;
        this.b.y = this.i;
        this.b.B = this.j;
        this.b.A = this.k;
        this.b.s = hVar.b;
        return this.b;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeString(this.i);
        parcel.writeInt(this.j ? 1 : 0);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.l);
        parcel.writeBundle(this.f15a);
    }
}
