.class final Lcom/android/launcher3/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/y;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/p;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/h;Lcom/android/launcher3/z;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/p;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/launcher3/h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/p;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;Lcom/android/launcher3/z;Z)V

    goto :goto_0
.end method
