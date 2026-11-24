package com.android.a.b;

import android.util.Log;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f43a;

    i(c cVar) {
        this.f43a = cVar;
    }

    protected final b a(InputStream inputStream) {
        e eVarA = e.a(inputStream, this.f43a);
        b bVar = new b(eVarA.g());
        while (true) {
            int iA = eVarA.a();
            if (iA == 5) {
                return bVar;
            }
            switch (iA) {
                case 0:
                    bVar.a(new k(eVarA.c()));
                    break;
                case 1:
                    j jVarB = eVarA.b();
                    if (!jVarB.f()) {
                        eVarA.a(jVarB);
                    } else {
                        bVar.a(jVarB.a()).a(jVarB);
                    }
                    break;
                case 2:
                    j jVarB2 = eVarA.b();
                    if (jVarB2.c() == 7) {
                        eVarA.b(jVarB2);
                    }
                    bVar.a(jVarB2.a()).a(jVarB2);
                    break;
                case 3:
                    byte[] bArr = new byte[eVarA.f()];
                    if (bArr.length != eVarA.a(bArr)) {
                        Log.w("ExifReader", "Failed to read the compressed thumbnail");
                    } else {
                        bVar.a(bArr);
                    }
                    break;
                case 4:
                    byte[] bArr2 = new byte[eVarA.e()];
                    if (bArr2.length != eVarA.a(bArr2)) {
                        Log.w("ExifReader", "Failed to read the strip bytes");
                    } else {
                        bVar.a(eVarA.d(), bArr2);
                    }
                    break;
            }
        }
    }
}
