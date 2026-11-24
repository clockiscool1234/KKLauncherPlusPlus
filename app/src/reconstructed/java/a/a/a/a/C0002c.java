package a.a.a.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: renamed from: a.a.a.a.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0002c implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Parcelable.Creator f3a = new C0003d();
    private int[] b;
    private int c;
    private int d;
    private String e;
    private int f;
    private int g;
    private CharSequence h;
    private int i;
    private CharSequence j;

    public C0002c(RunnableC0001b runnableC0001b) {
        int size = 0;
        for (C0000a c0000a = runnableC0001b.f2a; c0000a != null; c0000a = c0000a.f1a) {
            if (c0000a.i != null) {
                size += c0000a.i.size();
            }
        }
        this.b = new int[size + (runnableC0001b.b * 7)];
        if (!runnableC0001b.e) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        for (C0000a c0000a2 = runnableC0001b.f2a; c0000a2 != null; c0000a2 = c0000a2.f1a) {
            int i2 = i + 1;
            this.b[i] = c0000a2.c;
            int i3 = i2 + 1;
            this.b[i2] = c0000a2.d != null ? c0000a2.d.f : -1;
            int i4 = i3 + 1;
            this.b[i3] = c0000a2.e;
            int i5 = i4 + 1;
            this.b[i4] = c0000a2.f;
            int i6 = i5 + 1;
            this.b[i5] = c0000a2.g;
            int i7 = i6 + 1;
            this.b[i6] = c0000a2.h;
            if (c0000a2.i != null) {
                int size2 = c0000a2.i.size();
                int i8 = i7 + 1;
                this.b[i7] = size2;
                int i9 = 0;
                while (i9 < size2) {
                    this.b[i8] = ((ComponentCallbacksC0004e) c0000a2.i.get(i9)).f;
                    i9++;
                    i8++;
                }
                i = i8;
            } else {
                i = i7 + 1;
                this.b[i7] = 0;
            }
        }
        this.c = runnableC0001b.c;
        this.d = runnableC0001b.d;
        this.e = runnableC0001b.f;
        this.f = runnableC0001b.g;
        this.g = runnableC0001b.h;
        this.h = runnableC0001b.i;
        this.i = runnableC0001b.j;
        this.j = runnableC0001b.k;
    }

    public C0002c(Parcel parcel) {
        this.b = parcel.createIntArray();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readString();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.i = parcel.readInt();
        this.j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }

    public final RunnableC0001b a(p pVar) {
        RunnableC0001b runnableC0001b = new RunnableC0001b(pVar);
        int i = 0;
        while (i < this.b.length) {
            C0000a c0000a = new C0000a();
            int i2 = i + 1;
            c0000a.c = this.b[i];
            int i3 = i2 + 1;
            int i4 = this.b[i2];
            if (i4 >= 0) {
                c0000a.d = (ComponentCallbacksC0004e) pVar.b.get(i4);
            } else {
                c0000a.d = null;
            }
            int i5 = i3 + 1;
            c0000a.e = this.b[i3];
            int i6 = i5 + 1;
            c0000a.f = this.b[i5];
            int i7 = i6 + 1;
            c0000a.g = this.b[i6];
            int i8 = i7 + 1;
            c0000a.h = this.b[i7];
            i = i8 + 1;
            int i9 = this.b[i8];
            if (i9 > 0) {
                c0000a.i = new ArrayList(i9);
                int i10 = 0;
                while (i10 < i9) {
                    c0000a.i.add((ComponentCallbacksC0004e) pVar.b.get(this.b[i]));
                    i10++;
                    i++;
                }
            }
            runnableC0001b.a(c0000a);
        }
        runnableC0001b.c = this.c;
        runnableC0001b.d = this.d;
        runnableC0001b.f = this.e;
        runnableC0001b.g = this.f;
        runnableC0001b.e = true;
        runnableC0001b.h = this.g;
        runnableC0001b.i = this.h;
        runnableC0001b.j = this.i;
        runnableC0001b.k = this.j;
        runnableC0001b.a(1);
        return runnableC0001b;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        TextUtils.writeToParcel(this.h, parcel, 0);
        parcel.writeInt(this.i);
        TextUtils.writeToParcel(this.j, parcel, 0);
    }
}
