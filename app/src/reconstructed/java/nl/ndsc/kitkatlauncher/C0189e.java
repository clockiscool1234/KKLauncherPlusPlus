package nl.ndsc.kitkatlauncher;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.util.Base64;
import com.android.launcher3.dF;
import com.android.launcher3.dG;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: nl.ndsc.kitkatlauncher.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0189e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f431a;

    public C0189e(Context context) {
        f431a = context;
    }

    private static ContentValues a(ContentValues contentValues, JSONObject jSONObject, String str) {
        String strA = a(jSONObject, str);
        if (strA != null) {
            contentValues.put(str, strA);
        }
        return contentValues;
    }

    private static String a(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.getString(str);
    }

    private static void a(JSONArray jSONArray, boolean z) throws JSONException {
        ContentResolver contentResolver = f431a.getContentResolver();
        Uri uri = dG.f262a;
        int length = jSONArray.length();
        ContentValues[] contentValuesArr = new ContentValues[length];
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", Integer.valueOf(jSONObject.getInt("id")));
            contentValues.put("screenRank", Integer.valueOf(jSONObject.getInt("screenRank")));
            contentValuesArr[i] = contentValues;
        }
        if (z) {
            return;
        }
        contentResolver.bulkInsert(uri, contentValuesArr);
    }

    public static List b() {
        File[] fileArrListFiles = e().listFiles(new j());
        Arrays.sort(fileArrListFiles, new k());
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            try {
                JSONObject jSONObjectB = b(file);
                JSONArray jSONArray = jSONObjectB.getJSONArray("items");
                JSONArray jSONArray2 = jSONObjectB.getJSONArray("screens");
                nl.ndsc.kitkatlauncher.a.c cVar = new nl.ndsc.kitkatlauncher.a.c();
                cVar.f417a = file;
                cVar.b = jSONArray.length();
                cVar.c = jSONArray2.length();
                arrayList.add(cVar);
            } catch (Exception e) {
            }
        }
        return arrayList;
    }

    public static JSONObject b(File file) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        StringBuilder sb = new StringBuilder();
        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
            sb.append(line);
        }
        bufferedReader.close();
        return new JSONObject(sb.toString());
    }

    private static void b(JSONArray jSONArray, boolean z) throws JSONException {
        String strA;
        ContentResolver contentResolver = f431a.getContentResolver();
        Uri uri = dF.c;
        int length = jSONArray.length();
        ContentValues[] contentValuesArr = new ContentValues[length];
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            ContentValues contentValues = new ContentValues();
            if (jSONObject.getInt("itemType") == 1 && (strA = a(jSONObject, "icon")) != null && !strA.isEmpty()) {
                contentValues.put("icon", Base64.decode(strA, 0));
            }
            contentValuesArr[i] = a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(contentValues, jSONObject, "_id"), jSONObject, "title"), jSONObject, "intent"), jSONObject, "container"), jSONObject, "screen"), jSONObject, "cellX"), jSONObject, "cellY"), jSONObject, "spanX"), jSONObject, "spanY"), jSONObject, "itemType"), jSONObject, "appWidgetId"), jSONObject, "iconType"), jSONObject, "iconPackage"), jSONObject, "iconResource"), jSONObject, "uri"), jSONObject, "displayMode"), jSONObject, "appWidgetProvider");
        }
        if (z) {
            return;
        }
        contentResolver.bulkInsert(uri, contentValuesArr);
    }

    private static JSONArray c() throws Exception {
        byte[] blob;
        Cursor cursorQuery = f431a.getContentResolver().query(dF.f261a, null, null, null, null);
        JSONArray jSONArray = new JSONArray();
        while (cursorQuery.moveToNext()) {
            JSONObject jSONObject = new JSONObject();
            int i = cursorQuery.getInt(9);
            if (i != 4) {
                if (i == 1 && (blob = cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("icon"))) != null && blob.length > 0) {
                    jSONObject.put("icon", Base64.encodeToString(blob, 0));
                }
                jSONObject.put("_id", cursorQuery.getString(0));
                jSONObject.put("title", cursorQuery.getString(1));
                jSONObject.put("intent", cursorQuery.getString(2));
                jSONObject.put("container", cursorQuery.getString(3));
                jSONObject.put("screen", cursorQuery.getString(4));
                jSONObject.put("cellX", cursorQuery.getString(5));
                jSONObject.put("cellY", cursorQuery.getString(6));
                jSONObject.put("spanX", cursorQuery.getString(7));
                jSONObject.put("spanY", cursorQuery.getString(8));
                jSONObject.put("itemType", cursorQuery.getString(9));
                jSONObject.put("appWidgetId", cursorQuery.getString(10));
                jSONObject.put("iconType", cursorQuery.getString(12));
                jSONObject.put("iconPackage", cursorQuery.getString(13));
                jSONObject.put("iconResource", cursorQuery.getString(14));
                jSONObject.put("uri", cursorQuery.getString(16));
                jSONObject.put("displayMode", cursorQuery.getString(17));
                jSONObject.put("appWidgetProvider", cursorQuery.getString(18));
                jSONArray.put(jSONObject);
            }
        }
        cursorQuery.close();
        if (jSONArray.length() == 0) {
            throw new Exception("No items found");
        }
        return jSONArray;
    }

    private static void d() {
        ContentResolver contentResolver = f431a.getContentResolver();
        Cursor cursorQuery = contentResolver.query(dF.f261a, null, null, null, null);
        ArrayList arrayList = new ArrayList();
        while (cursorQuery.moveToNext()) {
            arrayList.add(Long.valueOf(cursorQuery.getLong(0)));
        }
        cursorQuery.close();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            contentResolver.delete(dF.a(((Long) arrayList.get(i)).longValue(), false), null, null);
        }
    }

    private static File e() {
        File file = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/KitKatLauncherPlus");
        file.mkdirs();
        return file;
    }

    public final void a() throws Exception {
        Cursor cursorQuery = f431a.getContentResolver().query(dG.f262a, null, null, null, null);
        JSONArray jSONArray = new JSONArray();
        while (cursorQuery.moveToNext()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", cursorQuery.getString(0));
            jSONObject.put("screenRank", cursorQuery.getString(1));
            jSONArray.put(jSONObject);
        }
        cursorQuery.close();
        if (jSONArray.length() == 0) {
            throw new Exception("No screens found");
        }
        JSONArray jSONArrayC = c();
        JSONObject jSONObjectQ = a.a.a.c.d.q(f431a);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("screens", jSONArray);
        jSONObject2.put("items", jSONArrayC);
        jSONObject2.put("settings", jSONObjectQ);
        FileWriter fileWriter = new FileWriter(String.valueOf(e().getAbsolutePath()) + "/" + (String.valueOf(System.currentTimeMillis() / 1000) + ".json"));
        fileWriter.write(jSONObject2.toString());
        fileWriter.flush();
        fileWriter.close();
    }

    public final void a(File file) throws Exception {
        JSONObject jSONObject = null;
        JSONObject jSONObjectB = b(file);
        if (!((jSONObjectB.getJSONArray("items").length() == 0 || jSONObjectB.getJSONArray("screens").length() == 0) ? false : true)) {
            throw new Exception("Failed to verify the selected backup");
        }
        JSONArray jSONArray = jSONObjectB.getJSONArray("items");
        a(jSONObjectB.getJSONArray("screens"), true);
        b(jSONArray, true);
        f431a.getContentResolver().delete(dG.f262a, null, null);
        d();
        JSONArray jSONArray2 = jSONObjectB.getJSONArray("items");
        JSONArray jSONArray3 = jSONObjectB.getJSONArray("screens");
        try {
            jSONObject = jSONObjectB.getJSONObject("settings");
        } catch (Exception e) {
        }
        a(jSONArray3, false);
        b(jSONArray2, false);
        if (jSONObject != null) {
            a.a.a.c.d.a(f431a, jSONObject);
        }
    }
}
