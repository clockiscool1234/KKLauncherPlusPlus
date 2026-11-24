.class final Lcom/android/launcher3/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eS;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100062

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v1}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->i(Lcom/android/launcher3/eS;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CheckableFrameLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckableFrameLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/CheckableFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/fj;

    iget-object v5, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/fj;->c(Lcom/android/launcher3/eS;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v2}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->l(Lcom/android/launcher3/eS;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/eS;->a(Lcom/android/launcher3/eS;Landroid/view/ActionMode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CheckableFrameLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CheckableFrameLayout;->setChecked(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_0
    if-lt v2, v4, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_1
    return v6

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CheckableFrameLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckableFrameLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/fa;->a:Lcom/android/launcher3/eS;

    invoke-virtual {v0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0b0000

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
