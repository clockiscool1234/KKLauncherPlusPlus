package com.android.launcher3;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.fd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0143fd extends BaseAdapter implements ListAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LayoutInflater f374a;
    private ArrayList b;

    C0143fd(Activity activity, ArrayList arrayList) {
        this.f374a = activity.getLayoutInflater();
        this.b = arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.b.size();
    }

    @Override // android.widget.Adapter
    public final /* synthetic */ Object getItem(int i) {
        return (C0146fg) this.b.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Drawable drawable = ((C0146fg) this.b.get(i)).d;
        if (drawable == null) {
            Log.e("Launcher.WallpaperPickerActivity", "Error decoding thumbnail for wallpaper #" + i);
        }
        return eS.a(this.f374a, view, viewGroup, drawable);
    }
}
