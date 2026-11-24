.class final Lcom/android/launcher3/bH;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bH;->a:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/bH;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bH;->a:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/launcher3/Launcher;->a(ZLcom/android/launcher3/r;Z)V

    :cond_0
    return-void
.end method
