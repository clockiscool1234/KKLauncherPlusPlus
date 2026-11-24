package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class dK extends BaseAdapter implements ListAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutInflater f265a;
    private final PackageManager b;
    private List c;

    public dK(Context context) {
        this.f265a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.b = context.getPackageManager();
        List<ResolveInfo> listQueryIntentServices = this.b.queryIntentServices(new Intent("android.service.wallpaper.WallpaperService"), 128);
        this.c = new ArrayList();
        new dL(this, context).execute(listQueryIntentServices);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        if (this.c == null) {
            return 0;
        }
        return this.c.size();
    }

    @Override // android.widget.Adapter
    public final /* synthetic */ Object getItem(int i) {
        return (dN) this.c.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate = view == null ? this.f265a.inflate(R.layout.wallpaper_picker_live_wallpaper_item, viewGroup, false) : view;
        eS.a((FrameLayout) viewInflate);
        dN dNVar = (dN) this.c.get(i);
        dNVar.a(viewInflate);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.wallpaper_image);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.wallpaper_icon);
        if (dNVar.f268a != null) {
            imageView.setImageDrawable(dNVar.f268a);
            imageView2.setVisibility(8);
        } else {
            imageView2.setImageDrawable(dNVar.c.loadIcon(this.b));
            imageView2.setVisibility(0);
        }
        ((TextView) viewInflate.findViewById(R.id.wallpaper_item_label)).setText(dNVar.c.loadLabel(this.b));
        return viewInflate;
    }
}
