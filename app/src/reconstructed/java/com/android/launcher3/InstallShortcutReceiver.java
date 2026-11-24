package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes.dex */
public class InstallShortcutReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f90a = new Object();
    private static boolean b = false;

    private static CharSequence a(Context context, Intent intent, CharSequence charSequence) {
        if (charSequence != null) {
            return charSequence;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getActivityInfo(intent.getComponent(), 0).loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    private static ArrayList a(SharedPreferences sharedPreferences) {
        synchronized (f90a) {
            try {
                Set<String> stringSet = sharedPreferences.getStringSet("apps_to_install", null);
                if (stringSet == null) {
                    return new ArrayList();
                }
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = stringSet.iterator();
                while (it.hasNext()) {
                    try {
                        try {
                            JSONObject jSONObject = (JSONObject) new JSONTokener(it.next()).nextValue();
                            Intent uri = Intent.parseUri(jSONObject.getString("intent.data"), 0);
                            Intent uri2 = Intent.parseUri(jSONObject.getString("intent.launch"), 0);
                            String string = jSONObject.getString("name");
                            String strOptString = jSONObject.optString("icon");
                            String strOptString2 = jSONObject.optString("iconResource");
                            String strOptString3 = jSONObject.optString("iconResourcePackage");
                            if (strOptString != null && !strOptString.isEmpty()) {
                                byte[] bArrDecode = Base64.decode(strOptString, 0);
                                uri.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
                            } else if (strOptString2 != null && !strOptString2.isEmpty()) {
                                Intent.ShortcutIconResource shortcutIconResource = new Intent.ShortcutIconResource();
                                shortcutIconResource.resourceName = strOptString2;
                                shortcutIconResource.packageName = strOptString3;
                                uri.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", shortcutIconResource);
                            }
                            uri.putExtra("android.intent.extra.shortcut.INTENT", uri2);
                            arrayList.add(new bA(uri, string, uri2));
                        } catch (URISyntaxException e) {
                            Log.d("InstallShortcutReceiver", "Exception reading shortcut to add: " + e);
                        }
                    } catch (JSONException e2) {
                        Log.d("InstallShortcutReceiver", "Exception reading shortcut to add: " + e2);
                    }
                }
                sharedPreferences.edit().putStringSet("apps_to_install", new HashSet()).commit();
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void a() {
        b = true;
    }

    static void a(Context context) {
        b = false;
        b(context);
    }

    public static void a(SharedPreferences sharedPreferences, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        synchronized (f90a) {
            Set<String> stringSet = sharedPreferences.getStringSet("apps_to_install", null);
            if (stringSet != null) {
                HashSet hashSet = new HashSet(stringSet);
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    try {
                        try {
                            Intent uri = Intent.parseUri(((JSONObject) new JSONTokener((String) it.next()).nextValue()).getString("intent.launch"), 0);
                            String packageName = uri.getPackage();
                            if (packageName == null) {
                                packageName = uri.getComponent().getPackageName();
                            }
                            if (arrayList.contains(packageName)) {
                                it.remove();
                            }
                        } catch (URISyntaxException e) {
                            Log.d("InstallShortcutReceiver", "Exception reading shortcut to remove: " + e);
                        }
                    } catch (JSONException e2) {
                        Log.d("InstallShortcutReceiver", "Exception reading shortcut to remove: " + e2);
                    }
                }
                sharedPreferences.edit().putStringSet("apps_to_install", new HashSet(hashSet)).commit();
            }
        }
    }

    static boolean a(Intent intent) {
        return (intent != null && "android.intent.action.MAIN".equals(intent.getAction()) && intent.getComponent() != null && intent.getCategories() != null && intent.getCategories().size() == 1 && intent.hasCategory("android.intent.category.LAUNCHER") && intent.getExtras() == null && TextUtils.isEmpty(intent.getDataString())) ? false : true;
    }

    private static void b(Context context) {
        ArrayList<bA> arrayListA = a(context.getSharedPreferences("com.android.launcher3.prefs", 0));
        if (arrayListA.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (bA bAVar : arrayListA) {
            Intent intent = bAVar.b;
            String str = bAVar.c;
            if (!cB.o() || a(intent)) {
                if (!cO.a(context, str, intent)) {
                    Intent intent2 = bAVar.f164a;
                    Intent intent3 = bAVar.b;
                    if (intent3.getAction() == null) {
                        intent3.setAction("android.intent.action.VIEW");
                    } else if (intent3.getAction().equals("android.intent.action.MAIN") && intent3.getCategories() != null && intent3.getCategories().contains("android.intent.category.LAUNCHER")) {
                        intent3.addFlags(270532608);
                    }
                    C0137ey c0137eyA = cB.a().f().a(context, intent2, (Bitmap) null);
                    c0137eyA.q = a(context, intent3, c0137eyA.q);
                    arrayList.add(c0137eyA);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        cB.a().f().a(context, arrayList, new ArrayList());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2;
        if ("com.android.launcher.action.INSTALL_SHORTCUT".equals(intent.getAction()) && (intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT")) != null) {
            String string = a(context, intent2, intent.getStringExtra("android.intent.extra.shortcut.NAME")).toString();
            Bitmap bitmap = (Bitmap) intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
            Intent.ShortcutIconResource shortcutIconResource = (Intent.ShortcutIconResource) intent.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            cB.a(context.getApplicationContext());
            boolean z = cB.a().i() == null;
            bA bAVar = new bA(intent, string, intent2);
            bAVar.d = bitmap;
            bAVar.e = shortcutIconResource;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.launcher3.prefs", 0);
            synchronized (f90a) {
                try {
                    JSONStringer jSONStringerValue = new JSONStringer().object().key("intent.data").value(bAVar.f164a.toUri(0)).key("intent.launch").value(bAVar.b.toUri(0)).key("name").value(bAVar.c);
                    if (bAVar.d != null) {
                        byte[] bArrA = bD.a(bAVar.d);
                        jSONStringerValue = jSONStringerValue.key("icon").value(Base64.encodeToString(bArrA, 0, bArrA.length, 0));
                    }
                    if (bAVar.e != null) {
                        jSONStringerValue = jSONStringerValue.key("iconResource").value(bAVar.e.resourceName).key("iconResourcePackage").value(bAVar.e.packageName);
                    }
                    JSONStringer jSONStringerEndObject = jSONStringerValue.endObject();
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    String string2 = jSONStringerEndObject.toString();
                    Set<String> stringSet = sharedPreferences.getStringSet("apps_to_install", null);
                    HashSet hashSet = stringSet == null ? new HashSet(0) : new HashSet(stringSet);
                    hashSet.add(string2);
                    editorEdit.putStringSet("apps_to_install", hashSet);
                    editorEdit.commit();
                } catch (JSONException e) {
                    Log.d("InstallShortcutReceiver", "Exception when adding shortcut: " + e);
                }
            }
            if (b || z) {
                return;
            }
            b(context);
        }
    }
}
