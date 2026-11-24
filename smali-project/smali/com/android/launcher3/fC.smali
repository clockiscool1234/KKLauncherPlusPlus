.class final Lcom/android/launcher3/fC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/fB;


# direct methods
.method constructor <init>(Lcom/android/launcher3/fB;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fC;->a:Lcom/android/launcher3/fB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/fC;->a:Lcom/android/launcher3/fB;

    iget-object v0, v0, Lcom/android/launcher3/fB;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->a(ZILjava/lang/Runnable;)V

    return-void
.end method
