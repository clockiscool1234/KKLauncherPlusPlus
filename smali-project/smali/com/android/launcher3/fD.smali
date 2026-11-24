.class final Lcom/android/launcher3/fD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Workspace;

.field private final synthetic b:Lcom/android/launcher3/eo;

.field private final synthetic c:Lcom/android/launcher3/bD;

.field private final synthetic d:J

.field private final synthetic e:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/eo;Lcom/android/launcher3/bD;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fD;->a:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/fD;->b:Lcom/android/launcher3/eo;

    iput-object p3, p0, Lcom/android/launcher3/fD;->c:Lcom/android/launcher3/bD;

    iput-wide p4, p0, Lcom/android/launcher3/fD;->d:J

    iput-wide p6, p0, Lcom/android/launcher3/fD;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fD;->b:Lcom/android/launcher3/eo;

    iget v0, v0, Lcom/android/launcher3/eo;->g:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/fD;->b:Lcom/android/launcher3/eo;

    iget v2, v2, Lcom/android/launcher3/eo;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x2

    new-array v7, v0, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/fD;->c:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->l:I

    aput v1, v7, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/fD;->c:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->m:I

    aput v1, v7, v0

    iget-object v0, p0, Lcom/android/launcher3/fD;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fD;->b:Lcom/android/launcher3/eo;

    check-cast v1, Lcom/android/launcher3/eq;

    iget-wide v2, p0, Lcom/android/launcher3/fD;->d:J

    iget-wide v4, p0, Lcom/android/launcher3/fD;->e:J

    iget-object v6, p0, Lcom/android/launcher3/fD;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v6}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/eq;JJ[I[I[I)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/fD;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/fD;->b:Lcom/android/launcher3/eo;

    iget-object v2, v0, Lcom/android/launcher3/eo;->a:Landroid/content/ComponentName;

    iget-wide v3, p0, Lcom/android/launcher3/fD;->d:J

    iget-wide v5, p0, Lcom/android/launcher3/fD;->e:J

    iget-object v0, p0, Lcom/android/launcher3/fD;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v7

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Launcher;->a(Landroid/content/ComponentName;JJ[I[I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
