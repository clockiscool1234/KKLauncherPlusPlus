.class final Lcom/android/launcher3/fJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Workspace;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/Runnable;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fJ;->a:Lcom/android/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher3/fJ;->b:Z

    iput-object p3, p0, Lcom/android/launcher3/fJ;->c:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/android/launcher3/fJ;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/fJ;->a:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/launcher3/fJ;->b:Z

    iget-object v2, p0, Lcom/android/launcher3/fJ;->c:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/launcher3/fJ;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    return-void
.end method
