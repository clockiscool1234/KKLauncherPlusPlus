package nl.ndsc.kitkatlauncher;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public class ProgressBarPreference extends Preference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ProgressBar f413a;

    public ProgressBarPreference(Context context) {
        super(context);
    }

    public ProgressBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ProgressBarPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final ProgressBar a() {
        return this.f413a;
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        this.f413a = (ProgressBar) view.findViewById(R.id.preferenceSpinner);
    }
}
