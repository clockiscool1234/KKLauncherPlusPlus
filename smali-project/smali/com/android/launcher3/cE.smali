.class public final Lcom/android/launcher3/cE;
.super Landroid/appwidget/AppWidgetHostView;

# interfaces
.implements Lcom/android/launcher3/ax;


# instance fields
.field private a:Lcom/android/launcher3/S;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Lcom/android/launcher3/DragLayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/cE;->c:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/S;

    invoke-direct {v0, p0}, Lcom/android/launcher3/S;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher3/cE;->b:Landroid/view/LayoutInflater;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/cE;->e:Lcom/android/launcher3/DragLayer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cE;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/launcher3/cE;->d:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    return-void
.end method

.method public final getDescendantFocusability()I
    .locals 1

    const/high16 v0, 0x60000

    return v0
.end method

.method protected final getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/cE;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->a()V

    iget-object v0, p0, Lcom/android/launcher3/cE;->e:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/ax;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/cE;->a:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cE;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/cE;->d:I

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
