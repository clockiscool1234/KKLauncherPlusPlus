.class final Lcom/android/launcher3/eV;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eS;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eV;->a:Lcom/android/launcher3/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/eV;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->d(Lcom/android/launcher3/eS;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eV;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->e(Lcom/android/launcher3/eS;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/fj;

    invoke-virtual {v0}, Lcom/android/launcher3/fj;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/eV;->a:Lcom/android/launcher3/eS;

    invoke-static {v1, p1}, Lcom/android/launcher3/eS;->a(Lcom/android/launcher3/eS;Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/eV;->a:Lcom/android/launcher3/eS;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/fj;->a(Lcom/android/launcher3/eS;)V

    goto :goto_0
.end method
