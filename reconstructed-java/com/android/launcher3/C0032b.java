package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.android.launcher3.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0032b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f163a = new ArrayList(42);
    public ArrayList b = new ArrayList(42);
    public ArrayList c = new ArrayList();
    public ArrayList d = new ArrayList();
    private C0055bw e;
    private AbstractC0059c f;

    public C0032b(C0055bw c0055bw, AbstractC0059c abstractC0059c) {
        this.e = c0055bw;
        this.f = abstractC0059c;
    }

    private static View a(CellLayout cellLayout, ViewGroup viewGroup, int i, int i2) {
        return a(a(cellLayout, viewGroup), i, i2);
    }

    private static View a(CellLayout cellLayout, ViewGroup viewGroup, View view, int i) {
        ArrayList arrayListA = a(cellLayout, viewGroup);
        return a(arrayListA, arrayListA.indexOf(view), i);
    }

    private static View a(ArrayList arrayList, int i, int i2) {
        int size = arrayList.size();
        int i3 = i + i2;
        while (i3 >= 0 && i3 < size) {
            View view = (View) arrayList.get(i3);
            if ((view instanceof BubbleTextView) || (view instanceof FolderIcon)) {
                return view;
            }
            i3 += i2;
        }
        return null;
    }

    private static ViewGroup a(ViewGroup viewGroup, int i) {
        ViewGroup viewGroup2 = (ViewGroup) ((dX) viewGroup).c(i);
        return viewGroup2 instanceof CellLayout ? ((CellLayout) viewGroup2).q() : viewGroup2;
    }

    private static TabHost a(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof TabHost)) {
            parent = parent.getParent();
        }
        return (TabHost) parent;
    }

    private static ArrayList a(CellLayout cellLayout, ViewGroup viewGroup) {
        int iK = cellLayout.k();
        int childCount = viewGroup.getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < childCount; i++) {
            arrayList.add(viewGroup.getChildAt(i));
        }
        Collections.sort(arrayList, new aN(iK));
        return arrayList;
    }

    static boolean a(View view, int i, KeyEvent keyEvent) {
        TabHost tabHostA = a(view);
        FrameLayout tabContentView = tabHostA.getTabContentView();
        View viewFindViewById = tabHostA.findViewById(R.id.market_button);
        boolean z = keyEvent.getAction() != 1;
        switch (i) {
            case 20:
                if (!z || view != viewFindViewById) {
                    return false;
                }
                tabContentView.requestFocus();
                return true;
            case 21:
            default:
                return false;
            case 22:
                if (!z || view == viewFindViewById) {
                    return true;
                }
                viewFindViewById.requestFocus();
                return true;
        }
    }

    static boolean a(AccessibleTabView accessibleTabView, int i, KeyEvent keyEvent) {
        boolean z;
        if (!cB.a().j()) {
            return false;
        }
        FocusOnlyTabWidget focusOnlyTabWidget = (FocusOnlyTabWidget) accessibleTabView.getParent();
        TabHost tabHostA = a(focusOnlyTabWidget);
        FrameLayout tabContentView = tabHostA.getTabContentView();
        int tabCount = focusOnlyTabWidget.getTabCount();
        int iA = focusOnlyTabWidget.a(accessibleTabView);
        boolean z2 = keyEvent.getAction() != 1;
        switch (i) {
            case 19:
                z = true;
                break;
            case 20:
                if (z2) {
                    tabContentView.requestFocus();
                }
                z = true;
                break;
            case 21:
                if (z2 && iA > 0) {
                    focusOnlyTabWidget.getChildTabViewAt(iA - 1).requestFocus();
                }
                z = true;
                break;
            case 22:
                if (z2) {
                    if (iA < tabCount - 1) {
                        focusOnlyTabWidget.getChildTabViewAt(iA + 1).requestFocus();
                    } else if (accessibleTabView.getNextFocusRightId() != -1) {
                        tabHostA.findViewById(accessibleTabView.getNextFocusRightId()).requestFocus();
                    }
                }
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008f  */
    private static View b(CellLayout cellLayout, ViewGroup viewGroup, View view, int i) {
        boolean z;
        ArrayList arrayListA = a(cellLayout, viewGroup);
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        int iL = cellLayout.l();
        int i2 = layoutParams.b;
        int i3 = i2 + i;
        if (i3 >= 0 && i3 < iL) {
            int i4 = -1;
            int iIndexOf = arrayListA.indexOf(view);
            int size = i < 0 ? -1 : arrayListA.size();
            float f = Float.MAX_VALUE;
            while (iIndexOf != size) {
                View view2 = (View) arrayListA.get(iIndexOf);
                CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) view2.getLayoutParams();
                if (i < 0) {
                    z = layoutParams2.b < i2;
                } else {
                    z = layoutParams2.b > i2;
                }
                if (z && ((view2 instanceof BubbleTextView) || (view2 instanceof FolderIcon))) {
                    float fSqrt = (float) Math.sqrt(Math.pow(layoutParams2.b - layoutParams.b, 2.0d) + Math.pow(layoutParams2.f74a - layoutParams.f74a, 2.0d));
                    if (fSqrt < f) {
                        f = fSqrt;
                        i4 = iIndexOf;
                    } else {
                        i4 = i4;
                        f = f;
                    }
                } else {
                    i4 = i4;
                    f = f;
                }
                iIndexOf = iIndexOf <= size ? iIndexOf + 1 : iIndexOf - 1;
            }
            if (i4 >= 0) {
                return (View) arrayListA.get(i4);
            }
        }
        return null;
    }

    private static C0136ex b(ViewGroup viewGroup, int i) {
        return (C0136ex) ((ViewGroup) viewGroup.getChildAt(i)).getChildAt(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean b(View view, int i, KeyEvent keyEvent) {
        int iC;
        int iD;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroupA;
        ViewGroup viewGroupA2;
        if (view.getParent() instanceof C0136ex) {
            ViewGroup viewGroup3 = (ViewGroup) view.getParent();
            ViewGroup viewGroup4 = (ViewGroup) viewGroup3.getParent();
            int iK = ((CellLayout) viewGroup4).k();
            viewGroup2 = viewGroup4;
            iD = ((CellLayout) viewGroup4).l();
            iC = iK;
            viewGroup = viewGroup3;
        } else {
            ViewGroup viewGroup5 = (ViewGroup) view.getParent();
            iC = ((C0120eh) viewGroup5).c();
            iD = ((C0120eh) viewGroup5).d();
            viewGroup = viewGroup5;
            viewGroup2 = viewGroup5;
        }
        dX dXVar = (dX) viewGroup2.getParent();
        TabWidget tabWidget = a(dXVar).getTabWidget();
        int iIndexOfChild = viewGroup.indexOfChild(view);
        int childCount = viewGroup.getChildCount();
        int iD2 = dXVar.d(dXVar.indexOfChild(viewGroup2));
        int childCount2 = dXVar.getChildCount();
        int i2 = iIndexOfChild % iC;
        int i3 = iIndexOfChild / iC;
        boolean z = keyEvent.getAction() != 1;
        switch (i) {
            case 19:
                if (z) {
                    if (i3 > 0) {
                        viewGroup.getChildAt(((i3 - 1) * iC) + i2).requestFocus();
                    } else {
                        tabWidget.requestFocus();
                    }
                }
                return true;
            case 20:
                if (z && i3 < iD - 1) {
                    viewGroup.getChildAt(Math.min(childCount - 1, ((i3 + 1) * iC) + i2)).requestFocus();
                }
                return true;
            case 21:
                if (z) {
                    if (iIndexOfChild > 0) {
                        viewGroup.getChildAt(iIndexOfChild - 1).requestFocus();
                    } else if (iD2 > 0 && (viewGroupA2 = a(dXVar, iD2 - 1)) != null) {
                        dXVar.o(iD2 - 1);
                        View childAt = viewGroupA2.getChildAt(viewGroupA2.getChildCount() - 1);
                        if (childAt != null) {
                            childAt.requestFocus();
                        }
                    }
                }
                return true;
            case 22:
                if (z) {
                    if (iIndexOfChild < childCount - 1) {
                        viewGroup.getChildAt(iIndexOfChild + 1).requestFocus();
                    } else if (iD2 < childCount2 - 1 && (viewGroupA = a(dXVar, iD2 + 1)) != null) {
                        dXVar.o(iD2 + 1);
                        View childAt2 = viewGroupA.getChildAt(0);
                        if (childAt2 != null) {
                            childAt2.requestFocus();
                        }
                    }
                }
                return true;
            case 23:
            case 66:
                if (z) {
                    ((View.OnClickListener) dXVar).onClick(view);
                }
                return true;
            case 92:
                if (z) {
                    if (iD2 > 0) {
                        ViewGroup viewGroupA3 = a(dXVar, iD2 - 1);
                        if (viewGroupA3 != null) {
                            dXVar.o(iD2 - 1);
                            View childAt3 = viewGroupA3.getChildAt(0);
                            if (childAt3 != null) {
                                childAt3.requestFocus();
                            }
                        }
                    } else {
                        viewGroup.getChildAt(0).requestFocus();
                    }
                }
                return true;
            case 93:
                if (z) {
                    if (iD2 < childCount2 - 1) {
                        ViewGroup viewGroupA4 = a(dXVar, iD2 + 1);
                        if (viewGroupA4 != null) {
                            dXVar.o(iD2 + 1);
                            View childAt4 = viewGroupA4.getChildAt(0);
                            if (childAt4 != null) {
                                childAt4.requestFocus();
                            }
                        }
                    } else {
                        viewGroup.getChildAt(childCount - 1).requestFocus();
                    }
                }
                return true;
            case 122:
                if (z) {
                    viewGroup.getChildAt(0).requestFocus();
                }
                return true;
            case 123:
                if (z) {
                    viewGroup.getChildAt(childCount - 1).requestFocus();
                }
                return true;
            default:
                return false;
        }
    }

    static List c(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        return listQueryIntentActivities != null ? listQueryIntentActivities : new ArrayList();
    }

    static boolean c(View view, int i, KeyEvent keyEvent) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        Workspace workspace = (Workspace) ((ViewGroup) viewGroup.getParent()).findViewById(R.id.workspace);
        int iIndexOfChild = viewGroup.indexOfChild(view);
        int childCount = viewGroup.getChildCount();
        int iC = workspace.C();
        boolean z = keyEvent.getAction() != 1;
        switch (i) {
            case 19:
                if (z) {
                    CellLayout cellLayout = (CellLayout) workspace.getChildAt(iC);
                    View viewA = a(cellLayout, cellLayout.q(), -1, 1);
                    if (viewA != null) {
                        viewA.requestFocus();
                    } else {
                        workspace.requestFocus();
                    }
                }
                return true;
            case 20:
                return true;
            case 21:
                if (z) {
                    if (iIndexOfChild > 0) {
                        viewGroup.getChildAt(iIndexOfChild - 1).requestFocus();
                    } else {
                        workspace.o(iC - 1);
                    }
                }
                return true;
            case 22:
                if (z) {
                    if (iIndexOfChild < childCount - 1) {
                        viewGroup.getChildAt(iIndexOfChild + 1).requestFocus();
                    } else {
                        workspace.o(iC + 1);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    static boolean d(View view, int i, KeyEvent keyEvent) {
        View viewA;
        View viewA2;
        C0136ex c0136ex = (C0136ex) view.getParent();
        CellLayout cellLayout = (CellLayout) c0136ex.getParent();
        Workspace workspace = (Workspace) cellLayout.getParent();
        ViewGroup viewGroup = (ViewGroup) workspace.getParent();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.search_drop_target_bar);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup.findViewById(R.id.hotseat);
        int iIndexOfChild = workspace.indexOfChild(cellLayout);
        int childCount = workspace.getChildCount();
        boolean z = keyEvent.getAction() != 1;
        switch (i) {
            case 19:
                if (!z) {
                    return false;
                }
                View viewB = b(cellLayout, c0136ex, view, -1);
                if (viewB == null) {
                    viewGroup2.requestFocus();
                    return false;
                }
                viewB.requestFocus();
                break;
                break;
            case 20:
                if (!z) {
                    return false;
                }
                View viewB2 = b(cellLayout, c0136ex, view, 1);
                if (viewB2 == null) {
                    if (viewGroup3 == null) {
                        return false;
                    }
                    viewGroup3.requestFocus();
                    return false;
                }
                viewB2.requestFocus();
                break;
                break;
            case 21:
                if (z) {
                    View viewA3 = a(cellLayout, c0136ex, view, -1);
                    if (viewA3 != null) {
                        viewA3.requestFocus();
                    } else if (iIndexOfChild > 0) {
                        C0136ex c0136exB = b(workspace, iIndexOfChild - 1);
                        View viewA4 = a(cellLayout, c0136exB, c0136exB.getChildCount(), -1);
                        if (viewA4 != null) {
                            viewA4.requestFocus();
                        } else {
                            workspace.o(iIndexOfChild - 1);
                        }
                    }
                }
                return true;
            case 22:
                if (z) {
                    View viewA5 = a(cellLayout, c0136ex, view, 1);
                    if (viewA5 != null) {
                        viewA5.requestFocus();
                    } else if (iIndexOfChild < childCount - 1) {
                        View viewA6 = a(cellLayout, b(workspace, iIndexOfChild + 1), -1, 1);
                        if (viewA6 != null) {
                            viewA6.requestFocus();
                        } else {
                            workspace.o(iIndexOfChild + 1);
                        }
                    }
                }
                return true;
            case 92:
                if (z) {
                    if (iIndexOfChild > 0) {
                        View viewA7 = a(cellLayout, b(workspace, iIndexOfChild - 1), -1, 1);
                        if (viewA7 != null) {
                            viewA7.requestFocus();
                        } else {
                            workspace.o(iIndexOfChild - 1);
                        }
                    } else {
                        View viewA8 = a(cellLayout, c0136ex, -1, 1);
                        if (viewA8 != null) {
                            viewA8.requestFocus();
                        }
                    }
                }
                return true;
            case 93:
                if (z) {
                    if (iIndexOfChild < childCount - 1) {
                        View viewA9 = a(cellLayout, b(workspace, iIndexOfChild + 1), -1, 1);
                        if (viewA9 != null) {
                            viewA9.requestFocus();
                        } else {
                            workspace.o(iIndexOfChild + 1);
                        }
                    } else {
                        View viewA10 = a(cellLayout, c0136ex, c0136ex.getChildCount(), -1);
                        if (viewA10 != null) {
                            viewA10.requestFocus();
                        }
                    }
                }
                return true;
            case 122:
                if (z && (viewA2 = a(cellLayout, c0136ex, -1, 1)) != null) {
                    viewA2.requestFocus();
                }
                return true;
            case 123:
                if (z && (viewA = a(cellLayout, c0136ex, c0136ex.getChildCount(), -1)) != null) {
                    viewA.requestFocus();
                }
                break;
            default:
                return false;
        }
        return true;
    }

    static boolean e(View view, int i, KeyEvent keyEvent) {
        View viewA;
        View viewA2;
        View viewB;
        View viewA3;
        C0136ex c0136ex = (C0136ex) view.getParent();
        CellLayout cellLayout = (CellLayout) c0136ex.getParent();
        FolderEditText folderEditText = ((Folder) ((ScrollView) cellLayout.getParent()).getParent()).e;
        boolean z = keyEvent.getAction() != 1;
        switch (i) {
            case 19:
                if (z && (viewB = b(cellLayout, c0136ex, view, -1)) != null) {
                    viewB.requestFocus();
                }
                return true;
            case 20:
                if (z) {
                    View viewB2 = b(cellLayout, c0136ex, view, 1);
                    if (viewB2 != null) {
                        viewB2.requestFocus();
                    } else {
                        folderEditText.requestFocus();
                    }
                }
                return true;
            case 21:
                if (z && (viewA3 = a(cellLayout, c0136ex, view, -1)) != null) {
                    viewA3.requestFocus();
                }
                return true;
            case 22:
                if (z) {
                    View viewA4 = a(cellLayout, c0136ex, view, 1);
                    if (viewA4 != null) {
                        viewA4.requestFocus();
                    } else {
                        folderEditText.requestFocus();
                    }
                }
                return true;
            case 122:
                if (z && (viewA2 = a(cellLayout, c0136ex, -1, 1)) != null) {
                    viewA2.requestFocus();
                }
                return true;
            case 123:
                if (z && (viewA = a(cellLayout, c0136ex, c0136ex.getChildCount(), -1)) != null) {
                    viewA.requestFocus();
                }
                return true;
            default:
                return false;
        }
    }

    public final void a(Context context, String str) {
        List listC = c(context, str);
        if (listC.size() > 0) {
            Iterator it = listC.iterator();
            while (it.hasNext()) {
                a(new C0086d(context.getPackageManager(), (ResolveInfo) it.next(), this.e, null));
            }
        }
    }

    public final void a(C0086d c0086d) {
        boolean z;
        if (this.f != null) {
            AbstractC0059c abstractC0059c = this.f;
            ComponentName componentName = c0086d.d;
            if (!abstractC0059c.a()) {
                return;
            }
        }
        ArrayList arrayList = this.f163a;
        ComponentName componentName2 = c0086d.d;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            } else {
                if (((C0086d) arrayList.get(i)).d.equals(componentName2)) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f163a.add(c0086d);
        this.b.add(c0086d);
    }

    public final void a(String str) {
        ArrayList arrayList = this.f163a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0086d c0086d = (C0086d) arrayList.get(size);
            if (str.equals(c0086d.f256a.getComponent().getPackageName())) {
                this.c.add(c0086d);
                arrayList.remove(size);
            }
        }
        this.e.b();
    }

    public final void b(Context context, String str) {
        C0086d c0086d;
        boolean z;
        List listC = c(context, str);
        if (listC.size() <= 0) {
            for (int size = this.f163a.size() - 1; size >= 0; size--) {
                C0086d c0086d2 = (C0086d) this.f163a.get(size);
                ComponentName component = c0086d2.f256a.getComponent();
                if (str.equals(component.getPackageName())) {
                    this.c.add(c0086d2);
                    this.e.a(component);
                    this.f163a.remove(size);
                }
            }
            return;
        }
        for (int size2 = this.f163a.size() - 1; size2 >= 0; size2--) {
            C0086d c0086d3 = (C0086d) this.f163a.get(size2);
            ComponentName component2 = c0086d3.f256a.getComponent();
            if (str.equals(component2.getPackageName())) {
                String className = component2.getClassName();
                Iterator it = listC.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((ResolveInfo) it.next()).activityInfo.name.equals(className)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    this.c.add(c0086d3);
                    this.e.a(component2);
                    this.f163a.remove(size2);
                }
            }
        }
        int size3 = listC.size();
        for (int i = 0; i < size3; i++) {
            ResolveInfo resolveInfo = (ResolveInfo) listC.get(i);
            String str2 = resolveInfo.activityInfo.applicationInfo.packageName;
            String str3 = resolveInfo.activityInfo.name;
            Iterator it2 = this.f163a.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    c0086d = null;
                    break;
                }
                c0086d = (C0086d) it2.next();
                ComponentName component3 = c0086d.f256a.getComponent();
                if (str2.equals(component3.getPackageName()) && str3.equals(component3.getClassName())) {
                    break;
                }
            }
            if (c0086d == null) {
                a(new C0086d(context.getPackageManager(), resolveInfo, this.e, null));
            } else {
                this.e.a(c0086d.d);
                this.e.a(c0086d, resolveInfo, (HashMap) null);
                this.d.add(c0086d);
            }
        }
    }
}
