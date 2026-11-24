.class final Lcom/android/launcher3/bG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:I

.field private final synthetic c:Landroid/appwidget/AppWidgetHostView;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bG;->a:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/bG;->b:I

    iput-object p3, p0, Lcom/android/launcher3/bG;->c:Landroid/appwidget/AppWidgetHostView;

    iput p4, p0, Lcom/android/launcher3/bG;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/bG;->a:Lcom/android/launcher3/Launcher;

    iget v1, p0, Lcom/android/launcher3/bG;->b:I

    iget-object v2, p0, Lcom/android/launcher3/bG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->f(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/bD;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher3/bD;->h:J

    iget-object v4, p0, Lcom/android/launcher3/bG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/Launcher;->f(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/bD;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/bD;->i:J

    iget-object v6, p0, Lcom/android/launcher3/bG;->c:Landroid/appwidget/AppWidgetHostView;

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/bG;->a:Lcom/android/launcher3/Launcher;

    iget v0, p0, Lcom/android/launcher3/bG;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v7}, Lcom/android/launcher3/Launcher;->a(ZILjava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
