.class final Lcom/android/launcher3/cF;
.super Lcom/android/launcher3/bD;


# instance fields
.field a:I

.field b:Landroid/content/ComponentName;

.field c:I

.field d:I

.field e:Landroid/appwidget/AppWidgetHostView;

.field private s:Z


# direct methods
.method constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/launcher3/bD;-><init>()V

    iput v1, p0, Lcom/android/launcher3/cF;->a:I

    iput v1, p0, Lcom/android/launcher3/cF;->c:I

    iput v1, p0, Lcom/android/launcher3/cF;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/cF;->g:I

    iput p1, p0, Lcom/android/launcher3/cF;->a:I

    iput-object p2, p0, Lcom/android/launcher3/cF;->b:Landroid/content/ComponentName;

    iput v1, p0, Lcom/android/launcher3/cF;->l:I

    iput v1, p0, Lcom/android/launcher3/cF;->m:I

    return-void
.end method


# virtual methods
.method final a(Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/bD;->a(Landroid/content/ContentValues;)V

    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher3/cF;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "appWidgetProvider"

    iget-object v1, p0, Lcom/android/launcher3/cF;->b:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/android/launcher3/Launcher;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cF;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/cF;->b(Lcom/android/launcher3/Launcher;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/android/launcher3/Launcher;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lcom/android/launcher3/cF;->l:I

    iget v2, p0, Lcom/android/launcher3/cF;->m:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/e;->a(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/cF;->s:Z

    return-void
.end method

.method final b_()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/bD;->b_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppWidget(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/cF;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
