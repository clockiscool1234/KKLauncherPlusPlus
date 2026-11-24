package a.a.a.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.preference.PreferenceManager;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static float f21a;
    public static float b;
    private final Object[] c;
    private int d;

    public d(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.c = new Object[i];
    }

    public static int a(Context context, int i) {
        int i2 = PreferenceManager.getDefaultSharedPreferences(context).getInt("setting_grid_size_rows_key", -1);
        if (i2 != -1) {
            return i2;
        }
        f(context, i);
        return i;
    }

    public static Bitmap a(Bitmap bitmap, float f, boolean z) {
        int iRound = Math.round(bitmap.getWidth() * f);
        int iRound2 = Math.round(bitmap.getHeight() * f);
        if (iRound == bitmap.getWidth() && iRound2 == bitmap.getHeight()) {
            return bitmap;
        }
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound2, config);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.scale(f, f);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, new Paint(6));
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    public static void a(Context context, String str) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putString("setting_last_backup_key", str);
        editorR.commit();
    }

    public static void a(Context context, Set set) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putStringSet("setting_drawer_hide_apps_v2", set);
        editorR.commit();
    }

    public static void a(Context context, nl.ndsc.kitkatlauncher.a.a aVar) {
        Set setP = p(context);
        HashSet hashSet = new HashSet();
        if (setP == null) {
            setP = hashSet;
        }
        setP.add(aVar.c);
        Log.d("KLP", "Adding activity: " + aVar.c);
        a(context, setP);
    }

    public static void a(Context context, JSONObject jSONObject) throws JSONException {
        boolean zBooleanValue = Boolean.valueOf(jSONObject.getBoolean("setting_hideqsb_key")).booleanValue();
        SharedPreferences.Editor editorR = r(context);
        editorR.putBoolean("setting_hideqsb_key", zBooleanValue);
        editorR.commit();
        String string = jSONObject.getString("setting_homebutton_action_key");
        SharedPreferences.Editor editorR2 = r(context);
        editorR2.putString("setting_homebutton_action_key", string);
        editorR2.commit();
        e(context, jSONObject.getInt("setting_number_of_screens_key"));
        f(context, jSONObject.getInt("setting_grid_size_rows_key"));
        g(context, jSONObject.getInt("setting_grid_size_columns_key"));
        h(context, jSONObject.getInt("setting_grid_size_drawer_rows_key"));
        i(context, jSONObject.getInt("setting_grid_size_drawer_columns_key"));
        boolean zBooleanValue2 = Boolean.valueOf(jSONObject.getBoolean("setting_hide_page_indicator_screen")).booleanValue();
        SharedPreferences.Editor editorR3 = r(context);
        editorR3.putBoolean("setting_hide_page_indicator_screen", zBooleanValue2);
        editorR3.commit();
        boolean zBooleanValue3 = Boolean.valueOf(jSONObject.getBoolean("setting_hide_page_indicator_drawer")).booleanValue();
        SharedPreferences.Editor editorR4 = r(context);
        editorR4.putBoolean("setting_hide_page_indicator_drawer", zBooleanValue3);
        editorR4.commit();
        try {
            c(context, jSONObject.getString("setting_iconsize"));
        } catch (Exception e) {
        }
        try {
            boolean z = jSONObject.getBoolean("setting_google_now_enable");
            SharedPreferences.Editor editorR5 = r(context);
            editorR5.putBoolean("setting_google_now_enable", z);
            editorR5.commit();
        } catch (Exception e2) {
        }
        try {
            String string2 = jSONObject.getString("setting_google_now_anim");
            SharedPreferences.Editor editorR6 = r(context);
            editorR6.putString("setting_google_now_anim", string2);
            editorR6.commit();
        } catch (Exception e3) {
        }
        try {
            a(context, jSONObject.getBoolean("setting_hide_icontext"));
        } catch (Exception e4) {
        }
        try {
            d(context, jSONObject.getString("setting_icontextsize"));
        } catch (Exception e5) {
        }
        try {
            boolean z2 = jSONObject.getBoolean("setting_restore_last_page_drawer");
            SharedPreferences.Editor editorR7 = r(context);
            editorR7.putBoolean("setting_restore_last_page_drawer", z2);
            editorR7.commit();
        } catch (Exception e6) {
        }
        SharedPreferences.Editor newSettings = r(context);
        newSettings.putString("setting_dock_columns", jSONObject.optString("setting_dock_columns", "5"));
        newSettings.putString("setting_icon_pack", jSONObject.optString("setting_icon_pack", ""));
        newSettings.apply();
        JSONArray jSONArray = jSONObject.getJSONArray("setting_drawer_hide_apps_v2");
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.getString(i));
        }
        a(context, hashSet);
    }

    public static void a(Context context, boolean z) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putBoolean("setting_hide_icontext", z);
        editorR.commit();
    }

    public static void a(Object obj, StringBuilder sb) {
        int iLastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if ((simpleName == null || simpleName.length() <= 0) && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(iLastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static boolean a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("setting_hideqsb_key", false);
    }

    public static int b(Context context, int i) {
        int i2 = PreferenceManager.getDefaultSharedPreferences(context).getInt("setting_grid_size_columns_key", -1);
        if (i2 != -1) {
            return i2;
        }
        g(context, i);
        return i;
    }

    public static String b(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("setting_google_now_anim", "Slide");
    }

    public static void b(Context context, String str) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putString("setting_last_restore_key", str);
        editorR.commit();
    }

    public static void b(Context context, nl.ndsc.kitkatlauncher.a.a aVar) {
        Set<String> setP = p(context);
        HashSet hashSet = new HashSet();
        if (setP != null) {
            for (String str : setP) {
                if (aVar.c.contentEquals(str)) {
                    Log.d("KLP", "Removing activity: " + aVar.c);
                } else {
                    hashSet.add(str);
                }
            }
        }
        a(context, hashSet);
    }

    public static void b(Context context, boolean z) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putBoolean("setting_restart_launcher_key", z);
        editorR.commit();
    }

    public static int c(Context context, int i) {
        int i2 = PreferenceManager.getDefaultSharedPreferences(context).getInt("setting_grid_size_drawer_rows_key", -1);
        if (i2 != -1) {
            return i2;
        }
        h(context, i);
        return i;
    }

    public static void c(Context context, String str) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putString("setting_iconsize", str);
        editorR.commit();
    }

    public static boolean c(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("setting_google_now_enable", false);
    }

    public static int d(Context context, int i) {
        int i2 = PreferenceManager.getDefaultSharedPreferences(context).getInt("setting_grid_size_drawer_columns_key", -1);
        if (i2 != -1) {
            return i2;
        }
        i(context, i);
        return i;
    }

    public static void d(Context context, String str) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putString("setting_icontextsize", str);
        editorR.commit();
    }

    public static boolean d(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("setting_hide_page_indicator_screen", false);
    }

    public static void e(Context context, int i) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putInt("setting_number_of_screens_key", i);
        editorR.commit();
    }

    public static boolean e(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("setting_hide_page_indicator_drawer", false);
    }

    public static void f(Context context, int i) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putInt("setting_grid_size_rows_key", i);
        editorR.commit();
    }

    public static boolean f(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("setting_restore_last_page_drawer", false);
    }

    public static void g(Context context, int i) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putInt("setting_grid_size_columns_key", i);
        editorR.commit();
    }

    public static boolean g(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("setting_hide_icontext", false);
    }

    public static nl.ndsc.kitkatlauncher.a.b h(Context context) {
        return nl.ndsc.kitkatlauncher.a.b.values()[Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(context).getString("setting_homebutton_action_key", "1"))];
    }

    public static void h(Context context, int i) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putInt("setting_grid_size_drawer_rows_key", i);
        editorR.commit();
    }

    public static void i(Context context, int i) {
        SharedPreferences.Editor editorR = r(context);
        editorR.putInt("setting_grid_size_drawer_columns_key", i);
        editorR.commit();
    }

    public static boolean i(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("setting_restart_launcher_key", false);
    }

    public static String j(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("setting_last_backup_key", "never");
    }

    public static String k(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("setting_last_restore_key", "never");
    }

    public static int l(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("setting_number_of_screens_key", 0);
    }

    public static boolean m(Context context) {
        return l(context) == 0;
    }

    public static float n(Context context) {
        return Float.parseFloat(PreferenceManager.getDefaultSharedPreferences(context).getString("setting_iconsize", "1"));
    }

    public static float o(Context context) {
        return Float.parseFloat(PreferenceManager.getDefaultSharedPreferences(context).getString("setting_icontextsize", "1"));
    }

    public static Set p(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getStringSet("setting_drawer_hide_apps_v2", new HashSet());
    }

    public static JSONObject q(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("setting_hideqsb_key", a(context));
            jSONObject.put("setting_homebutton_action_key", Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(context).getString("setting_homebutton_action_key", "1")));
            jSONObject.put("setting_number_of_screens_key", l(context));
            jSONObject.put("setting_grid_size_rows_key", a(context, 5));
            jSONObject.put("setting_grid_size_columns_key", b(context, 5));
            jSONObject.put("setting_grid_size_drawer_rows_key", c(context, 5));
            jSONObject.put("setting_grid_size_drawer_columns_key", d(context, 5));
            jSONObject.put("setting_iconsize", n(context));
            jSONObject.put("setting_hide_page_indicator_drawer", e(context));
            jSONObject.put("setting_restore_last_page_drawer", f(context));
            jSONObject.put("setting_hide_page_indicator_screen", d(context));
            jSONObject.put("setting_google_now_enable", c(context));
            jSONObject.put("setting_google_now_anim", b(context));
            jSONObject.put("setting_icontextsize", o(context));
            jSONObject.put("setting_hide_icontext", g(context));
            SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
            jSONObject.put("setting_dock_columns", preferences.getString("setting_dock_columns", "5"));
            jSONObject.put("setting_icon_pack", preferences.getString("setting_icon_pack", ""));
            Set setP = p(context);
            JSONArray jSONArray = new JSONArray();
            Iterator it = setP.iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
            jSONObject.put("setting_drawer_hide_apps_v2", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private static SharedPreferences.Editor r(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).edit();
    }

    public Object a() {
        if (this.d <= 0) {
            return null;
        }
        int i = this.d - 1;
        Object obj = this.c[i];
        this.c[i] = null;
        this.d--;
        return obj;
    }

    public boolean a(Object obj) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.d) {
                z = false;
                break;
            }
            if (this.c[i] == obj) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            throw new IllegalStateException("Already in the pool!");
        }
        if (this.d >= this.c.length) {
            return false;
        }
        this.c[this.d] = obj;
        this.d++;
        return true;
    }
}
