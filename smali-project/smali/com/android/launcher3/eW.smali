.class final Lcom/android/launcher3/eW;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eS;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    check-cast p1, Lcom/android/launcher3/CheckableFrameLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckableFrameLayout;->toggle()V

    iget-object v0, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->d(Lcom/android/launcher3/eS;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->d(Lcom/android/launcher3/eS;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    iget-object v2, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    iget-object v3, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    invoke-static {v3}, Lcom/android/launcher3/eS;->f(Lcom/android/launcher3/eS;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/eS;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/eS;->a(Lcom/android/launcher3/eS;Landroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/eW;->a:Lcom/android/launcher3/eS;

    invoke-static {v3}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
