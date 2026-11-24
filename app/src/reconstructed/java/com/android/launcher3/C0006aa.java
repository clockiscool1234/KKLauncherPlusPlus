package com.android.launcher3;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Pair;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

/* JADX INFO: renamed from: com.android.launcher3.aa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0006aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedList f143a = new LinkedList();
    private MessageQueue b = Looper.myQueue();
    private HandlerC0008ac c = new HandlerC0008ac(this, 0);

    public final void a() {
        LinkedList linkedList = new LinkedList();
        synchronized (this.f143a) {
            linkedList.addAll(this.f143a);
            this.f143a.clear();
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((Runnable) ((Pair) it.next()).first).run();
        }
    }

    public final void a(int i) {
        synchronized (this.f143a) {
            ListIterator listIterator = this.f143a.listIterator();
            while (listIterator.hasNext()) {
                if (((Integer) ((Pair) listIterator.next()).second).intValue() == 1) {
                    listIterator.remove();
                }
            }
        }
    }

    public final void a(Runnable runnable) {
        a(runnable, 0);
    }

    public final void a(Runnable runnable, int i) {
        synchronized (this.f143a) {
            this.f143a.add(new Pair(runnable, Integer.valueOf(i)));
            if (this.f143a.size() == 1) {
                b();
            }
        }
    }

    final void b() {
        if (this.f143a.size() > 0) {
            if (((Runnable) ((Pair) this.f143a.getFirst()).first) instanceof RunnableC0007ab) {
                this.b.addIdleHandler(this.c);
            } else {
                this.c.sendEmptyMessage(1);
            }
        }
    }
}
