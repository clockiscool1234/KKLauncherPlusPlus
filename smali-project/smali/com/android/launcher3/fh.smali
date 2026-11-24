.class public final Lcom/android/launcher3/fh;
.super Lcom/android/launcher3/fj;


# instance fields
.field private a:Landroid/net/Uri;

.field private c:Z

.field private d:Lcom/android/b/f;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/fj;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/fh;->c:Z

    iput-object p1, p0, Lcom/android/launcher3/fh;->a:Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/fh;)Lcom/android/b/f;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/fh;->d:Lcom/android/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/eS;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/fh;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/b/f;

    iget-object v2, p0, Lcom/android/launcher3/fh;->a:Landroid/net/Uri;

    const/16 v3, 0x400

    invoke-direct {v1, p1, v2, v3}, Lcom/android/b/f;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iput-object v1, p0, Lcom/android/launcher3/fh;->d:Lcom/android/b/f;

    iget-object v1, p0, Lcom/android/launcher3/fh;->d:Lcom/android/b/f;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v4, v0}, Lcom/android/launcher3/eS;->a(Lcom/android/b/b;ZZLjava/lang/Runnable;)V

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/launcher3/fh;->c:Z

    invoke-static {p1}, Lcom/android/launcher3/eS;->a(Lcom/android/launcher3/eS;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/launcher3/fi;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/fi;-><init>(Lcom/android/launcher3/fh;Lcom/android/launcher3/eS;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/launcher3/eS;)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/eR;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/eR;-><init>(Lcom/android/launcher3/fh;Lcom/android/launcher3/eS;)V

    iget-object v1, p0, Lcom/android/launcher3/fh;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/launcher3/eS;->a(Landroid/net/Uri;Lcom/android/launcher3/eR;Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
