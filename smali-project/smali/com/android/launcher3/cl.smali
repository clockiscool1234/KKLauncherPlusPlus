.class final Lcom/android/launcher3/cl;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cl;->a:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/launcher3/cs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/cs;-><init>(B)V

    iget-object v1, p0, Lcom/android/launcher3/cl;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Context;Lcom/android/launcher3/cs;)V

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/launcher3/cs;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/cs;)V

    iget-object v0, p0, Lcom/android/launcher3/cl;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->j(Lcom/android/launcher3/Launcher;)V

    return-void
.end method
