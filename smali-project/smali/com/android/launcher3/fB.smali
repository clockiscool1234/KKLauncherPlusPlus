.class final Lcom/android/launcher3/fB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fB;->a:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/fB;->a:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher3/fC;

    invoke-direct {v2, p0}, Lcom/android/launcher3/fC;-><init>(Lcom/android/launcher3/fB;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;)V

    return-void
.end method
