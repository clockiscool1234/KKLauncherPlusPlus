package com.android.launcher3;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.Process;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MemoryDumpActivity extends Activity {
    private static final String TAG = "MemoryDumpActivity";

    public static void dumpHprofAndShare(Context context, dQ dQVar) {
        String str;
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        int iMyPid = Process.myPid();
        int[] iArrA = dQVar.a();
        int[] iArrCopyOf = Arrays.copyOf(iArrA, iArrA.length);
        for (int i : iArrCopyOf) {
            dT dTVarA = dQVar.a(i);
            if (dTVarA != null) {
                sb.append("pid ").append(i).append(": up=").append(dTVarA.a()).append(" pss=").append(dTVarA.f274a).append(" uss=").append(dTVarA.b).append("\n");
            }
            if (i == iMyPid) {
                String str2 = String.format("%s/launcher-memory-%d.ahprof", Environment.getExternalStorageDirectory(), Integer.valueOf(i));
                Log.v(TAG, "Dumping memory info for process " + i + " to " + str2);
                try {
                    Debug.dumpHprofData(str2);
                } catch (IOException e) {
                    Log.e(TAG, "error dumping memory:", e);
                }
                arrayList.add(str2);
            }
        }
        String strZipUp = zipUp(arrayList);
        if (strZipUp == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/zip");
        PackageManager packageManager = context.getPackageManager();
        intent.putExtra("android.intent.extra.SUBJECT", String.format("Launcher memory dump (%d)", Integer.valueOf(iMyPid)));
        try {
            str = packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            str = "?";
        }
        sb.append("\nApp version: ").append(str).append("\nBuild: ").append(Build.DISPLAY).append("\n");
        intent.putExtra("android.intent.extra.TEXT", sb.toString());
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(strZipUp)));
        context.startActivity(intent);
    }

    public static void startDump(Context context) {
        startDump(context, null);
    }

    public static void startDump(Context context, Runnable runnable) {
        dP dPVar = new dP(context, runnable);
        Log.v(TAG, "attempting to bind to memory tracker");
        context.bindService(new Intent(context, (Class<?>) dQ.class), dPVar, 1);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String zipUp(ArrayList arrayList) throws Throwable {
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2;
        BufferedInputStream bufferedInputStream;
        byte[] bArr = new byte[262144];
        String str = String.format("%s/hprof-%d.zip", Environment.getExternalStorageDirectory(), Long.valueOf(System.currentTimeMillis()));
        try {
            zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    try {
                        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str2));
                        try {
                            zipOutputStream.putNextEntry(new ZipEntry(str2));
                            while (true) {
                                int i = bufferedInputStream2.read(bArr, 0, 262144);
                                if (i <= 0) {
                                    break;
                                }
                                zipOutputStream.write(bArr, 0, i);
                            }
                            zipOutputStream.closeEntry();
                            bufferedInputStream2.close();
                        } catch (Throwable th) {
                            th = th;
                            bufferedInputStream = bufferedInputStream2;
                            bufferedInputStream.close();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream = null;
                    }
                }
                try {
                    zipOutputStream.close();
                } catch (IOException e) {
                }
                return str;
            } catch (IOException e2) {
                e = e2;
                zipOutputStream2 = zipOutputStream;
                try {
                    Log.e(TAG, "error zipping up profile data", e);
                    if (zipOutputStream2 != null) {
                        try {
                            zipOutputStream2.close();
                        } catch (IOException e3) {
                        }
                    }
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    zipOutputStream = zipOutputStream2;
                    if (zipOutputStream != null) {
                        try {
                            zipOutputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                if (zipOutputStream != null) {
                    zipOutputStream.close();
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            zipOutputStream2 = null;
        } catch (Throwable th5) {
            th = th5;
            zipOutputStream = null;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        startDump(this, new dO(this));
    }
}
