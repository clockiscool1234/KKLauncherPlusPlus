package nl.ndsc.kitkatlauncher.b;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Process;
import android.widget.Toast;
import java.text.DateFormat;
import java.util.Date;
import nl.ndsc.kitkatlauncher.C0189e;
import nl.ndsc.kitkatlauncher.ProgressBarPreference;

/* JADX INFO: loaded from: classes.dex */
final class c extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f420a;
    private Exception b;
    private ProgressBarPreference c;
    private /* synthetic */ b d;

    c(b bVar, Context context) {
        this.d = bVar;
        this.f420a = context;
        this.c = (ProgressBarPreference) bVar.findPreference("setting_backup_key");
    }

    private Void a() {
        Process.setThreadPriority(10);
        try {
            new C0189e(this.f420a).a();
            return null;
        } catch (Exception e) {
            this.b = e;
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        return a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        super.onPostExecute((Void) obj);
        this.c.a().setVisibility(4);
        this.d.f419a = false;
        if (this.b != null) {
            Toast.makeText(this.d.getActivity(), "Backup failed: " + this.b.getMessage(), 0).show();
            return;
        }
        a.a.a.c.d.a(this.d.getActivity(), DateFormat.getDateTimeInstance().format(new Date()));
        this.d.e();
        Toast.makeText(this.d.getActivity(), "Backup finished", 0).show();
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        this.c.a().setVisibility(0);
        this.d.f419a = true;
    }
}
