package nl.ndsc.kitkatlauncher;

/* JADX INFO: loaded from: classes.dex */
final class m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ l f436a;

    m(l lVar) {
        this.f436a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f436a.b();
        this.f436a.f435a = false;
    }
}
