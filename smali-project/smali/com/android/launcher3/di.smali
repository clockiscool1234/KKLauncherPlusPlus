.class final Lcom/android/launcher3/di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dg;

.field private final synthetic b:Lcom/android/launcher3/de;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/di;->a:Lcom/android/launcher3/dg;

    iput-object p2, p0, Lcom/android/launcher3/di;->b:Lcom/android/launcher3/de;

    iput-boolean p3, p0, Lcom/android/launcher3/di;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/di;->a:Lcom/android/launcher3/dg;

    iget-object v1, p0, Lcom/android/launcher3/di;->b:Lcom/android/launcher3/de;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dg;->a(Lcom/android/launcher3/de;)Lcom/android/launcher3/de;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/di;->c:Z

    invoke-interface {v0, v1}, Lcom/android/launcher3/de;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/di;->a:Lcom/android/launcher3/dg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/dg;->b(Lcom/android/launcher3/dg;Z)V

    return-void
.end method
