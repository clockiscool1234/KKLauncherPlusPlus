package a.a.a.a;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class i extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f7a;

    i(h hVar) {
        this.f7a = hVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                if (this.f7a.c) {
                    this.f7a.a(false);
                }
                break;
            case 2:
                this.f7a.a();
                this.f7a.b.b();
                break;
            default:
                super.handleMessage(message);
                break;
        }
    }
}
