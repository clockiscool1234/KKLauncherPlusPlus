package com.android.launcher3;

import android.content.Intent;
import android.util.Log;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class eD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Launcher f306a;
    private DataOutputStream b;
    private ArrayList c;
    private ArrayList d;

    public eD(Launcher launcher) throws Throwable {
        this.f306a = launcher;
        b();
        try {
            this.b = new DataOutputStream(this.f306a.openFileOutput("launches.log", 32768));
            this.b.writeInt(1);
            this.b.writeInt(1);
        } catch (FileNotFoundException e) {
            Log.e("Launcher3/Stats", "unable to create stats log: " + e);
            this.b = null;
        } catch (IOException e2) {
            Log.e("Launcher3/Stats", "unable to write to stats log: " + e2);
            this.b = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void a() throws Throwable {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(this.f306a.openFileOutput("stats.log.tmp", 0));
                try {
                    dataOutputStream.writeInt(1);
                    int size = this.d.size();
                    dataOutputStream.writeInt(size);
                    for (int i = 0; i < size; i++) {
                        dataOutputStream.writeUTF((String) this.c.get(i));
                        dataOutputStream.writeInt(((Integer) this.d.get(i)).intValue());
                    }
                    dataOutputStream.close();
                    this.f306a.getFileStreamPath("stats.log.tmp").renameTo(this.f306a.getFileStreamPath("stats.log"));
                } catch (FileNotFoundException e) {
                    e = e;
                    Log.e("Launcher3/Stats", "unable to create stats data: " + e);
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    Log.e("Launcher3/Stats", "unable to write to stats data: " + e);
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        dataOutputStream2.close();
                    } catch (IOException e5) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e6) {
            e = e6;
            dataOutputStream = null;
        } catch (IOException e7) {
            e = e7;
            dataOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                dataOutputStream2.close();
            }
            throw th;
        }
    }

    private void b() throws Throwable {
        DataInputStream dataInputStream;
        this.c = new ArrayList(100);
        this.d = new ArrayList(100);
        DataInputStream dataInputStream2 = null;
        try {
            dataInputStream = new DataInputStream(this.f306a.openFileInput("stats.log"));
            try {
                if (dataInputStream.readInt() == 1) {
                    int i = dataInputStream.readInt();
                    for (int i2 = 0; i2 < i; i2++) {
                        String utf = dataInputStream.readUTF();
                        int i3 = dataInputStream.readInt();
                        this.c.add(utf);
                        this.d.add(Integer.valueOf(i3));
                    }
                }
                try {
                    dataInputStream.close();
                } catch (IOException e) {
                }
            } catch (FileNotFoundException e2) {
                if (dataInputStream != null) {
                    try {
                        dataInputStream.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (IOException e4) {
                if (dataInputStream != null) {
                    try {
                        dataInputStream.close();
                    } catch (IOException e5) {
                    }
                }
            } catch (Throwable th) {
                dataInputStream2 = dataInputStream;
                th = th;
                if (dataInputStream2 != null) {
                    try {
                        dataInputStream2.close();
                    } catch (IOException e6) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
            dataInputStream = null;
        } catch (IOException e8) {
            dataInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a(Intent intent, C0137ey c0137ey) {
        Intent intent2 = new Intent(intent);
        intent2.setSourceBounds(null);
        String uri = intent2.toUri(0);
        Intent intentPutExtra = new Intent("com.android.launcher3.action.LAUNCH").putExtra("intent", uri);
        if (c0137ey != null) {
            intentPutExtra.putExtra("container", c0137ey.h).putExtra("screen", c0137ey.i).putExtra("cellX", c0137ey.j).putExtra("cellY", c0137ey.k);
        }
        this.f306a.sendBroadcast(intentPutExtra, "com.android.launcher3.permission.RECEIVE_LAUNCH_BROADCASTS");
        int iIndexOf = this.c.indexOf(uri);
        if (iIndexOf < 0) {
            this.c.add(uri);
            this.d.add(1);
        } else {
            this.d.set(iIndexOf, Integer.valueOf(((Integer) this.d.get(iIndexOf)).intValue() + 1));
        }
        a();
        if (this.b != null) {
            try {
                this.b.writeInt(4096);
                this.b.writeLong(System.currentTimeMillis());
                if (c0137ey == null) {
                    this.b.writeShort(0);
                    this.b.writeShort(0);
                    this.b.writeShort(0);
                    this.b.writeShort(0);
                } else {
                    this.b.writeShort((short) c0137ey.h);
                    this.b.writeShort((short) c0137ey.i);
                    this.b.writeShort((short) c0137ey.j);
                    this.b.writeShort((short) c0137ey.k);
                }
                this.b.writeUTF(uri);
                this.b.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
