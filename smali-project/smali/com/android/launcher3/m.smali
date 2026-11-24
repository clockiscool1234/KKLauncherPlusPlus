.class final Lcom/android/launcher3/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/m;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/m;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->q()Lcom/android/launcher3/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/m;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->s()V

    iget-object v0, p0, Lcom/android/launcher3/m;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->x()V

    :cond_0
    return-void
.end method
