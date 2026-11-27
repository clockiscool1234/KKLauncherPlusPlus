package com.android.launcher3;

import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import nl.ndsc.kitkatlauncher.AppCustomizationActivity;

public final class EditDropTarget extends E {
    private static final String ENABLED_KEY = "setting_edit_drop_target_enabled";
    private ap registeredController;

    public EditDropTarget(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
    }

    public void registerWith(Launcher launcher) {
        if (launcher == null) {
            return;
        }
        super.a(launcher);
        super.a(launcher.k());
        ap controller = launcher.q();
        if (controller == null || controller == registeredController) {
            return;
        }
        if (registeredController != null) {
            registeredController.b((aF) this);
        }
        controller.a((aF) this);
        controller.a((aq) this);
        registeredController = controller;
    }

    private boolean isEditEnabled() {
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(getContext());
        return preferences.getBoolean(ENABLED_KEY, true);
    }

    private ComponentName componentFor(Object item) {
        if (item instanceof d) {
            return ((d) item).d;
        }
        if (item instanceof ey) {
            Intent intent = ((ey) item).a;
            return intent == null ? null : intent.getComponent();
        }
        if (item instanceof eo) {
            return ((eo) item).a;
        }
        return null;
    }

    @Override
    public void a(az source, Object item) {
        boolean visible = isEditEnabled()
            && source != null
            && (source.h() || source.i())
            && componentFor(item) != null;
        d = visible;
        setEnabled(visible);
        if (!visible) {
            setSelected(false);
        }
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).setVisibility(visible ? View.VISIBLE : View.GONE);
        }
    }

    @Override
    public boolean a(aH dragObject) {
        if (dragObject == null || !isEditEnabled()) {
            return false;
        }
        ComponentName component = componentFor(dragObject.g);
        if (component == null) {
            return false;
        }
        Intent edit = new Intent(getContext(), AppCustomizationActivity.class);
        edit.putExtra(AppCustomizationActivity.EXTRA_COMPONENT, component.flattenToString());
        if (b != null) {
            b.startActivity(edit);
        } else {
            edit.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            getContext().startActivity(edit);
        }
        dragObject.k = false;
        setSelected(false);
        return false;
    }

    @Override
    public void c(aH dragObject) {
        super.c(dragObject);
        setSelected(true);
    }

    @Override
    public void e(aH dragObject) {
        super.e(dragObject);
        setSelected(false);
    }

    @Override
    public void c() {
        super.c();
        d = false;
        setSelected(false);
    }
}
