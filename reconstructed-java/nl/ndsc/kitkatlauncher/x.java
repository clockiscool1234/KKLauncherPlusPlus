package nl.ndsc.kitkatlauncher;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class x extends DialogFragment {
    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(R.string.pro_dialog_text).setTitle("Feature locked").setPositiveButton("Play Store", new y(this)).setNegativeButton("Cancel", new z(this));
        return builder.create();
    }
}
