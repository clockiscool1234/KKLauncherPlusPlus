package nl.ndsc.kitkatlauncher;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes.dex */
final class j implements FilenameFilter {
    j() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str.substring(str.lastIndexOf(".") + 1, str.length()).equals("json");
    }
}
