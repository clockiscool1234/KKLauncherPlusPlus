package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
enum dJ {
    TRANSLATION_X,
    TRANSLATION_Y,
    SCALE_X,
    SCALE_Y,
    ROTATION_Y,
    ALPHA,
    START_DELAY,
    DURATION,
    INTERPOLATOR,
    WITH_LAYER;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static dJ[] valuesCustom() {
        dJ[] dJVarArrValuesCustom = values();
        int length = dJVarArrValuesCustom.length;
        dJ[] dJVarArr = new dJ[length];
        System.arraycopy(dJVarArrValuesCustom, 0, dJVarArr, 0, length);
        return dJVarArr;
    }
}
