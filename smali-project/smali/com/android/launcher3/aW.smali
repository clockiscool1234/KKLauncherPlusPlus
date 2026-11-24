.class final Lcom/android/launcher3/aW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aW;->a:Lcom/android/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/aW;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/aX;

    invoke-direct {v1, p0}, Lcom/android/launcher3/aX;-><init>(Lcom/android/launcher3/aW;)V

    const/16 v2, 0x96

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    return-void
.end method
