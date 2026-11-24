package nl.ndsc.kitkatlauncher;

import android.R;
import android.app.Fragment;
import android.os.Bundle;
import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends a.a.a.a.h {
    private void d() {
        if (getFragmentManager().getBackStackEntryCount() <= 1) {
            a.a.a.a.A.a(this);
        } else {
            getFragmentManager().popBackStackImmediate();
        }
    }

    public final void a(Fragment fragment) {
        getFragmentManager().beginTransaction().replace(R.id.content, fragment).addToBackStack(null).commit();
    }

    @Override // a.a.a.a.h, android.app.Activity
    public void onBackPressed() {
        d();
    }

    @Override // a.a.a.a.h, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o.a(this);
        a(new nl.ndsc.kitkatlauncher.b.s());
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.home:
                d();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }
}
