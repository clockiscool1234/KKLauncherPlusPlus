package nl.ndsc.kitkatlauncher;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class k implements Comparator {
    k() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return ((File) obj2).getName().compareTo(((File) obj).getName());
    }
}
