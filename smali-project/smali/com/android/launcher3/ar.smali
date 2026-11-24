.class final Lcom/android/launcher3/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private synthetic b:Lcom/android/launcher3/ap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/ar;->a:I

    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/ap;)Lcom/android/launcher3/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/ar;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/ap;)Lcom/android/launcher3/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/ay;->d_()V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v0, v2}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/ap;I)V

    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v0, v2}, Lcom/android/launcher3/ap;->b(Lcom/android/launcher3/ap;I)V

    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/ap;)Lcom/android/launcher3/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/ay;->e()Z

    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v0}, Lcom/android/launcher3/ap;->b(Lcom/android/launcher3/ap;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->e()V

    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    iget-object v1, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v1}, Lcom/android/launcher3/ap;->c(Lcom/android/launcher3/ap;)[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v2}, Lcom/android/launcher3/ap;->c(Lcom/android/launcher3/ap;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/ap;II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/ar;->b:Lcom/android/launcher3/ap;

    invoke-static {v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/ap;)Lcom/android/launcher3/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/ay;->d()V

    goto :goto_0
.end method
