package com.android.launcher3;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.preference.PreferenceManager;
import nl.ndsc.kitkatlauncher.R;
import nl.ndsc.kitkatlauncher.SearchBarLogoSettingsActivity;

public final class SearchBarLogoView extends HolographicImageView implements SharedPreferences.OnSharedPreferenceChangeListener {
    private SharedPreferences preferences;

    public SearchBarLogoView(Context context) {
        super(context);
    }

    public SearchBarLogoView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SearchBarLogoView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        preferences = PreferenceManager.getDefaultSharedPreferences(getContext());
        preferences.registerOnSharedPreferenceChangeListener(this);
        applyLogo();
    }

    @Override
    protected void onDetachedFromWindow() {
        if (preferences != null) {
            preferences.unregisterOnSharedPreferenceChangeListener(this);
            preferences = null;
        }
        super.onDetachedFromWindow();
    }

    @Override
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
        if (SearchBarLogoSettingsActivity.MODE_KEY.equals(key) || SearchBarLogoSettingsActivity.URI_KEY.equals(key)) {
            applyLogo();
        }
    }

    public void refreshLogo() {
        applyLogo();
    }

    private void applyLogo() {
        String mode = preferences == null
            ? SearchBarLogoSettingsActivity.MODE_GOOGLE
            : preferences.getString(SearchBarLogoSettingsActivity.MODE_KEY, SearchBarLogoSettingsActivity.MODE_GOOGLE);
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        if (SearchBarLogoSettingsActivity.MODE_MAGNIFIER.equals(mode)) {
            setImageResource(R.drawable.ic_home_search_normal_holo);
            return;
        }
        if (SearchBarLogoSettingsActivity.MODE_PICTURE.equals(mode) && preferences != null) {
            String value = preferences.getString(SearchBarLogoSettingsActivity.URI_KEY, "");
            if (!value.isEmpty()) {
                try {
                    setImageURI(Uri.parse(value));
                    if (getDrawable() != null) {
                        return;
                    }
                } catch (RuntimeException ignored) {
                }
            }
        }
        setImageResource(R.drawable.ic_google_logo);
    }
}
