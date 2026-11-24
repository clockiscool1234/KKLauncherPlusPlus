package a.a.a.c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a extends l implements Map {
    private f c;

    private f b() {
        if (this.c == null) {
            this.c = new b(this);
        }
        return this.c;
    }

    @Override // java.util.Map
    public Set entrySet() {
        f fVarB = b();
        if (fVarB.f23a == null) {
            fVarB.f23a = new h(fVarB);
        }
        return fVarB.f23a;
    }

    @Override // java.util.Map
    public Set keySet() {
        f fVarB = b();
        if (fVarB.b == null) {
            fVarB.b = new i(fVarB);
        }
        return fVarB.b;
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        a(this.b + map.size());
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection values() {
        f fVarB = b();
        if (fVarB.c == null) {
            fVarB.c = new k(fVarB);
        }
        return fVarB.c;
    }
}
