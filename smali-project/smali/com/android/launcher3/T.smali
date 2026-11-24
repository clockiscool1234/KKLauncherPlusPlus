.class final Lcom/android/launcher3/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/S;


# direct methods
.method constructor <init>(Lcom/android/launcher3/S;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/T;->a:Lcom/android/launcher3/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/T;->a:Lcom/android/launcher3/S;

    invoke-static {v0}, Lcom/android/launcher3/S;->a(Lcom/android/launcher3/S;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/T;->a:Lcom/android/launcher3/S;

    invoke-static {v0}, Lcom/android/launcher3/S;->a(Lcom/android/launcher3/S;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/T;->a:Lcom/android/launcher3/S;

    invoke-static {v0}, Lcom/android/launcher3/S;->b(Lcom/android/launcher3/S;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/T;->a:Lcom/android/launcher3/S;

    invoke-static {v0}, Lcom/android/launcher3/S;->a(Lcom/android/launcher3/S;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/T;->a:Lcom/android/launcher3/S;

    invoke-static {v0}, Lcom/android/launcher3/S;->a(Lcom/android/launcher3/S;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/launcher3/T;->a:Lcom/android/launcher3/S;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/S;->a(Lcom/android/launcher3/S;Z)V

    :cond_0
    return-void
.end method
