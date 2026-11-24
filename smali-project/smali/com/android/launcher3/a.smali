.class public final Lcom/android/launcher3/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/android/launcher3/dU;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/a;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/a;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/a;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/a;->e:Z

    return-void
.end method

.method public final a(J)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-boolean v5, p0, Lcom/android/launcher3/a;->e:Z

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/android/launcher3/a;->a:J

    iget-boolean v2, p0, Lcom/android/launcher3/a;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/a;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/launcher3/a;->a:J

    sub-long v0, v3, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v5, p0, Lcom/android/launcher3/a;->b:Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/launcher3/dU;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/a;->d:Lcom/android/launcher3/dU;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/a;->e:Z

    return v0
.end method

.method public final run()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/a;->b:Z

    iget-wide v0, p0, Lcom/android/launcher3/a;->a:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/a;->a:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/a;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/launcher3/a;->a:J

    sub-long v0, v3, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/a;->b:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher3/a;->e:Z

    iget-object v0, p0, Lcom/android/launcher3/a;->d:Lcom/android/launcher3/dU;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/a;->d:Lcom/android/launcher3/dU;

    invoke-interface {v0}, Lcom/android/launcher3/dU;->a()V

    goto :goto_0
.end method
