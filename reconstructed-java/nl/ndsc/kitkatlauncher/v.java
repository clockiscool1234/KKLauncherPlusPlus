package nl.ndsc.kitkatlauncher;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.R;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class v extends ArrayAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f444a;
    private final List b;
    private final Set c;

    public v(Context context, List list) {
        super(context, R.layout.klp_activity_hide_apps_row, list);
        this.f444a = context;
        this.b = list;
        this.c = a.a.a.c.d.p(context);
    }

    public static void a(View view, boolean z) {
        TextView textView = (TextView) view.findViewById(R.id.packageLabel);
        TextView textView2 = (TextView) view.findViewById(R.id.packageName);
        ImageView imageView = (ImageView) view.findViewById(R.id.packageIcon);
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.packageCheckBox);
        float f = z ? 1.0f : 0.3f;
        textView.setAlpha(f);
        textView2.setAlpha(f);
        imageView.setAlpha(f);
        checkBox.setAlpha(f);
    }

    public final void a(View view) {
        a(view, false);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate = ((LayoutInflater) this.f444a.getSystemService("layout_inflater")).inflate(R.layout.klp_activity_hide_apps_row, viewGroup, false);
        nl.ndsc.kitkatlauncher.a.a aVar = (nl.ndsc.kitkatlauncher.a.a) this.b.get(i);
        TextView textView = (TextView) viewInflate.findViewById(R.id.packageLabel);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.packageName);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.packageIcon);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.packageCheckBox);
        textView.setText(aVar.f415a);
        textView2.setText(aVar.b);
        imageView.setImageDrawable(aVar.d);
        if (this.c.contains(aVar.c)) {
            checkBox.setChecked(true);
            a(viewInflate, false);
        }
        checkBox.setOnCheckedChangeListener(new w(this, aVar, viewInflate));
        return viewInflate;
    }
}
