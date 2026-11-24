package nl.ndsc.kitkatlauncher.b;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Process;
import android.widget.Toast;
import java.io.File;
import java.text.DateFormat;
import java.util.Date;
import nl.ndsc.kitkatlauncher.C0189e;
import nl.ndsc.kitkatlauncher.ProgressBarPreference;

/* JADX INFO: loaded from: classes.dex */
final class d extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f421a;
    private Exception b;
    private ProgressBarPreference c;
    private /* synthetic */ b d;

    d(b bVar, Context context) {
        this.d = bVar;
        this.f421a = context;
        this.c = (ProgressBarPreference) bVar.findPreference("setting_restore_key");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(File... fileArr) {
        Process.setThreadPriority(10);
        try {
            new C0189e(this.f421a).a(fileArr[0]);
            return null;
        } catch (Exception e) {
            this.b = e;
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        super.onPostExecute((Void) obj);
        this.c.a().setVisibility(4);
        this.d.f419a = false;
        if (this.b != null) {
            Toast.makeText(this.d.getActivity(), "Restore failed: " + this.b.getMessage(), 0).show();
            return;
        }
        a.a.a.c.d.b(this.d.getActivity(), DateFormat.getDateTimeInstance().format(new Date()));
        Toast.makeText(this.d.getActivity(), "Restore finished", 0).show();
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        this.d.f419a = true;
        this.c.a().setVisibility(0);
        a.a.a.c.d.b((Context) this.d.getActivity(), true);
    }
}
