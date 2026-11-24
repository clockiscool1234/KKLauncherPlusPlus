.class public final Lcom/android/launcher3/S;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Lcom/android/launcher3/T;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/S;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/S;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/S;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/S;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/S;->b:Z

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/S;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/S;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/S;->b:Z

    iget-object v0, p0, Lcom/android/launcher3/S;->c:Lcom/android/launcher3/T;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/T;

    invoke-direct {v0, p0}, Lcom/android/launcher3/T;-><init>(Lcom/android/launcher3/S;)V

    iput-object v0, p0, Lcom/android/launcher3/S;->c:Lcom/android/launcher3/T;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/S;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/S;->c:Lcom/android/launcher3/T;

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/cB;->l()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/S;->b:Z

    iget-object v0, p0, Lcom/android/launcher3/S;->c:Lcom/android/launcher3/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/S;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/S;->c:Lcom/android/launcher3/T;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/S;->c:Lcom/android/launcher3/T;

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/S;->b:Z

    return v0
.end method
