package a.a.a.a;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class t implements Parcelable.Creator {
    t() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new s(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new s[i];
    }
}
