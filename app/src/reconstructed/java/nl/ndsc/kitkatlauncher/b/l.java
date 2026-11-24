package nl.ndsc.kitkatlauncher.b;

import android.app.Fragment;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.android.launcher3.PagedViewIcon;
import com.android.launcher3.R;
import com.android.launcher3.eI;
import nl.ndsc.kitkatlauncher.x;

/* JADX INFO: loaded from: classes.dex */
public final class l extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f425a;
    private PagedViewIcon b;
    private boolean e;
    private float c = 1.0f;
    private float d = 1.0f;
    private boolean f = true;

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        SeekBar seekBar = (SeekBar) getView().findViewById(R.id.iconTextSizeSeekBar);
        TextView textView = (TextView) getView().findViewById(R.id.iconTextSizePercent);
        this.f = false;
        seekBar.setAlpha(0.3f);
        textView.setAlpha(0.3f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.b != null) {
            this.f425a.removeView(this.b);
        }
        eI.a((int) (a.a.a.c.d.a * this.c));
        Drawable drawable = getResources().getDrawable(R.drawable.ic_launcher);
        PagedViewIcon pagedViewIcon = (PagedViewIcon) LayoutInflater.from(getActivity()).inflate(R.layout.apps_customize_application, this.f425a, false);
        pagedViewIcon.setTextSize(2, a.a.a.c.d.b * this.d);
        pagedViewIcon.setCompoundDrawables(null, eI.a(((BitmapDrawable) drawable).getBitmap()), null, null);
        this.b = pagedViewIcon;
        this.b.setY(50.0f);
        if (!this.e) {
            this.b.setText("Preview icon");
        }
        this.f425a.addView(this.b);
    }

    static /* synthetic */ void f(l lVar) {
        SeekBar seekBar = (SeekBar) lVar.getView().findViewById(R.id.iconTextSizeSeekBar);
        TextView textView = (TextView) lVar.getView().findViewById(R.id.iconTextSizePercent);
        lVar.f = true;
        seekBar.setAlpha(1.0f);
        textView.setAlpha(1.0f);
    }

    protected final void a() {
        x xVar = new x();
        xVar.setTargetFragment(this, 0);
        xVar.show(getFragmentManager(), "PRODIALOG");
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f425a = viewGroup;
        return layoutInflater.inflate(R.layout.klp_fragment_iconsize, viewGroup, false);
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        if (this.b == null || this.f425a == null) {
            return;
        }
        this.f425a.removeView(this.b);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        getActivity().getActionBar().setSubtitle("Icon Settings");
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (!nl.ndsc.kitkatlauncher.o.f438a) {
            ((LinearLayout) view.findViewById(R.id.textSettingsProLabel)).setVisibility(0);
        }
        this.c = a.a.a.c.d.n(getActivity());
        this.d = a.a.a.c.d.o(getActivity());
        this.e = a.a.a.c.d.g(getActivity());
        c();
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.iconSizeSeekBar);
        TextView textView = (TextView) getView().findViewById(R.id.iconSizePercent);
        seekBar.setProgress((int) ((this.c * 10.0f) - 5.0f));
        textView.setText(String.valueOf((int) (this.c * 100.0f)) + "%");
        seekBar.setOnSeekBarChangeListener(new m(this, textView));
        SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.iconTextSizeSeekBar);
        TextView textView2 = (TextView) getView().findViewById(R.id.iconTextSizePercent);
        seekBar2.setProgress((int) ((this.d * 10.0f) - 5.0f));
        textView2.setText(String.valueOf((int) (this.d * 100.0f)) + "%");
        seekBar2.setOnSeekBarChangeListener(new n(this, textView2));
        seekBar2.setOnTouchListener(new o(this));
        CheckBox checkBox = (CheckBox) getView().findViewById(R.id.hideIconTextCheckBox);
        checkBox.setChecked(this.e);
        if (this.e) {
            b();
        }
        checkBox.setOnTouchListener(new p(this));
        checkBox.setOnCheckedChangeListener(new q(this));
    }
}
