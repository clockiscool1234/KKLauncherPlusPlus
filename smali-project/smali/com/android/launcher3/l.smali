.class final Lcom/android/launcher3/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;

.field private final synthetic b:Landroid/appwidget/AppWidgetProviderInfo;

.field private final synthetic c:Lcom/android/launcher3/eq;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher3/eq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher3/l;->b:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/launcher3/l;->c:Lcom/android/launcher3/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget v0, v0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    if-eq v0, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->l()Lcom/android/launcher3/cD;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget v2, v2, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    iget-object v3, p0, Lcom/android/launcher3/l;->b:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/cD;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/l;->c:Lcom/android/launcher3/eq;

    iput-object v0, v1, Lcom/android/launcher3/eq;->t:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/l;->c:Lcom/android/launcher3/eq;

    iget v2, v2, Lcom/android/launcher3/eq;->l:I

    iget-object v3, p0, Lcom/android/launcher3/l;->c:Lcom/android/launcher3/eq;

    iget v3, v3, Lcom/android/launcher3/eq;->m:I

    iget-object v4, p0, Lcom/android/launcher3/l;->c:Lcom/android/launcher3/eq;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/Workspace;->a(IILcom/android/launcher3/bD;Z)[I

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/DragLayer$LayoutParams;

    aget v3, v1, v5

    aget v1, v1, v6

    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    iput v5, v2, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    iput v5, v2, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    iput-boolean v6, v2, Lcom/android/launcher3/DragLayer$LayoutParams;->c:Z

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher3/l;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
