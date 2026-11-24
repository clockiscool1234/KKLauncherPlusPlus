.class final Lcom/android/launcher3/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;

.field private final synthetic b:Landroid/os/Bundle;

.field private final synthetic c:Lcom/android/launcher3/eq;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;Landroid/os/Bundle;Lcom/android/launcher3/eq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher3/k;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/launcher3/k;->c:Lcom/android/launcher3/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->l()Lcom/android/launcher3/cD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cD;->allocateAppWidgetId()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    iget-object v0, p0, Lcom/android/launcher3/k;->b:Landroid/os/Bundle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget v1, v1, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    iget-object v2, p0, Lcom/android/launcher3/k;->c:Lcom/android/launcher3/eq;

    iget-object v2, v2, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iput v4, v0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget v1, v1, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    iget-object v2, p0, Lcom/android/launcher3/k;->c:Lcom/android/launcher3/eq;

    iget-object v2, v2, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/k;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/k;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iput v4, v0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    goto :goto_0
.end method
