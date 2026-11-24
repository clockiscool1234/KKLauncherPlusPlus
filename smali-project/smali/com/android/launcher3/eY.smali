.class final Lcom/android/launcher3/eY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eS;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eY;->a:Lcom/android/launcher3/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    sub-int v0, p4, p2

    if-lez v0, :cond_1

    sub-int v0, p5, p3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/eY;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->j(Lcom/android/launcher3/eS;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eY;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->j(Lcom/android/launcher3/eS;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/eY;->a:Lcom/android/launcher3/eS;

    invoke-static {v1}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eY;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->k(Lcom/android/launcher3/eS;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/eY;->a:Lcom/android/launcher3/eS;

    invoke-static {v1}, Lcom/android/launcher3/eS;->g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/eY;->a:Lcom/android/launcher3/eS;

    invoke-static {v2}, Lcom/android/launcher3/eS;->j(Lcom/android/launcher3/eS;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method
