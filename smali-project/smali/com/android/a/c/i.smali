.class public final Lcom/android/a/c/i;
.super Lcom/android/a/c/a;


# instance fields
.field private final e:Z


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Lcom/android/a/c/c;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/a/c/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "RawTexture"

    const-string v1, "lost the content due to context change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/a/c/i;->e:Z

    return v0
.end method
