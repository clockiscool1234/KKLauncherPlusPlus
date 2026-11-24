package nl.ndsc.kitkatlauncher;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.android.launcher3.dB;
import com.android.launcher3.dF;
import com.android.launcher3.dG;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ContentResolver f432a;
    final Uri b = dG.f262a;
    final Uri c = dF.f261a;
    private Context d;
    private dB e;

    public f(Context context) {
        this.d = context;
        this.f432a = this.d.getContentResolver();
    }

    public final void a(int i) {
        int i2 = 0;
        ContentValues[] contentValuesArr = new ContentValues[i];
        Cursor cursorQuery = this.f432a.query(this.b, null, null, null, null);
        int i3 = 0;
        while (cursorQuery.moveToNext()) {
            int i4 = cursorQuery.getInt(1);
            if (i4 > i3) {
                i3 = i4;
            }
        }
        cursorQuery.close();
        int i5 = i3 + 1;
        while (i2 < i) {
            ContentValues contentValues = new ContentValues();
            if (this.e == null) {
                this.e = new dB(this.d);
            }
            contentValues.put("_id", Long.valueOf(this.e.c()));
            contentValues.put("screenRank", Integer.valueOf(i5));
            contentValuesArr[i2] = contentValues;
            i2++;
            i5++;
        }
        this.f432a.bulkInsert(this.b, contentValuesArr);
    }
}
