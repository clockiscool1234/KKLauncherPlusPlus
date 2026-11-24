package nl.ndsc.kitkatlauncher.b;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class k implements Comparator {
    k(j jVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return String.CASE_INSENSITIVE_ORDER.compare(((nl.ndsc.kitkatlauncher.a.a) obj).f415a, ((nl.ndsc.kitkatlauncher.a.a) obj2).f415a);
    }
}
