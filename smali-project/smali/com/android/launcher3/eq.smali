.class final Lcom/android/launcher3/eq;
.super Lcom/android/launcher3/eo;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field s:Landroid/appwidget/AppWidgetProviderInfo;

.field t:Landroid/appwidget/AppWidgetHostView;

.field u:Landroid/os/Bundle;

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/eo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eq;->u:Landroid/os/Bundle;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/eq;->g:I

    iput-object p1, p0, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/android/launcher3/eq;->b:I

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/android/launcher3/eq;->c:I

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iput v0, p0, Lcom/android/launcher3/eq;->v:I

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iput v0, p0, Lcom/android/launcher3/eq;->w:I

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/android/launcher3/eq;->d:I

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/android/launcher3/eq;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/eq;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/eo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/eq;->u:Landroid/os/Bundle;

    iget v1, p1, Lcom/android/launcher3/eq;->b:I

    iput v1, p0, Lcom/android/launcher3/eq;->b:I

    iget v1, p1, Lcom/android/launcher3/eq;->c:I

    iput v1, p0, Lcom/android/launcher3/eq;->c:I

    iget v1, p1, Lcom/android/launcher3/eq;->v:I

    iput v1, p0, Lcom/android/launcher3/eq;->v:I

    iget v1, p1, Lcom/android/launcher3/eq;->w:I

    iput v1, p0, Lcom/android/launcher3/eq;->w:I

    iget v1, p1, Lcom/android/launcher3/eq;->d:I

    iput v1, p0, Lcom/android/launcher3/eq;->d:I

    iget v1, p1, Lcom/android/launcher3/eq;->e:I

    iput v1, p0, Lcom/android/launcher3/eq;->e:I

    iget-object v1, p1, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v1, p0, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, p1, Lcom/android/launcher3/eq;->t:Landroid/appwidget/AppWidgetHostView;

    iput-object v1, p0, Lcom/android/launcher3/eq;->t:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p1, Lcom/android/launcher3/eq;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/eq;->x:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/eq;->y:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/android/launcher3/eq;->y:Landroid/os/Parcelable;

    iget-object v1, p1, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher3/eq;->g:I

    iput v1, p0, Lcom/android/launcher3/eq;->g:I

    iget v1, p1, Lcom/android/launcher3/eq;->l:I

    iput v1, p0, Lcom/android/launcher3/eq;->l:I

    iget v1, p1, Lcom/android/launcher3/eq;->m:I

    iput v1, p0, Lcom/android/launcher3/eq;->m:I

    iget v1, p1, Lcom/android/launcher3/eq;->n:I

    iput v1, p0, Lcom/android/launcher3/eq;->n:I

    iget v1, p1, Lcom/android/launcher3/eq;->o:I

    iput v1, p0, Lcom/android/launcher3/eq;->o:I

    iget-object v1, p1, Lcom/android/launcher3/eq;->u:Landroid/os/Bundle;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/eq;->u:Landroid/os/Bundle;

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/eq;->u:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Widget: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
