.class final Lcom/android/launcher3/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/DeleteDropTarget;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/android/launcher3/aH;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeleteDropTarget;ZLcom/android/launcher3/aH;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aj;->a:Lcom/android/launcher3/DeleteDropTarget;

    iput-boolean p2, p0, Lcom/android/launcher3/aj;->b:Z

    iput-object p3, p0, Lcom/android/launcher3/aj;->c:Lcom/android/launcher3/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/aj;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aj;->a:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->y()V

    iget-object v0, p0, Lcom/android/launcher3/aj;->a:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/aj;->c:Lcom/android/launcher3/aH;

    invoke-static {v0, v1}, Lcom/android/launcher3/DeleteDropTarget;->a(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/aH;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/aj;->a:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->q()Lcom/android/launcher3/ap;

    iget-object v0, p0, Lcom/android/launcher3/aj;->c:Lcom/android/launcher3/aH;

    invoke-static {v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aH;)V

    return-void
.end method
