.class final Lcom/android/launcher3/h;
.super Landroid/os/AsyncTask;


# instance fields
.field a:I

.field private b:I


# direct methods
.method constructor <init>(ILcom/android/launcher3/A;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/android/launcher3/h;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/h;->b:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/h;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/h;->b:I

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    check-cast p1, [Lcom/android/launcher3/z;

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/launcher3/z;->d:Lcom/android/launcher3/y;

    aget-object v1, p1, v2

    invoke-interface {v0, p0, v1}, Lcom/android/launcher3/y;->a(Lcom/android/launcher3/h;Lcom/android/launcher3/z;)V

    aget-object v0, p1, v2

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/launcher3/z;

    iget-object v0, p1, Lcom/android/launcher3/z;->e:Lcom/android/launcher3/y;

    invoke-interface {v0, p0, p1}, Lcom/android/launcher3/y;->a(Lcom/android/launcher3/h;Lcom/android/launcher3/z;)V

    return-void
.end method
