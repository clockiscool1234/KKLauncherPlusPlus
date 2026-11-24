.class public final Lcom/android/launcher3/aG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/aq;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/aG;->a:I

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->q()Lcom/android/launcher3/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aq;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/aG;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/aG;->a:I

    iget v0, p0, Lcom/android/launcher3/aG;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragEnter: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/aG;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/launcher3/az;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/aG;->a:I

    if-eqz v0, :cond_0

    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragEnter: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/aG;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method final b()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/aG;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/aG;->a:I

    iget v0, p0, Lcom/android/launcher3/aG;->a:I

    if-eqz v0, :cond_0

    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragExit: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/aG;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/aG;->a:I

    if-eqz v0, :cond_0

    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragExit: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/aG;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
