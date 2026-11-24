package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabWidget;

/* JADX INFO: loaded from: classes.dex */
public class FocusOnlyTabWidget extends TabWidget {
    public FocusOnlyTabWidget(Context context) {
        super(context);
    }

    public FocusOnlyTabWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FocusOnlyTabWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final int a(View view) {
        int tabCount = getTabCount();
        for (int i = 0; i < tabCount; i++) {
            if (getChildTabViewAt(i) == view) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.widget.TabWidget, android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        View childTabViewAt;
        if (view == this && z && getTabCount() > 0) {
            int tabCount = getTabCount();
            for (int i = 0; i < tabCount; i++) {
                childTabViewAt = getChildTabViewAt(i);
                if (childTabViewAt.isSelected()) {
                    childTabViewAt.requestFocus();
                }
            }
            childTabViewAt = null;
            childTabViewAt.requestFocus();
        }
    }
}
