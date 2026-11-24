.class final Lcom/android/launcher3/bM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/bL;

.field private final synthetic b:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/bL;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bM;->a:Lcom/android/launcher3/bL;

    iput-object p2, p0, Lcom/android/launcher3/bM;->b:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/bM;->a:Lcom/android/launcher3/bL;

    invoke-static {v0}, Lcom/android/launcher3/bL;->a(Lcom/android/launcher3/bL;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bM;->a:Lcom/android/launcher3/bL;

    invoke-static {v0}, Lcom/android/launcher3/bL;->a(Lcom/android/launcher3/bL;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bM;->a:Lcom/android/launcher3/bL;

    invoke-static {v0}, Lcom/android/launcher3/bL;->a(Lcom/android/launcher3/bL;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bM;->b:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method
