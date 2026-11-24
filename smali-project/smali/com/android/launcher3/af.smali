.class final Lcom/android/launcher3/af;
.super Landroid/os/AsyncTask;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/cD;

.field private final synthetic b:Lcom/android/launcher3/cF;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/cD;Lcom/android/launcher3/cF;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/af;->a:Lcom/android/launcher3/cD;

    iput-object p3, p0, Lcom/android/launcher3/af;->b:Lcom/android/launcher3/cF;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/af;->a:Lcom/android/launcher3/cD;

    iget-object v1, p0, Lcom/android/launcher3/af;->b:Lcom/android/launcher3/cF;

    iget v1, v1, Lcom/android/launcher3/cF;->a:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/cD;->deleteAppWidgetId(I)V

    const/4 v0, 0x0

    return-object v0
.end method
