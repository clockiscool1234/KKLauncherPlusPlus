.class final Lcom/android/launcher3/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/HolographicLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/HolographicLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bq;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/bq;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/HolographicLinearLayout;->isPressed()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/bq;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-static {v1}, Lcom/android/launcher3/HolographicLinearLayout;->a(Lcom/android/launcher3/HolographicLinearLayout;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bq;->a:Lcom/android/launcher3/HolographicLinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/bq;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/HolographicLinearLayout;->isPressed()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/HolographicLinearLayout;->a(Lcom/android/launcher3/HolographicLinearLayout;Z)V

    iget-object v0, p0, Lcom/android/launcher3/bq;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/HolographicLinearLayout;->refreshDrawableState()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
