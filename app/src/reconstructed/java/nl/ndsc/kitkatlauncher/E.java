package nl.ndsc.kitkatlauncher;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.android.launcher3.R;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class E extends ArrayAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f412a;
    private final List b;

    public E(Context context, List list) {
        super(context, R.layout.klp_activity_restore_row, list);
        this.f412a = context;
        this.b = list;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate = ((LayoutInflater) this.f412a.getSystemService("layout_inflater")).inflate(R.layout.klp_activity_restore_row, viewGroup, false);
        ((TextView) viewInflate.findViewById(R.id.restoreFilename)).setText(DateFormat.getDateTimeInstance().format(new Date(((long) Integer.parseInt(((nl.ndsc.kitkatlauncher.a.c) this.b.get(i)).f417a.getName().split("\\.")[0])) * 1000)));
        TextView textView = (TextView) viewInflate.findViewById(R.id.restoreFileStats);
        nl.ndsc.kitkatlauncher.a.c cVar = (nl.ndsc.kitkatlauncher.a.c) this.b.get(i);
        StringBuilder sb = new StringBuilder();
        if (cVar.b > 1) {
            sb.append(String.valueOf(cVar.b) + " items, ");
        } else {
            sb.append(String.valueOf(cVar.b) + " item, ");
        }
        if (cVar.c > 1) {
            sb.append(String.valueOf(cVar.c) + " screens");
        } else {
            sb.append(String.valueOf(cVar.c) + " screen");
        }
        textView.setText(sb.toString());
        return viewInflate;
    }
}
