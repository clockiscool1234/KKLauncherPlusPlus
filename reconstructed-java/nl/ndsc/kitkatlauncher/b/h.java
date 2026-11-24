package nl.ndsc.kitkatlauncher.b;

import android.app.ListFragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.android.launcher3.R;
import java.util.List;
import nl.ndsc.kitkatlauncher.v;

/* JADX INFO: loaded from: classes.dex */
public final class h extends ListFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private v f423a;
    private List b;
    private ListView c;
    private ProgressBar d;

    static /* synthetic */ void a(h hVar) {
        hVar.f423a = new v(hVar.getActivity(), hVar.b);
        hVar.c.setAdapter((ListAdapter) hVar.f423a);
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.klp_activity_hide_apps, viewGroup, false);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        getActivity().getActionBar().setSubtitle("Hide Applications");
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.c = (ListView) view.findViewById(android.R.id.list);
        this.c.setOnItemClickListener(new i(this));
        this.d = (ProgressBar) view.findViewById(R.id.hideAppsProgressBar);
        new j(this).execute(new Void[0]);
    }
}
