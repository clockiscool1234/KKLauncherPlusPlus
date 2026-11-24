.class final Lcom/android/launcher3/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/y;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/o;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher3/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/h;Lcom/android/launcher3/z;)V
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    iget v0, p0, Lcom/android/launcher3/o;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/o;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;Lcom/android/launcher3/h;Lcom/android/launcher3/z;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/android/launcher3/h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Lcom/android/launcher3/z;->a(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/launcher3/h;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v2}, Lcom/android/launcher3/z;->a(Z)V

    :cond_1
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
