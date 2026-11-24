package nl.ndsc.kitkatlauncher;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import com.android.launcher3.R;

/* JADX INFO: renamed from: nl.ndsc.kitkatlauncher.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogFragmentC0185a extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InterfaceC0188d f414a;

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        this.f414a = (InterfaceC0188d) getTargetFragment();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(R.string.backup_dialog_text).setTitle("Create new Backup").setPositiveButton("Create", new DialogInterfaceOnClickListenerC0186b(this)).setNegativeButton("Cancel", new DialogInterfaceOnClickListenerC0187c(this));
        return builder.create();
    }
}
