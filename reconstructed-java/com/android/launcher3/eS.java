package com.android.launcher3;

import android.animation.LayoutTransition;
import android.app.ActionBar;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.util.Pair;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class eS extends WallpaperCropActivity {
    private View b;
    private View c;
    private boolean d;
    private View.OnClickListener e;
    private LinearLayout f;
    private View g;
    private ActionMode.Callback h;
    private ActionMode i;
    private View.OnLongClickListener j;
    private ArrayList k = new ArrayList();
    private C0132et l;
    private WallpaperInfo m;
    private int n;

    public static View a(LayoutInflater layoutInflater, View view, ViewGroup viewGroup, Drawable drawable) {
        View viewInflate = view == null ? layoutInflater.inflate(R.layout.wallpaper_picker_item, viewGroup, false) : view;
        a((FrameLayout) viewInflate);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.wallpaper_image);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
            drawable.setDither(true);
        }
        return viewInflate;
    }

    private static ArrayList a(Resources resources, String str, int i) {
        ArrayList arrayList = new ArrayList(24);
        for (String str2 : resources.getStringArray(i)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0) {
                int identifier2 = resources.getIdentifier(String.valueOf(str2) + "_small", "drawable", str);
                if (identifier2 != 0) {
                    arrayList.add(new C0146fg(resources, identifier, resources.getDrawable(identifier2)));
                }
            } else {
                Log.e("Launcher.WallpaperPickerActivity", "Couldn't find wallpaper " + str2);
            }
        }
        return arrayList;
    }

    private void a(Uri uri, boolean z) {
        this.k.add(uri);
        FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(R.layout.wallpaper_picker_item, this.f, false);
        frameLayout.setVisibility(8);
        a(frameLayout);
        this.f.addView(frameLayout, 0);
        new AsyncTaskC0142fc(this, this, uri, b(getResources()), (ImageView) frameLayout.findViewById(R.id.wallpaper_image), frameLayout).execute(new Void[0]);
        C0147fh c0147fh = new C0147fh(uri);
        frameLayout.setTag(c0147fh);
        c0147fh.a(frameLayout);
        a((View) frameLayout);
        i();
        frameLayout.setOnClickListener(this.e);
        if (z) {
            return;
        }
        this.e.onClick(frameLayout);
    }

    private void a(View view) {
        view.setOnLongClickListener(this.j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ViewGroup viewGroup, BaseAdapter baseAdapter, boolean z) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= baseAdapter.getCount()) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) baseAdapter.getView(i2, null, viewGroup);
            viewGroup.addView(frameLayout, i2);
            AbstractC0149fj abstractC0149fj = (AbstractC0149fj) baseAdapter.getItem(i2);
            frameLayout.setTag(abstractC0149fj);
            abstractC0149fj.a(frameLayout);
            if (z) {
                a((View) frameLayout);
            }
            frameLayout.setOnClickListener(this.e);
            i = i2 + 1;
        }
    }

    static void a(FrameLayout frameLayout) {
        frameLayout.setPadding(0, 0, 0, 0);
        frameLayout.setForeground(new C0150fk(frameLayout.getForeground()));
    }

    static /* synthetic */ void a(eS eSVar, View view) {
        if (eSVar.b != null) {
            eSVar.b.setSelected(false);
            eSVar.b = null;
        }
        eSVar.b = view;
        view.setSelected(true);
        eSVar.n = eSVar.f.indexOfChild(view);
        view.announceForAccessibility(eSVar.getString(R.string.announce_selection, new Object[]{view.getContentDescription()}));
    }

    private boolean a(File file, Bitmap bitmap) {
        try {
            file.createNewFile();
            FileOutputStream fileOutputStreamOpenFileOutput = openFileOutput(file.getName(), 0);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 95, fileOutputStreamOpenFileOutput);
            fileOutputStreamOpenFileOutput.close();
            return true;
        } catch (IOException e) {
            Log.e("Launcher.WallpaperPickerActivity", "Error while writing bitmap to file " + e);
            file.delete();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap b(Point point, Context context, Uri uri, byte[] bArr, Resources resources, int i, int i2, boolean z) {
        eQ eQVar;
        int i3 = point.x;
        int i4 = point.y;
        if (uri != null) {
            eQVar = new eQ(context, uri, (RectF) null, i2, i3, i4, false, true, (Runnable) null);
        } else {
            eQVar = bArr != null ? new eQ(bArr, null, i2, i3, i4, false, true, null) : new eQ(context, resources, i, null, i2, i3, i4, false, true, null);
        }
        Point pointA = eQVar.a();
        if (pointA == null || pointA.x == 0 || pointA.y == 0) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i2);
        float[] fArr = {pointA.x, pointA.y};
        matrix.mapPoints(fArr);
        fArr[0] = Math.abs(fArr[0]);
        fArr[1] = Math.abs(fArr[1]);
        eQVar.a(WallpaperCropActivity.a((int) fArr[0], (int) fArr[1], i3, i4, z));
        if (eQVar.c()) {
            return eQVar.b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Point b(Resources resources) {
        return new Point(resources.getDimensionPixelSize(R.dimen.wallpaperThumbnailWidth), resources.getDimensionPixelSize(R.dimen.wallpaperThumbnailHeight));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) findViewById(R.id.wallpaper_scroll_container);
        if (horizontalScrollView.getLayoutDirection() == 1) {
            horizontalScrollView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0141fb(this, horizontalScrollView));
        }
    }

    private Bitmap h() {
        Cursor cursorQuery = MediaStore.Images.Media.query(getContentResolver(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "datetaken"}, null, null, "datetaken DESC LIMIT 1");
        Bitmap thumbnail = cursorQuery.moveToNext() ? MediaStore.Images.Thumbnails.getThumbnail(getContentResolver(), cursorQuery.getInt(0), 1, null) : null;
        cursorQuery.close();
        return thumbnail;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int childCount;
        LinearLayout linearLayout;
        int i;
        int i2;
        int i3;
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.master_wallpaper_list);
        int childCount2 = linearLayout2.getChildCount();
        Resources resources = getResources();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= 2) {
                return;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < childCount2; i8++) {
                View childAt = linearLayout2.getChildAt(i8);
                if (childAt.getTag() instanceof AbstractC0149fj) {
                    childCount = i8 + 1;
                    linearLayout = linearLayout2;
                    i = i8;
                } else {
                    LinearLayout linearLayout3 = (LinearLayout) childAt;
                    childCount = linearLayout3.getChildCount();
                    linearLayout = linearLayout3;
                    i = 0;
                }
                int i9 = i;
                while (i9 < childCount) {
                    AbstractC0149fj abstractC0149fj = (AbstractC0149fj) linearLayout.getChildAt(i9).getTag();
                    if (!abstractC0149fj.b()) {
                        i2 = i7;
                        i3 = i4;
                    } else if (i6 == 0) {
                        int i10 = i7;
                        i3 = i4 + 1;
                        i2 = i10;
                    } else {
                        i7++;
                        abstractC0149fj.a(resources.getString(R.string.wallpaper_accessibility_name, Integer.valueOf(i7), Integer.valueOf(i4)));
                        i2 = i7;
                        i3 = i4;
                    }
                    i9++;
                    i4 = i3;
                    i7 = i2;
                }
            }
            i5 = i6 + 1;
        }
    }

    private ArrayList j() {
        ArrayList arrayListA;
        Bitmap bitmapB;
        boolean zA;
        ArrayList arrayList = new ArrayList(24);
        Pair pairK = k();
        if (pairK != null) {
            try {
                arrayListA = a(getPackageManager().getResourcesForApplication((ApplicationInfo) pairK.first), ((ApplicationInfo) pairK.first).packageName, ((Integer) pairK.second).intValue());
            } catch (PackageManager.NameNotFoundException e) {
                arrayListA = arrayList;
            }
        } else {
            arrayListA = arrayList;
        }
        if (Build.VERSION.SDK_INT < 19) {
            Resources system = Resources.getSystem();
            int identifier = system.getIdentifier("default_wallpaper", "drawable", "android");
            File file = new File(getFilesDir(), "default_thumb2.jpg");
            if (file.exists()) {
                bitmapB = BitmapFactory.decodeFile(file.getAbsolutePath());
                zA = true;
            } else {
                Resources resources = getResources();
                bitmapB = b(b(resources), this, null, null, system, identifier, WallpaperCropActivity.a(resources, identifier), false);
                zA = bitmapB != null ? a(file, bitmapB) : false;
            }
            C0146fg c0146fg = zA ? new C0146fg(system, identifier, new BitmapDrawable(bitmapB)) : null;
            if (c0146fg != null) {
                arrayListA.add(0, c0146fg);
            }
        }
        return arrayListA;
    }

    private Pair k() {
        try {
            return new Pair(getPackageManager().getApplicationInfo(getResources().getResourcePackageName(R.array.wallpapers), 0), Integer.valueOf(R.array.wallpapers));
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public final void a(float f) {
        this.g.setPadding(0, 0, 0, (int) f);
    }

    public void a(Intent intent, int i) {
        startActivityForResult(intent, i);
    }

    @Override // com.android.launcher3.WallpaperCropActivity
    protected final void b() {
        Bitmap bitmapCreateBitmap;
        boolean zA;
        setContentView(R.layout.wallpaper_picker);
        this.f114a = (CropView) findViewById(R.id.cropView);
        this.g = findViewById(R.id.wallpaper_strip);
        this.f114a.a(new eT(this));
        this.e = new eV(this);
        this.j = new eW(this);
        ArrayList arrayListJ = j();
        this.f = (LinearLayout) findViewById(R.id.wallpaper_list);
        a((ViewGroup) this.f, (BaseAdapter) new C0143fd(this, arrayListJ), false);
        this.l = new C0132et(this);
        this.l.a();
        a((ViewGroup) this.f, (BaseAdapter) this.l, true);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.live_wallpaper_list);
        dK dKVar = new dK(this);
        dKVar.registerDataSetObserver(new eX(this, linearLayout, dKVar));
        a((ViewGroup) findViewById(R.id.third_party_wallpaper_list), (BaseAdapter) new eE(this), false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.master_wallpaper_list);
        FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(R.layout.wallpaper_picker_image_picker_item, (ViewGroup) linearLayout2, false);
        a(frameLayout);
        linearLayout2.addView(frameLayout, 0);
        if (h() != null) {
            ImageView imageView = (ImageView) frameLayout.findViewById(R.id.wallpaper_image);
            imageView.setImageBitmap(h());
            imageView.setColorFilter(getResources().getColor(R.color.wallpaper_picker_translucent_gray), PorterDuff.Mode.SRC_ATOP);
        }
        C0145ff c0145ff = new C0145ff();
        frameLayout.setTag(c0145ff);
        c0145ff.a(frameLayout);
        frameLayout.setOnClickListener(this.e);
        if (Build.VERSION.SDK_INT >= 19) {
            File file = new File(getFilesDir(), "default_thumb2.jpg");
            if (file.exists()) {
                bitmapCreateBitmap = BitmapFactory.decodeFile(file.getAbsolutePath());
                zA = true;
            } else {
                new File(getFilesDir(), "default_thumb.jpg").delete();
                Point pointB = b(getResources());
                Drawable builtInDrawable = WallpaperManager.getInstance(this).getBuiltInDrawable(pointB.x, pointB.y, true, 0.5f, 0.5f);
                if (builtInDrawable != null) {
                    bitmapCreateBitmap = Bitmap.createBitmap(pointB.x, pointB.y, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    builtInDrawable.setBounds(0, 0, pointB.x, pointB.y);
                    builtInDrawable.draw(canvas);
                    canvas.setBitmap(null);
                } else {
                    bitmapCreateBitmap = null;
                }
                zA = bitmapCreateBitmap != null ? a(file, bitmapCreateBitmap) : false;
            }
            C0144fe c0144fe = zA ? new C0144fe(new BitmapDrawable(bitmapCreateBitmap)) : null;
            FrameLayout frameLayout2 = (FrameLayout) a(getLayoutInflater(), (View) null, this.f, c0144fe.f375a);
            a(frameLayout2);
            frameLayout2.setTag(c0144fe);
            this.f.addView(frameLayout2, 0);
            frameLayout2.setOnClickListener(this.e);
            c0144fe.a(frameLayout2);
        }
        this.f114a.addOnLayoutChangeListener(new eY(this));
        i();
        g();
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setDuration(200L);
        layoutTransition.setStartDelay(1, 0L);
        layoutTransition.setAnimator(3, null);
        this.f.setLayoutTransition(layoutTransition);
        ActionBar actionBar = getActionBar();
        actionBar.setCustomView(R.layout.actionbar_set_wallpaper);
        actionBar.getCustomView().setOnClickListener(new eZ(this));
        this.c = findViewById(R.id.set_wallpaper_button);
        this.h = new ActionModeCallbackC0140fa(this);
    }

    public final CropView d() {
        return this.f114a;
    }

    public final C0132et e() {
        return this.l;
    }

    public final void f() {
        this.m = WallpaperManager.getInstance(this).getWallpaperInfo();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 5 && i2 == -1) {
            if (intent == null || intent.getData() == null) {
                return;
            }
            a(intent.getData(), false);
            return;
        }
        if (i != 6) {
            if (i != 7) {
                return;
            }
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(this);
            WallpaperInfo wallpaperInfo = this.m;
            WallpaperInfo wallpaperInfo2 = wallpaperManager.getWallpaperInfo();
            if (wallpaperInfo2 == null) {
                return;
            }
            if (wallpaperInfo != null && wallpaperInfo.getComponent().equals(wallpaperInfo2.getComponent())) {
                return;
            }
        }
        setResult(-1);
        finish();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        Iterator it = bundle.getParcelableArrayList("TEMP_WALLPAPER_TILES").iterator();
        while (it.hasNext()) {
            a((Uri) it.next(), true);
        }
        this.n = bundle.getInt("SELECTED_INDEX", 0);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelableArrayList("TEMP_WALLPAPER_TILES", this.k);
        bundle.putInt("SELECTED_INDEX", this.n);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.g = findViewById(R.id.wallpaper_strip);
        if (this.g.getAlpha() < 1.0f) {
            this.g.setAlpha(1.0f);
            this.g.setVisibility(0);
        }
    }
}
