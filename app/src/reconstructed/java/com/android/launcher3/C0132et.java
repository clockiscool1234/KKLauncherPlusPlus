package com.android.launcher3;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.et, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0132et extends BaseAdapter implements ListAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f339a = "Launcher3.SavedWallpaperImages";
    private C0133eu b;
    private ArrayList c;
    private Context d;
    private LayoutInflater e;

    public C0132et(Activity activity) {
        C0133eu.a(activity);
        this.b = new C0133eu(activity);
        this.d = activity;
        this.e = activity.getLayoutInflater();
    }

    private Pair c(int i) {
        Cursor cursorQuery = this.b.getReadableDatabase().query("saved_wallpaper_images", new String[]{"image_thumbnail", "image"}, "id = ?", new String[]{Integer.toString(i)}, null, null, null, null);
        if (cursorQuery.getCount() <= 0) {
            return null;
        }
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(0);
        String string2 = cursorQuery.getString(1);
        cursorQuery.close();
        return new Pair(string, string2);
    }

    public final String a(int i) {
        Pair pairC = c(i);
        if (pairC != null) {
            return (String) pairC.second;
        }
        return null;
    }

    public final void a() {
        this.c = new ArrayList();
        Cursor cursorQuery = this.b.getReadableDatabase().query("saved_wallpaper_images", new String[]{"id", "image_thumbnail"}, null, null, null, null, "id DESC", null);
        while (cursorQuery.moveToNext()) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(new File(this.d.getFilesDir(), cursorQuery.getString(1)).getAbsolutePath());
            if (bitmapDecodeFile != null) {
                this.c.add(new C0134ev(cursorQuery.getInt(0), new BitmapDrawable(bitmapDecodeFile)));
            }
        }
        cursorQuery.close();
    }

    public final void a(Bitmap bitmap, byte[] bArr) {
        try {
            File fileCreateTempFile = File.createTempFile("wallpaper", "", this.d.getFilesDir());
            FileOutputStream fileOutputStreamOpenFileOutput = this.d.openFileOutput(fileCreateTempFile.getName(), 0);
            fileOutputStreamOpenFileOutput.write(bArr);
            fileOutputStreamOpenFileOutput.close();
            File fileCreateTempFile2 = File.createTempFile("wallpaperthumb", "", this.d.getFilesDir());
            FileOutputStream fileOutputStreamOpenFileOutput2 = this.d.openFileOutput(fileCreateTempFile2.getName(), 0);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 95, fileOutputStreamOpenFileOutput2);
            fileOutputStreamOpenFileOutput2.close();
            SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("image_thumbnail", fileCreateTempFile2.getName());
            contentValues.put("image", fileCreateTempFile.getName());
            writableDatabase.insert("saved_wallpaper_images", null, contentValues);
        } catch (IOException e) {
            Log.e(f339a, "Failed writing images to storage " + e);
        }
    }

    public final void b(int i) {
        Pair pairC = c(i);
        new File(this.d.getFilesDir(), (String) pairC.first).delete();
        new File(this.d.getFilesDir(), (String) pairC.second).delete();
        this.b.getWritableDatabase().delete("saved_wallpaper_images", "id = ?", new String[]{Integer.toString(i)});
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.c.size();
    }

    @Override // android.widget.Adapter
    public final /* synthetic */ Object getItem(int i) {
        return (C0134ev) this.c.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Drawable drawable = ((C0134ev) this.c.get(i)).c;
        if (drawable == null) {
            Log.e(f339a, "Error decoding thumbnail for wallpaper #" + i);
        }
        return eS.a(this.e, view, viewGroup, drawable);
    }
}
