.class final Lcom/android/launcher3/bW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bW;->a:Lcom/android/launcher3/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher3/bW;->b:Z

    iput-object p3, p0, Lcom/android/launcher3/bW;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/bW;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bW;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->e(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AppsCustomizeTabHost;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/bW;->a:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/bW;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/bW;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->y()V

    goto :goto_0
.end method
