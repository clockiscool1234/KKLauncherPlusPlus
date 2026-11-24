package a.a.a.a;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class s implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    u[] f14a;
    int[] b;
    C0002c[] c;

    static {
        new t();
    }

    public s() {
    }

    public s(Parcel parcel) {
        this.f14a = (u[]) parcel.createTypedArray(u.c);
        this.b = parcel.createIntArray();
        this.c = (C0002c[]) parcel.createTypedArray(C0002c.f3a);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f14a, i);
        parcel.writeIntArray(this.b);
        parcel.writeTypedArray(this.c, i);
    }
}
