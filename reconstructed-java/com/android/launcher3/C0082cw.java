package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.android.launcher3.cw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0082cw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static WeakHashMap f253a = new WeakHashMap();
    private static Animator.AnimatorListener b = new C0083cx();

    public static ObjectAnimator a(View view, String str, float... fArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(view);
        objectAnimator.setPropertyName(str);
        objectAnimator.setFloatValues(fArr);
        objectAnimator.addListener(b);
        new aK(objectAnimator, view);
        return objectAnimator;
    }

    public static ObjectAnimator a(View view, PropertyValuesHolder... propertyValuesHolderArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(view);
        objectAnimator.setValues(propertyValuesHolderArr);
        objectAnimator.addListener(b);
        new aK(objectAnimator, view);
        return objectAnimator;
    }

    public static ObjectAnimator a(Object obj, View view, PropertyValuesHolder... propertyValuesHolderArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(obj);
        objectAnimator.setValues(propertyValuesHolderArr);
        objectAnimator.addListener(b);
        new aK(objectAnimator, view);
        return objectAnimator;
    }

    public static ValueAnimator a(float... fArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setFloatValues(fArr);
        valueAnimator.addListener(b);
        return valueAnimator;
    }

    public static void a() {
        for (Animator animator : new HashSet(f253a.keySet())) {
            if (animator.isRunning()) {
                animator.cancel();
            }
            f253a.remove(animator);
        }
    }

    public static void a(Animator animator) {
        animator.addListener(b);
    }

    public static void a(Animator animator, View view) {
        view.getViewTreeObserver().addOnDrawListener(new ViewTreeObserverOnDrawListenerC0084cy(animator, view));
    }

    public static AnimatorSet b() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(b);
        return animatorSet;
    }
}
