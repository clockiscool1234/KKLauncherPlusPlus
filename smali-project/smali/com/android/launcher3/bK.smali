.class final Lcom/android/launcher3/bK;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bK;->a:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/bK;->b:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/bK;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->k(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/cD;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/bK;->b:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/cD;->deleteAppWidgetId(I)V

    const/4 v0, 0x0

    return-object v0
.end method
