.class final Lcom/android/launcher3/ek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/PagedViewWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedViewWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ek;->a:Lcom/android/launcher3/PagedViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/PagedViewWidget;->c:Lcom/android/launcher3/PagedViewWidget;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ek;->a:Lcom/android/launcher3/PagedViewWidget;

    iget-object v0, v0, Lcom/android/launcher3/PagedViewWidget;->a:Lcom/android/launcher3/el;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ek;->a:Lcom/android/launcher3/PagedViewWidget;

    iget-object v0, v0, Lcom/android/launcher3/PagedViewWidget;->a:Lcom/android/launcher3/el;

    iget-object v1, p0, Lcom/android/launcher3/ek;->a:Lcom/android/launcher3/PagedViewWidget;

    invoke-interface {v0, v1}, Lcom/android/launcher3/el;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/ek;->a:Lcom/android/launcher3/PagedViewWidget;

    sput-object v0, Lcom/android/launcher3/PagedViewWidget;->c:Lcom/android/launcher3/PagedViewWidget;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/ek;->a:Lcom/android/launcher3/PagedViewWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/PagedViewWidget;->b:Z

    goto :goto_0
.end method
