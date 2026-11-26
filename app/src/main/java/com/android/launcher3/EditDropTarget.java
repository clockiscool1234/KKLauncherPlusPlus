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

    public EditDropTarget(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
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
        super.a(source, item);
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            boolean visible = isEditEnabled() && source != null && source.h() && componentFor(item) != null;
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
        return false;
    }
}
