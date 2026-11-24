package com.android.launcher3;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.util.LongSparseArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class dQ extends Service {
    private static String b = dQ.class.getSimpleName();
    private ActivityManager g;
    private LongSparseArray c = new LongSparseArray();
    private ArrayList d = new ArrayList();
    private int[] e = new int[0];
    private final Object f = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Handler f271a = new dR(this);
    private final IBinder h = new dS(this);

    private void a(int i, String str, long j) {
        synchronized (this.f) {
            Long l = new Long(i);
            if (this.d.contains(l)) {
                return;
            }
            this.d.add(l);
            c();
            this.c.put(i, new dT(i, str, j));
        }
    }

    public static void a(Context context, String str) {
        context.startService(new Intent(context, (Class<?>) dQ.class).setAction("com.android.launcher3.action.START_TRACKING").putExtra("pid", Process.myPid()).putExtra("name", str));
    }

    private void c() {
        int size = this.d.size();
        this.e = new int[size];
        StringBuffer stringBuffer = new StringBuffer("Now tracking processes: ");
        for (int i = 0; i < size; i++) {
            int iIntValue = ((Long) this.d.get(i)).intValue();
            this.e[i] = iIntValue;
            stringBuffer.append(iIntValue);
            stringBuffer.append(" ");
        }
        Log.v(b, stringBuffer.toString());
    }

    public final dT a(int i) {
        return (dT) this.c.get(i);
    }

    public final int[] a() {
        return this.e;
    }

    final void b() {
        synchronized (this.f) {
            Debug.MemoryInfo[] processMemoryInfo = this.g.getProcessMemoryInfo(this.e);
            for (int i = 0; i < processMemoryInfo.length; i++) {
                Debug.MemoryInfo memoryInfo = processMemoryInfo[i];
                if (i > this.d.size()) {
                    Log.e(b, "update: unknown process info received: " + memoryInfo);
                    break;
                }
                long jIntValue = ((Long) this.d.get(i)).intValue();
                dT dTVar = (dT) this.c.get(jIntValue);
                dTVar.f = (dTVar.f + 1) % dTVar.c.length;
                long[] jArr = dTVar.c;
                int i2 = dTVar.f;
                long totalPss = memoryInfo.getTotalPss();
                dTVar.f274a = totalPss;
                jArr[i2] = totalPss;
                long[] jArr2 = dTVar.d;
                int i3 = dTVar.f;
                long totalPrivateDirty = memoryInfo.getTotalPrivateDirty();
                dTVar.b = totalPrivateDirty;
                jArr2[i3] = totalPrivateDirty;
                if (dTVar.f274a > dTVar.e) {
                    dTVar.e = dTVar.f274a;
                }
                if (dTVar.b > dTVar.e) {
                    dTVar.e = dTVar.b;
                }
                if (dTVar.f274a == 0) {
                    Log.v(b, "update: pid " + jIntValue + " has pss=0, it probably died");
                    this.c.remove(jIntValue);
                }
            }
            for (int size = this.d.size() - 1; size >= 0; size--) {
                if (this.c.get(((Long) this.d.get(size)).intValue()) == null) {
                    this.d.remove(size);
                    c();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f271a.sendEmptyMessage(1);
        return this.h;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.g = (ActivityManager) getSystemService("activity");
        for (ActivityManager.RunningServiceInfo runningServiceInfo : this.g.getRunningServices(256)) {
            if (runningServiceInfo.service.getPackageName().equals(getPackageName())) {
                Log.v(b, "discovered running service: " + runningServiceInfo.process + " (" + runningServiceInfo.pid + ")");
                a(runningServiceInfo.pid, runningServiceInfo.process, System.currentTimeMillis() - (SystemClock.elapsedRealtime() - runningServiceInfo.activeSince));
            }
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : this.g.getRunningAppProcesses()) {
            String str = runningAppProcessInfo.processName;
            if (str.startsWith(getPackageName())) {
                Log.v(b, "discovered other running process: " + str + " (" + runningAppProcessInfo.pid + ")");
                a(runningAppProcessInfo.pid, str, System.currentTimeMillis());
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f271a.sendEmptyMessage(2);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.v(b, "Received start id " + i2 + ": " + intent);
        if (intent != null && "com.android.launcher3.action.START_TRACKING".equals(intent.getAction())) {
            a(intent.getIntExtra("pid", -1), intent.getStringExtra("name"), intent.getLongExtra("start", System.currentTimeMillis()));
        }
        this.f271a.sendEmptyMessage(1);
        return 1;
    }
}
