package a.a.a.c;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public final class e extends Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22a;
    private StringBuilder b = new StringBuilder(128);

    public e(String str) {
        this.f22a = str;
    }

    private void a() {
        if (this.b.length() > 0) {
            Log.d(this.f22a, this.b.toString());
            this.b.delete(0, this.b.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.b.append(c);
            }
        }
    }
}
