.class public final Lcom/android/launcher3/cD;
.super Landroid/appwidget/AppWidgetHost;


# instance fields
.field private a:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/launcher3/cD;->a:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method protected final onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    new-instance v0, Lcom/android/launcher3/cE;

    invoke-direct {v0, p1}, Lcom/android/launcher3/cE;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final onProvidersChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cD;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/cD;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final stopListening()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    invoke-virtual {p0}, Lcom/android/launcher3/cD;->clearViews()V

    return-void
.end method
