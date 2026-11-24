.class final Lcom/android/launcher3/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/n;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/n;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->y()V

    iget-object v0, p0, Lcom/android/launcher3/n;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->e(Z)V

    return-void
.end method
