.class public abstract Lcom/android/launcher3/em;
.super Lcom/android/launcher3/dX;

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private O:F

.field private P:Lcom/android/launcher3/Launcher;

.field private a:Landroid/view/View;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/em;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/em;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/dX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/em;->P:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/em;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/em;->a:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/launcher3/em;->c:Z

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/em;->b()V

    iput-boolean v1, p0, Lcom/android/launcher3/em;->c:Z

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/em;->p:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/em;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/em;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/em;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher3/em;->D:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v4, p0, Lcom/android/launcher3/em;->n:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/android/launcher3/em;->o:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v4, v0

    iget v0, p0, Lcom/android/launcher3/em;->r:I

    if-le v4, v0, :cond_1

    move v0, v1

    :goto_0
    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    iget v4, p0, Lcom/android/launcher3/em;->O:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/em;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/em;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/em;->b(Landroid/view/View;)Z

    iget-boolean v0, p0, Lcom/android/launcher3/em;->K:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/em;->K:Z

    iget v0, p0, Lcom/android/launcher3/em;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/em;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected final b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/em;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/dX;->b(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher3/em;->b:Z

    iput-boolean v0, p0, Lcom/android/launcher3/em;->b:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final d(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/em;->O:F

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/em;->b()V

    invoke-super {p0}, Lcom/android/launcher3/dX;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/em;->c(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/dX;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/em;->k:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/em;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/em;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->aa()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/em;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/em;->b(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/em;->a:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/em;->c:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/em;->c(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/dX;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
