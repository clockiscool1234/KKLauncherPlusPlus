package com.android.launcher3;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Build;
import android.os.UserManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
final class cG {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Launcher f214a;
    private ViewGroupOnHierarchyChangeListenerC0046bn b = new ViewGroupOnHierarchyChangeListenerC0046bn();

    public cG(Launcher launcher) {
        this.f214a = launcher;
        this.f214a.getLayoutInflater();
    }

    private Cling a(int i, int i2, boolean z, boolean z2) {
        Cling cling = (Cling) this.f214a.findViewById(i);
        View viewFindViewById = i2 > 0 ? this.f214a.findViewById(i2) : null;
        if (cling != null) {
            cling.a(this.f214a, viewFindViewById);
            cling.a(z, 250);
            cling.setSystemUiVisibility(cling.getSystemUiVisibility() | 1);
        }
        return cling;
    }

    private void a(int i) {
        View viewFindViewById = this.f214a.findViewById(i);
        if (viewFindViewById != null) {
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            viewGroup.post(new cI(this, viewGroup, viewFindViewById));
            this.b.a(this.f214a.g());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Cling cling, Runnable runnable, String str, int i, boolean z) {
        if (cling == null || cling.getVisibility() == 8) {
            return;
        }
        cJ cJVar = new cJ(this, cling, str, runnable);
        if (i <= 0) {
            cJVar.run();
        } else {
            cling.a(i, cJVar);
        }
        this.b.a(this.f214a.g());
        if (z) {
            cling.setSystemUiVisibility(cling.getSystemUiVisibility() & (-2));
        }
    }

    private void a(Cling cling, String str, View view) {
        a(cling, view == null ? new cN(this) : null, str, 200, true);
        this.f214a.k().a(true);
    }

    private void a(Cling cling, String str, boolean z, boolean z2) {
        TextView textView = (TextView) cling.findViewById(R.id.custom_content_hint);
        if (textView != null) {
            if (!z || str.isEmpty()) {
                if (z2) {
                    textView.animate().alpha(0.0f).setDuration(250L).setListener(new cH(this, textView)).start();
                    return;
                } else {
                    textView.setAlpha(0.0f);
                    textView.setVisibility(8);
                    return;
                }
            }
            textView.setText(str);
            textView.setVisibility(0);
            if (!z2) {
                textView.setAlpha(1.0f);
            } else {
                textView.setAlpha(0.0f);
                textView.animate().alpha(1.0f).setDuration(250L).start();
            }
        }
    }

    private boolean j() {
        if (ActivityManager.isRunningInTestHarness() || ((AccessibilityManager) this.f214a.getSystemService("accessibility")).isTouchExplorationEnabled()) {
            return false;
        }
        return ((Build.VERSION.SDK_INT >= 18) && AccountManager.get(this.f214a).getAccounts().length == 0 && ((UserManager) this.f214a.getSystemService("user")).getUserRestrictions().getBoolean("no_modify_accounts", false)) ? false : true;
    }

    private void k() {
        this.f214a.N();
        this.f214a.h().post(new cL(this));
    }

    public final boolean a() {
        Cling cling = (Cling) this.f214a.findViewById(R.id.folder_cling);
        return cling != null && cling.getVisibility() == 0;
    }

    public final void b() {
        Cling cling = (Cling) this.f214a.findViewById(R.id.first_run_cling);
        Launcher launcher = this.f214a;
        String strH = Launcher.H();
        if (this.f214a.h().af()) {
            if (cling != null) {
                a(cling, strH, true, true);
            }
        } else if (cling != null) {
            a(cling, strH, false, true);
        }
    }

    public final boolean c() {
        SharedPreferences sharedPreferencesO = this.f214a.o();
        return j() && !sharedPreferencesO.getBoolean("cling_gel.first_run.dismissed", false) && !sharedPreferencesO.getBoolean("cling_gel.migration.dismissed", false) && cB.h().a();
    }

    public final void d() {
        a(R.id.first_run_cling);
        a(R.id.migration_cling);
    }

    public final void dismissFirstRunCling(View view) {
        a((Cling) this.f214a.findViewById(R.id.first_run_cling), new cK(this), "cling_gel.first_run.dismissed", 200, false);
        this.f214a.k().b(true);
    }

    public final void dismissFolderCling(View view) {
        a((Cling) this.f214a.findViewById(R.id.folder_cling), null, "cling_gel.folder.dismissed", 200, true);
    }

    public final void dismissMigrationClingCopyApps(View view) {
        cO cOVarM = this.f214a.m();
        cOVarM.a(false, true);
        cOVarM.a(false, -1001, 3);
        SharedPreferences.Editor editorEdit = this.f214a.getSharedPreferences("com.android.launcher3.prefs", 0).edit();
        editorEdit.putBoolean("launcher.user_migrated_from_old_data", true);
        editorEdit.apply();
        k();
    }

    public final void dismissMigrationClingUseDefault(View view) {
        cO cOVarM = this.f214a.m();
        cOVarM.a(false, true);
        cOVarM.a(false, -1001, 1);
        k();
    }

    public final void dismissMigrationWorkspaceCling(View view) {
        a((Cling) this.f214a.findViewById(R.id.migration_workspace_cling), "cling_gel.migration_workspace.dismissed", view);
    }

    public final void dismissWorkspaceCling(View view) {
        a((Cling) this.f214a.findViewById(R.id.workspace_cling), "cling_gel.workspace.dismissed", view);
    }

    public final void e() {
        AccountManager accountManager;
        boolean z = ((Cling) this.f214a.findViewById(R.id.workspace_cling)).e().equals("workspace_custom") && (accountManager = AccountManager.get(this.f214a)) != null && accountManager.getAccountsByType("com.google").length == 0;
        if (z) {
            d();
            return;
        }
        this.f214a.o();
        Cling cling = (Cling) this.f214a.findViewById(R.id.first_run_cling);
        if (cling != null) {
            Launcher launcher = this.f214a;
            String strG = Launcher.G();
            Launcher launcher2 = this.f214a;
            String strH = Launcher.H();
            if (!strG.isEmpty()) {
                TextView textView = (TextView) cling.findViewById(R.id.search_bar_hint);
                textView.setText(strG);
                textView.setVisibility(0);
            }
            a(cling, strH, true, false);
        }
        a(R.id.first_run_cling, 0, false, true);
    }

    public final void f() {
        this.f214a.O();
        Cling clingA = a(R.id.migration_cling, 0, false, true);
        clingA.d();
        clingA.bringToFront();
    }

    public final void g() {
        if (!j() || this.f214a.o().getBoolean("cling_gel.migration_workspace.dismissed", false)) {
            a(R.id.migration_workspace_cling);
            return;
        }
        Cling clingA = a(R.id.migration_workspace_cling, 0, false, true);
        clingA.a();
        clingA.d();
        clingA.bringToFront();
    }

    public final void h() {
        if (!j() || this.f214a.o().getBoolean("cling_gel.workspace.dismissed", false)) {
            a(R.id.workspace_cling);
            return;
        }
        Cling clingA = a(R.id.workspace_cling, 0, false, true);
        clingA.b();
        Launcher launcher = this.f214a;
        int I = Launcher.I();
        Launcher launcher2 = this.f214a;
        int iK = Launcher.K();
        Launcher launcher3 = this.f214a;
        ComponentName componentNameJ = Launcher.J();
        Launcher launcher4 = this.f214a;
        String strL = Launcher.L();
        Launcher launcher5 = this.f214a;
        clingA.a(I, iK, componentNameJ, strL, Launcher.M());
    }

    public final Cling i() {
        SharedPreferences sharedPreferencesO = this.f214a.o();
        if (!j() || sharedPreferencesO.getBoolean("cling_gel.folder.dismissed", false) || sharedPreferencesO.getBoolean("launcher.user_migrated_from_old_data", false)) {
            a(R.id.folder_cling);
            return null;
        }
        Cling clingA = a(R.id.folder_cling, R.id.cling_scrim, true, true);
        Folder folderK = this.f214a.h().k();
        if (folderK == null) {
            return clingA;
        }
        Rect rect = new Rect();
        folderK.getHitRect(rect);
        clingA.b(rect);
        folderK.bringToFront();
        return clingA;
    }
}
