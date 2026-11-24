package a.a.a.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class h extends Activity {
    boolean c;
    boolean d;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private a.a.a.c.l l;
    private y m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Handler f6a = new i(this);
    final p b = new p();
    private m e = new j(this);

    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x00ed. Please report as an issue. */
    private static String a(View view) {
        String resourcePackageName;
        StringBuilder sb = new StringBuilder(128);
        sb.append(view.getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(view)));
        sb.append(' ');
        switch (view.getVisibility()) {
            case 0:
                sb.append('V');
                break;
            case 4:
                sb.append('I');
                break;
            case 8:
                sb.append('G');
                break;
            default:
                sb.append('.');
                break;
        }
        sb.append(view.isFocusable() ? 'F' : '.');
        sb.append(view.isEnabled() ? 'E' : '.');
        sb.append(view.willNotDraw() ? '.' : 'D');
        sb.append(view.isHorizontalScrollBarEnabled() ? 'H' : '.');
        sb.append(view.isVerticalScrollBarEnabled() ? 'V' : '.');
        sb.append(view.isClickable() ? 'C' : '.');
        sb.append(view.isLongClickable() ? 'L' : '.');
        sb.append(' ');
        sb.append(view.isFocused() ? 'F' : '.');
        sb.append(view.isSelected() ? 'S' : '.');
        sb.append(view.isPressed() ? 'P' : '.');
        sb.append(' ');
        sb.append(view.getLeft());
        sb.append(',');
        sb.append(view.getTop());
        sb.append('-');
        sb.append(view.getRight());
        sb.append(',');
        sb.append(view.getBottom());
        int id = view.getId();
        if (id != -1) {
            sb.append(" #");
            sb.append(Integer.toHexString(id));
            Resources resources = view.getResources();
            if (id != 0 && resources != null) {
                switch ((-16777216) & id) {
                    case 16777216:
                        resourcePackageName = "android";
                        String resourceTypeName = resources.getResourceTypeName(id);
                        String resourceEntryName = resources.getResourceEntryName(id);
                        sb.append(" ");
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName);
                        sb.append("/");
                        sb.append(resourceEntryName);
                        break;
                    case 2130706432:
                        resourcePackageName = "app";
                        String resourceTypeName2 = resources.getResourceTypeName(id);
                        String resourceEntryName2 = resources.getResourceEntryName(id);
                        sb.append(" ");
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName2);
                        sb.append("/");
                        sb.append(resourceEntryName2);
                        break;
                    default:
                        try {
                            resourcePackageName = resources.getResourcePackageName(id);
                            String resourceTypeName3 = resources.getResourceTypeName(id);
                            String resourceEntryName3 = resources.getResourceEntryName(id);
                            sb.append(" ");
                            sb.append(resourcePackageName);
                            sb.append(":");
                            sb.append(resourceTypeName3);
                            sb.append("/");
                            sb.append(resourceEntryName3);
                        } catch (Resources.NotFoundException e) {
                        }
                        break;
                }
            }
        }
        sb.append("}");
        return sb.toString();
    }

    private void a(String str, PrintWriter printWriter, View view) {
        ViewGroup viewGroup;
        int childCount;
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
            return;
        }
        printWriter.println(a(view));
        if (!(view instanceof ViewGroup) || (childCount = (viewGroup = (ViewGroup) view).getChildCount()) <= 0) {
            return;
        }
        String str2 = str + "  ";
        for (int i = 0; i < childCount; i++) {
            a(str2, printWriter, viewGroup.getChildAt(i));
        }
    }

    public static void c() {
    }

    final y a(String str, boolean z, boolean z2) {
        if (this.l == null) {
            this.l = new a.a.a.c.l();
        }
        y yVar = (y) this.l.get(str);
        if (yVar != null) {
            yVar.a(this);
        }
        return yVar;
    }

    protected final void a() {
        this.b.i();
    }

    final void a(String str) {
        y yVar;
        if (this.l == null || (yVar = (y) this.l.get(str)) == null || yVar.e) {
            return;
        }
        yVar.h();
        this.l.remove(str);
    }

    final void a(boolean z) {
        if (this.h) {
            return;
        }
        this.h = true;
        this.d = z;
        this.f6a.removeMessages(1);
        if (this.k) {
            this.k = false;
            if (this.m != null) {
                if (this.d) {
                    this.m.d();
                } else {
                    this.m.c();
                }
            }
        }
        this.b.l();
    }

    public final void b() {
        if (Build.VERSION.SDK_INT >= 11) {
            invalidateOptionsMenu();
        } else {
            this.i = true;
        }
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = Build.VERSION.SDK_INT;
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f);
        printWriter.print("mResumed=");
        printWriter.print(this.g);
        printWriter.print(" mStopped=");
        printWriter.print(this.c);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.h);
        printWriter.print(str2);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.k);
        if (this.m != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.m)));
            printWriter.println(":");
            this.m.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
        this.b.a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        a(str + "  ", printWriter, getWindow().getDecorView());
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.b.e();
        int i3 = i >> 16;
        if (i3 == 0) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        int i4 = i3 - 1;
        if (this.b.b == null || i4 < 0 || i4 >= this.b.b.size()) {
            Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(i));
        } else if (((ComponentCallbacksC0004e) this.b.b.get(i4)) == null) {
            Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(i));
        } else {
            ComponentCallbacksC0004e.d();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.b.a()) {
            return;
        }
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.b.a(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.b.a(this, this.e, (ComponentCallbacksC0004e) null);
        if (getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
        l lVar = (l) getLastNonConfigurationInstance();
        if (lVar != null) {
            this.l = lVar.b;
        }
        if (bundle != null) {
            this.b.a(bundle.getParcelable("android:support:fragments"), lVar != null ? lVar.f10a : null);
        }
        this.b.f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean zOnCreatePanelMenu = super.onCreatePanelMenu(i, menu) | this.b.a(menu, getMenuInflater());
        if (Build.VERSION.SDK_INT >= 11) {
            return zOnCreatePanelMenu;
        }
        return true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return super.onCreateView(str, context, attributeSet);
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.f9a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (!ComponentCallbacksC0004e.b(this, attributeValue)) {
            return super.onCreateView(str, context, attributeSet);
        }
        ComponentCallbacksC0004e componentCallbacksC0004eA = resourceId != -1 ? this.b.a(resourceId) : null;
        if (componentCallbacksC0004eA == null && string != null) {
            componentCallbacksC0004eA = this.b.a(string);
        }
        if (componentCallbacksC0004eA == null) {
            componentCallbacksC0004eA = this.b.a(0);
        }
        if (componentCallbacksC0004eA == null) {
            ComponentCallbacksC0004e componentCallbacksC0004eA2 = ComponentCallbacksC0004e.a(this, attributeValue);
            componentCallbacksC0004eA2.o = true;
            componentCallbacksC0004eA2.w = resourceId != 0 ? resourceId : 0;
            componentCallbacksC0004eA2.x = 0;
            componentCallbacksC0004eA2.y = string;
            componentCallbacksC0004eA2.p = true;
            componentCallbacksC0004eA2.s = this.b;
            Bundle bundle = componentCallbacksC0004eA2.d;
            componentCallbacksC0004eA2.f();
            this.b.a(componentCallbacksC0004eA2, true);
            componentCallbacksC0004eA = componentCallbacksC0004eA2;
        } else {
            if (componentCallbacksC0004eA.p) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + attributeValue);
            }
            componentCallbacksC0004eA.p = true;
            if (!componentCallbacksC0004eA.C) {
                Bundle bundle2 = componentCallbacksC0004eA.d;
                componentCallbacksC0004eA.f();
            }
            this.b.a(componentCallbacksC0004eA);
        }
        if (componentCallbacksC0004eA.H == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            componentCallbacksC0004eA.H.setId(resourceId);
        }
        if (componentCallbacksC0004eA.H.getTag() == null) {
            componentCallbacksC0004eA.H.setTag(string);
        }
        return componentCallbacksC0004eA.H;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a(false);
        this.b.n();
        if (this.m != null) {
            this.m.h();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 5 || i != 4 || keyEvent.getRepeatCount() != 0) {
            return super.onKeyDown(i, keyEvent);
        }
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.b.o();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        switch (i) {
            case 0:
                return this.b.a(menuItem);
            case 6:
                return this.b.b(menuItem);
            default:
                return false;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.b.e();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case 0:
                this.b.b(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.g = false;
        if (this.f6a.hasMessages(2)) {
            this.f6a.removeMessages(2);
            this.b.i();
        }
        this.b.j();
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.f6a.removeMessages(2);
        this.b.i();
        this.b.b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || menu == null) {
            return super.onPreparePanel(i, view, menu);
        }
        if (this.i) {
            this.i = false;
            menu.clear();
            onCreatePanelMenu(i, menu);
        }
        return super.onPreparePanel(0, view, menu) | this.b.a(menu);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f6a.sendEmptyMessage(2);
        this.g = true;
        this.b.b();
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        boolean z;
        if (this.c) {
            a(true);
        }
        ArrayList arrayListC = this.b.c();
        if (this.l != null) {
            int size = this.l.size();
            y[] yVarArr = new y[size];
            for (int i = size - 1; i >= 0; i--) {
                yVarArr[i] = (y) this.l.b(i);
            }
            z = false;
            for (int i2 = 0; i2 < size; i2++) {
                y yVar = yVarArr[i2];
                if (yVar.e) {
                    z = true;
                } else {
                    yVar.h();
                    this.l.remove(yVar.b);
                }
            }
        } else {
            z = false;
        }
        if (arrayListC == null && !z) {
            return null;
        }
        l lVar = new l();
        lVar.f10a = arrayListC;
        lVar.b = this.l;
        return lVar;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable parcelableD = this.b.d();
        if (parcelableD != null) {
            bundle.putParcelable("android:support:fragments", parcelableD);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.c = false;
        this.h = false;
        this.f6a.removeMessages(1);
        if (!this.f) {
            this.f = true;
            this.b.g();
        }
        this.b.e();
        this.b.b();
        if (!this.k) {
            this.k = true;
            if (this.m != null) {
                this.m.b();
            } else if (!this.j) {
                this.m = a("(root)", this.k, false);
                if (this.m != null && !this.m.d) {
                    this.m.b();
                }
            }
            this.j = true;
        }
        this.b.h();
        if (this.l != null) {
            int size = this.l.size();
            y[] yVarArr = new y[size];
            for (int i = size - 1; i >= 0; i--) {
                yVarArr[i] = (y) this.l.b(i);
            }
            for (int i2 = 0; i2 < size; i2++) {
                y yVar = yVarArr[i2];
                yVar.e();
                yVar.g();
            }
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.c = true;
        this.f6a.sendEmptyMessage(1);
        this.b.k();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (i != -1 && ((-65536) & i) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, i);
    }
}
