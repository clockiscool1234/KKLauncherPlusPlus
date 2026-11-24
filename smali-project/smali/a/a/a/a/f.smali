.class final La/a/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/m;


# instance fields
.field private synthetic a:La/a/a/a/e;


# direct methods
.method constructor <init>(La/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/f;->a:La/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, La/a/a/a/f;->a:La/a/a/a/e;

    iget-object v0, v0, La/a/a/a/e;->H:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/f;->a:La/a/a/a/e;

    iget-object v0, v0, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
