package nl.ndsc.kitkatlauncher.b;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class j extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f424a;

    j(h hVar) {
        this.f424a = hVar;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        k kVar = new k(this);
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = this.f424a.getActivity().getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            nl.ndsc.kitkatlauncher.a.a aVar = new nl.ndsc.kitkatlauncher.a.a();
            aVar.f415a = (String) resolveInfo.loadLabel(packageManager);
            aVar.b = resolveInfo.activityInfo.packageName;
            aVar.c = resolveInfo.activityInfo.name;
            aVar.d = resolveInfo.loadIcon(packageManager);
            arrayList.add(aVar);
        }
        Collections.sort(arrayList, kVar);
        return arrayList;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        this.f424a.b = (List) obj;
        h.a(this.f424a);
        this.f424a.d.setVisibility(8);
        this.f424a.c.setVisibility(0);
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
    }
}
