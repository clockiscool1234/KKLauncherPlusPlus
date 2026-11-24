.class final Lcom/android/launcher3/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/DeleteDropTarget;

.field private final synthetic b:Lcom/android/launcher3/aH;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/aH;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ad;->a:Lcom/android/launcher3/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/ad;->b:Lcom/android/launcher3/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/ad;->a:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/ad;->b:Lcom/android/launcher3/aH;

    invoke-static {v0, v1}, Lcom/android/launcher3/DeleteDropTarget;->a(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/aH;)V

    iget-object v0, p0, Lcom/android/launcher3/ad;->a:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/DeleteDropTarget;->c:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->c()V

    iget-object v0, p0, Lcom/android/launcher3/ad;->a:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->y()V

    return-void
.end method
