package a.a.a.a;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: a.a.a.a.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0003d implements Parcelable.Creator {
    C0003d() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new C0002c(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new C0002c[i];
    }
}
