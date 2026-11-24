.class final Lcom/android/launcher3/eM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/os/AsyncTask;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WallpaperCropActivity;Landroid/os/AsyncTask;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/eM;->a:Landroid/os/AsyncTask;

    iput-object p3, p0, Lcom/android/launcher3/eM;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/eM;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eM;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
