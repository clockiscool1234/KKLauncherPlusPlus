.class final Lcom/android/launcher3/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/HolographicLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/HolographicLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/br;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/br;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/HolographicLinearLayout;->isFocused()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/br;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-static {v1}, Lcom/android/launcher3/HolographicLinearLayout;->b(Lcom/android/launcher3/HolographicLinearLayout;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/br;->a:Lcom/android/launcher3/HolographicLinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/br;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/HolographicLinearLayout;->isFocused()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/HolographicLinearLayout;->b(Lcom/android/launcher3/HolographicLinearLayout;Z)V

    iget-object v0, p0, Lcom/android/launcher3/br;->a:Lcom/android/launcher3/HolographicLinearLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/HolographicLinearLayout;->refreshDrawableState()V

    :cond_0
    return-void
.end method
