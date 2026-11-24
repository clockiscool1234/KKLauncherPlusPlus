package nl.ndsc.kitkatlauncher;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.NumberPicker;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class g extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f433a = "GridSize";
    public static String b = "GridSizeDrawer";
    private View c;
    private NumberPicker d;
    private NumberPicker e;

    static /* synthetic */ void a(g gVar) {
        String tag = gVar.getTag();
        int value = gVar.d.getValue();
        int value2 = gVar.e.getValue();
        if (tag == f433a) {
            a.a.a.c.d.f(gVar.getActivity(), value);
            a.a.a.c.d.g(gVar.getActivity(), value2);
        } else {
            a.a.a.c.d.h(gVar.getActivity(), value);
            a.a.a.c.d.i(gVar.getActivity(), value2);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        int iC;
        int iD;
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        this.c = getActivity().getLayoutInflater().inflate(R.layout.klp_dialog_gridsize, (ViewGroup) null);
        builder.setView(this.c).setTitle("Grid Size").setPositiveButton("Save", new h(this)).setNegativeButton("Cancel", new i(this));
        if (getTag() == f433a) {
            iC = a.a.a.c.d.a(getActivity(), 5);
            iD = a.a.a.c.d.b(getActivity(), 5);
        } else {
            iC = a.a.a.c.d.c(getActivity(), 5);
            iD = a.a.a.c.d.d(getActivity(), 5);
        }
        this.d = (NumberPicker) this.c.findViewById(R.id.rowPicker);
        this.d.setMinValue(3);
        this.d.setMaxValue(10);
        this.d.setWrapSelectorWheel(false);
        this.d.setValue(iC);
        this.e = (NumberPicker) this.c.findViewById(R.id.columnPicker);
        this.e.setMinValue(3);
        this.e.setMaxValue(10);
        this.e.setWrapSelectorWheel(false);
        this.e.setValue(iD);
        return builder.create();
    }
}
