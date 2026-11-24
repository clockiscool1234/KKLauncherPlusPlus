.class final Lcom/android/launcher3/aX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/aW;


# direct methods
.method constructor <init>(Lcom/android/launcher3/aW;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aX;->a:Lcom/android/launcher3/aW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/aX;->a:Lcom/android/launcher3/aW;

    iget-object v0, v0, Lcom/android/launcher3/aW;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->v()V

    iget-object v0, p0, Lcom/android/launcher3/aX;->a:Lcom/android/launcher3/aW;

    iget-object v0, v0, Lcom/android/launcher3/aW;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x190

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->a(ZILjava/lang/Runnable;)V

    return-void
.end method
