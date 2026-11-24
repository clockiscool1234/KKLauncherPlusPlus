.class final Lcom/android/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/android/b/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/b/a/b;
    .locals 2

    iget-object v0, p0, Lcom/android/b/a/d;->a:Lcom/android/b/a/b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/b/a/b;->h:Lcom/android/b/a/b;

    iput-object v1, p0, Lcom/android/b/a/d;->a:Lcom/android/b/a/b;

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/b/a/b;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/b/a/d;->a:Lcom/android/b/a/b;

    :goto_0
    if-nez v2, :cond_0

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    const-string v0, "TiledImageRenderer"

    const-string v2, "Attempting to add a tile already in the queue!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1

    :cond_0
    if-ne v2, p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/android/b/a/b;->h:Lcom/android/b/a/b;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/b/a/d;->a:Lcom/android/b/a/b;

    if-nez v2, :cond_3

    :goto_3
    iget-object v1, p0, Lcom/android/b/a/d;->a:Lcom/android/b/a/b;

    iput-object v1, p1, Lcom/android/b/a/b;->h:Lcom/android/b/a/b;

    iput-object p1, p0, Lcom/android/b/a/d;->a:Lcom/android/b/a/b;

    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a/d;->a:Lcom/android/b/a/b;

    return-void
.end method
