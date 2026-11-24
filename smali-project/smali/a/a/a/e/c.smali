.class final La/a/a/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:La/a/a/e/a;


# direct methods
.method private constructor <init>(La/a/a/e/a;)V
    .locals 0

    iput-object p1, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/e/a;B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/e/c;-><init>(La/a/a/e/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v0}, La/a/a/e/a;->a(La/a/a/e/a;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v0}, La/a/a/e/a;->b(La/a/a/e/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v0, v2}, La/a/a/e/a;->a(La/a/a/e/a;Z)Z

    iget-object v0, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v0}, La/a/a/e/a;->c(La/a/a/e/a;)La/a/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/e/b;->a()V

    :cond_1
    iget-object v0, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v0}, La/a/a/e/a;->c(La/a/a/e/a;)La/a/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/e/b;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v1}, La/a/a/e/a;->d(La/a/a/e/a;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v0, v2}, La/a/a/e/a;->b(La/a/a/e/a;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v1}, La/a/a/e/a;->e(La/a/a/e/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v1, v2}, La/a/a/e/a;->c(La/a/a/e/a;Z)Z

    iget-object v1, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v1}, La/a/a/e/a;->f(La/a/a/e/a;)V

    :cond_4
    invoke-virtual {v0}, La/a/a/e/b;->d()V

    invoke-virtual {v0}, La/a/a/e/b;->g()I

    move-result v1

    invoke-virtual {v0}, La/a/a/e/b;->h()I

    move-result v0

    iget-object v2, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-virtual {v2, v1, v0}, La/a/a/e/a;->a(II)V

    iget-object v0, p0, La/a/a/e/c;->a:La/a/a/e/a;

    invoke-static {v0}, La/a/a/e/a;->g(La/a/a/e/a;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, La/a/a/d/d;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
