package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.cv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
enum EnumC0081cv {
    NONE,
    WORKSPACE,
    APPS_CUSTOMIZE,
    APPS_CUSTOMIZE_SPRING_LOADED;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static EnumC0081cv[] valuesCustom() {
        EnumC0081cv[] enumC0081cvArrValuesCustom = values();
        int length = enumC0081cvArrValuesCustom.length;
        EnumC0081cv[] enumC0081cvArr = new EnumC0081cv[length];
        System.arraycopy(enumC0081cvArrValuesCustom, 0, enumC0081cvArr, 0, length);
        return enumC0081cvArr;
    }
}
