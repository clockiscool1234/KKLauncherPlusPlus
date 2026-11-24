package com.android.launcher3;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.android.launcher3.fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ActionModeCallbackC0140fa implements ActionMode.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eS f371a;

    ActionModeCallbackC0140fa(eS eSVar) {
        this.f371a = eSVar;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.menu_delete) {
            return false;
        }
        int childCount = this.f371a.f.getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < childCount; i++) {
            CheckableFrameLayout checkableFrameLayout = (CheckableFrameLayout) this.f371a.f.getChildAt(i);
            if (checkableFrameLayout.isChecked()) {
                ((AbstractC0149fj) checkableFrameLayout.getTag()).c(this.f371a);
                arrayList.add(checkableFrameLayout);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f371a.f.removeView((View) it.next());
        }
        this.f371a.i();
        actionMode.finish();
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.getMenuInflater().inflate(R.menu.cab_delete_wallpapers, menu);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        int childCount = this.f371a.f.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((CheckableFrameLayout) this.f371a.f.getChildAt(i)).setChecked(false);
        }
        this.f371a.b.setSelected(true);
        this.f371a.i = null;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        int childCount = this.f371a.f.getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            int i3 = ((CheckableFrameLayout) this.f371a.f.getChildAt(i)).isChecked() ? i2 + 1 : i2;
            i++;
            i2 = i3;
        }
        if (i2 == 0) {
            actionMode.finish();
        } else {
            actionMode.setTitle(this.f371a.getResources().getQuantityString(R.plurals.number_of_items_selected, i2, Integer.valueOf(i2)));
        }
        return true;
    }
}
