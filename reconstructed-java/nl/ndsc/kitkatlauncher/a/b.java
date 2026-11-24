package nl.ndsc.kitkatlauncher.a;

/* JADX INFO: loaded from: classes.dex */
public enum b {
    DO_NOTHING,
    GO_TO_FAR_LEFT_SCREEN,
    GO_TO_CENTER_SCREEN,
    GO_TO_FAR_RIGHT_SCREEN;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static b[] valuesCustom() {
        b[] bVarArrValuesCustom = values();
        int length = bVarArrValuesCustom.length;
        b[] bVarArr = new b[length];
        System.arraycopy(bVarArrValuesCustom, 0, bVarArr, 0, length);
        return bVarArr;
    }
}
