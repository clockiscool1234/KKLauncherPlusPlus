package nl.ndsc.kitkatlauncher;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.NumberPicker;
import android.widget.RadioButton;
import android.widget.TextView;
import com.android.launcher3.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class p extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    NumberPicker f439a;
    private View b;
    private int c;
    private f d;

    private RadioButton a(int i) {
        return (RadioButton) this.b.findViewById(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextView a() {
        return (TextView) this.b.findViewById(R.id.screenRemovalWarning);
    }

    static /* synthetic */ void a(p pVar) {
        int value = pVar.a(R.id.radioButtonStatic).isChecked() ? pVar.f439a.getValue() : 0;
        a.a.a.c.d.e(pVar.getActivity(), value);
        if (value == pVar.c || value == 0) {
            return;
        }
        if (value > pVar.c) {
            pVar.d.a(value - pVar.c);
            return;
        }
        f fVar = pVar.d;
        int i = pVar.c - value;
        Cursor cursorQuery = fVar.f432a.query(fVar.b, null, null, null, "screenRank");
        ArrayList arrayList = new ArrayList();
        while (cursorQuery.moveToNext()) {
            arrayList.add(Long.valueOf(cursorQuery.getLong(0)));
        }
        int size = arrayList.size();
        for (int i2 = size - i; i2 < size; i2++) {
            String string = ((Long) arrayList.get(i2)).toString();
            fVar.f432a.delete(fVar.b, "_id=?", new String[]{string});
            fVar.f432a.delete(fVar.c, "screen=?", new String[]{string});
        }
    }

    static /* synthetic */ void a(p pVar, NumberPicker numberPicker, int i, int i2) {
        TextView textViewA = pVar.a();
        if (i2 >= pVar.c) {
            textViewA.setVisibility(4);
            return;
        }
        int i3 = pVar.c - i2;
        if (i3 == 1) {
            textViewA.setText("1 screen will be deleted");
        } else {
            textViewA.setText(String.valueOf(i3) + " screens will be deleted");
        }
        textViewA.setVisibility(0);
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        this.d = new f(getActivity());
        f fVar = new f(getActivity());
        Cursor cursorQuery = fVar.f432a.query(fVar.b, null, null, null, null);
        int count = cursorQuery.getCount();
        cursorQuery.close();
        this.c = count;
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        this.b = getActivity().getLayoutInflater().inflate(R.layout.klp_dialog_numberofscreens, (ViewGroup) null);
        builder.setView(this.b).setTitle("Number of Screens").setPositiveButton("Save", new q(this)).setNegativeButton("Cancel", new r(this));
        this.f439a = (NumberPicker) this.b.findViewById(R.id.numberOfScreensPicker);
        this.f439a.setMinValue(1);
        this.f439a.setMaxValue(20);
        this.f439a.setWrapSelectorWheel(false);
        this.f439a.setValue(this.c);
        this.f439a.setOnValueChangedListener(new u(this));
        if (a.a.a.c.d.l(getActivity()) == 0) {
            a(R.id.radioButtonDynamic).setChecked(true);
            this.f439a.setVisibility(8);
            a().setVisibility(8);
        } else {
            a(R.id.radioButtonStatic).setChecked(true);
            this.f439a.setVisibility(0);
            a().setVisibility(4);
        }
        a(R.id.radioButtonDynamic).setOnCheckedChangeListener(new s(this));
        a(R.id.radioButtonStatic).setOnCheckedChangeListener(new t(this));
        return builder.create();
    }
}
