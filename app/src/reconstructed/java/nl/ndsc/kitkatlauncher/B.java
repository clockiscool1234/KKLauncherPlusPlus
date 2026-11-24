package nl.ndsc.kitkatlauncher;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class B extends DialogFragment implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private D f410a;
    private List b;

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dismiss();
        if (this.b != null) {
            this.f410a.a((nl.ndsc.kitkatlauncher.a.c) this.b.get(i));
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        String str;
        this.f410a = (D) getTargetFragment();
        this.b = C0189e.b();
        E e = new E(getActivity(), this.b);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (this.b == null || this.b.size() <= 0) {
            builder.setMessage("No backups found.");
            str = "Ok";
        } else {
            str = "Cancel";
            builder.setSingleChoiceItems(e, 0, this);
        }
        builder.setTitle("Choose Restore").setNegativeButton(str, new C(this));
        return builder.create();
    }
}
