package nl.ndsc.kitkatlauncher.b;

import android.os.Bundle;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class e extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static /* synthetic */ int[] f422a;

    private void a() {
        String str = "";
        switch (e()[a.a.a.c.d.h(getActivity()).ordinal()]) {
            case 1:
                str = "Do nothing";
                break;
            case 2:
                str = "Move to far-left screen";
                break;
            case 3:
                str = "Move to center screen";
                break;
            case 4:
                str = "Move to far-right screen";
                break;
        }
        a("setting_homebutton_action_key", str);
    }

    private static /* synthetic */ int[] e() {
        int[] iArr = f422a;
        if (iArr == null) {
            iArr = new int[nl.ndsc.kitkatlauncher.a.b.valuesCustom().length];
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.DO_NOTHING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.GO_TO_CENTER_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.GO_TO_FAR_LEFT_SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[nl.ndsc.kitkatlauncher.a.b.GO_TO_FAR_RIGHT_SCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            f422a = iArr;
        }
        return iArr;
    }

    @Override // nl.ndsc.kitkatlauncher.b.r
    public final void b(String str) {
        if (str.equals("setting_homebutton_action_key")) {
            a();
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.settings_behavior);
    }

    @Override // nl.ndsc.kitkatlauncher.b.r, android.app.Fragment
    public final void onResume() {
        super.onResume();
        c("Behavior");
        a();
    }
}
