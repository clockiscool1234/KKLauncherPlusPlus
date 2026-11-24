package nl.ndsc.kitkatlauncher.b;

import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
final class i implements AdapterView.OnItemClickListener {
    i(h hVar) {
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.packageCheckBox);
        if (checkBox != null) {
            checkBox.toggle();
        }
    }
}
