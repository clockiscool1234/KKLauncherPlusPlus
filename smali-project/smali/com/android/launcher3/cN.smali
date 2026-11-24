.class final Lcom/android/launcher3/cN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/cG;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cN;->a:Lcom/android/launcher3/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cN;->a:Lcom/android/launcher3/cG;

    invoke-static {v0}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/cG;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->an()Z

    return-void
.end method
