package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
enum fU {
    NORMAL,
    SPRING_LOADED,
    SMALL,
    OVERVIEW;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static fU[] valuesCustom() {
        fU[] fUVarArrValuesCustom = values();
        int length = fUVarArrValuesCustom.length;
        fU[] fUVarArr = new fU[length];
        System.arraycopy(fUVarArrValuesCustom, 0, fUVarArr, 0, length);
        return fUVarArr;
    }
}
