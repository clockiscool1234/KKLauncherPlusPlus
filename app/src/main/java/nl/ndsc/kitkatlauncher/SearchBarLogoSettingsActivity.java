package nl.ndsc.kitkatlauncher;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.android.launcher3.SearchBarLogoView;

public final class SearchBarLogoSettingsActivity extends Activity {
    public static final String MODE_KEY = "searchbar_logo_mode";
    public static final String URI_KEY = "searchbar_logo_uri";
    public static final String MODE_GOOGLE = "google";
    public static final String MODE_MAGNIFIER = "magnifier";
    public static final String MODE_PICTURE = "picture";
    private static final int REQUEST_PICTURE = 52;
    private static final int CHOICE_GOOGLE = R.id.search_logo_google_choice;
    private static final int CHOICE_MAGNIFIER = R.id.search_logo_magnifier_choice;
    private static final int CHOICE_PICTURE = R.id.search_logo_picture_choice;
    private RadioGroup choices;
    private SearchBarLogoView preview;
    private int selectedChoice = CHOICE_GOOGLE;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        setTitle(R.string.search_logo_activity_title);
        if (getActionBar() != null) {
            getActionBar().setDisplayHomeAsUpEnabled(true);
        }

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(20), dp(16), dp(20), dp(16));

        TextView heading = new TextView(this);
        heading.setText(R.string.search_logo_picture_help);
        heading.setTextSize(16);
        root.addView(heading, new LinearLayout.LayoutParams(-1, -2));

        preview = new SearchBarLogoView(this);
        preview.setScaleType(ImageView.ScaleType.FIT_CENTER);
        preview.setPadding(dp(16), dp(12), dp(16), dp(12));
        preview.setBackgroundResource(R.drawable.search_frame);
        LinearLayout.LayoutParams previewParams = new LinearLayout.LayoutParams(dp(180), dp(56));
        previewParams.gravity = Gravity.CENTER_HORIZONTAL;
        previewParams.topMargin = dp(16);
        previewParams.bottomMargin = dp(12);
        root.addView(preview, previewParams);

        choices = new RadioGroup(this);
        choices.setOrientation(RadioGroup.VERTICAL);
        choices.addView(option(CHOICE_GOOGLE, getString(R.string.search_logo_google)));
        choices.addView(option(CHOICE_MAGNIFIER, getString(R.string.search_logo_magnifier)));
        choices.addView(option(CHOICE_PICTURE, getString(R.string.search_logo_picture)));
        root.addView(choices, new LinearLayout.LayoutParams(-1, -2));

        Button choosePicture = new Button(this);
        choosePicture.setText(R.string.search_logo_choose_picture);
        root.addView(choosePicture, new LinearLayout.LayoutParams(-1, -2));
        choosePicture.setOnClickListener(view -> openPicturePicker());

        String mode = PreferenceManager.getDefaultSharedPreferences(this).getString(MODE_KEY, MODE_GOOGLE);
        selectedChoice = MODE_MAGNIFIER.equals(mode) ? CHOICE_MAGNIFIER : MODE_PICTURE.equals(mode) ? CHOICE_PICTURE : CHOICE_GOOGLE;
        choices.setOnCheckedChangeListener((group, checkedId) -> onChoiceChanged(checkedId));
        choices.check(selectedChoice);
        preview.refreshLogo();
        setContentView(root);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private RadioButton option(int id, String label) {
        RadioButton button = new RadioButton(this);
        button.setId(id);
        button.setText(label);
        return button;
    }

    private void onChoiceChanged(int choice) {
        if (choice == CHOICE_PICTURE) {
            String uri = PreferenceManager.getDefaultSharedPreferences(this).getString(URI_KEY, "");
            if (uri.isEmpty()) {
                openPicturePicker();
                return;
            }
            selectedChoice = CHOICE_PICTURE;
            saveMode(MODE_PICTURE);
            return;
        }
        selectedChoice = choice;
        saveMode(choice == CHOICE_MAGNIFIER ? MODE_MAGNIFIER : MODE_GOOGLE);
    }

    private void saveMode(String mode) {
        PreferenceManager.getDefaultSharedPreferences(this).edit().putString(MODE_KEY, mode).apply();
        preview.refreshLogo();
    }

    private void openPicturePicker() {
        Intent pick = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        pick.addCategory(Intent.CATEGORY_OPENABLE);
        pick.setType("image/*");
        pick.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        startActivityForResult(pick, REQUEST_PICTURE);
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQUEST_PICTURE) {
            return;
        }
        if (resultCode == RESULT_OK && data != null && data.getData() != null) {
            Uri uri = data.getData();
            try {
                if ((data.getFlags() & Intent.FLAG_GRANT_READ_URI_PERMISSION) != 0) {
                    getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION);
                }
            } catch (SecurityException ignored) {
            }
            SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
            preferences.edit().putString(URI_KEY, uri.toString()).putString(MODE_KEY, MODE_PICTURE).apply();
            selectedChoice = CHOICE_PICTURE;
            choices.check(CHOICE_PICTURE);
            preview.refreshLogo();
        } else if (choices.getCheckedRadioButtonId() == CHOICE_PICTURE && selectedChoice != CHOICE_PICTURE) {
            choices.check(selectedChoice);
        }
    }
}
