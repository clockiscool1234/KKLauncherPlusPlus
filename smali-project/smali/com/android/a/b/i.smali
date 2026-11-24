.class Lcom/android/a/b/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/a/b/c;


# direct methods
.method constructor <init>(Lcom/android/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/a/b/i;->a:Lcom/android/a/b/c;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/InputStream;)Lcom/android/a/b/b;
    .locals 5

    iget-object v0, p0, Lcom/android/a/b/i;->a:Lcom/android/a/b/c;

    invoke-static {p1, v0}, Lcom/android/a/b/e;->a(Ljava/io/InputStream;Lcom/android/a/b/c;)Lcom/android/a/b/e;

    move-result-object v0

    new-instance v1, Lcom/android/a/b/b;

    invoke-virtual {v0}, Lcom/android/a/b/e;->g()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/a/b/b;-><init>(Ljava/nio/ByteOrder;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/a/b/e;->a()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/android/a/b/k;

    invoke-virtual {v0}, Lcom/android/a/b/e;->c()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/a/b/k;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/a/b/b;->a(Lcom/android/a/b/k;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/a/b/e;->b()Lcom/android/a/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/a/b/j;->f()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/a/b/e;->a(Lcom/android/a/b/j;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/a/b/j;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/a/b/b;->a(I)Lcom/android/a/b/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/a/b/k;->a(Lcom/android/a/b/j;)Lcom/android/a/b/j;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/android/a/b/e;->b()Lcom/android/a/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/a/b/j;->c()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/a/b/e;->b(Lcom/android/a/b/j;)V

    :cond_2
    invoke-virtual {v2}, Lcom/android/a/b/j;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/a/b/b;->a(I)Lcom/android/a/b/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/a/b/k;->a(Lcom/android/a/b/j;)Lcom/android/a/b/j;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/android/a/b/e;->f()I

    move-result v2

    new-array v2, v2, [B

    array-length v3, v2

    invoke-virtual {v0, v2}, Lcom/android/a/b/e;->a([B)I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/a/b/b;->a([B)V

    goto :goto_0

    :cond_3
    const-string v2, "ExifReader"

    const-string v3, "Failed to read the compressed thumbnail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/a/b/e;->e()I

    move-result v2

    new-array v2, v2, [B

    array-length v3, v2

    invoke-virtual {v0, v2}, Lcom/android/a/b/e;->a([B)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/a/b/e;->d()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/a/b/b;->a(I[B)V

    goto :goto_0

    :cond_4
    const-string v2, "ExifReader"

    const-string v3, "Failed to read the strip bytes"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
