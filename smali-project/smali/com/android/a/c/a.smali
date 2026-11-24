.class public abstract Lcom/android/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/a/c/j;


# static fields
.field private static i:Ljava/util/WeakHashMap;

.field private static j:Ljava/lang/ThreadLocal;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/android/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/a/c/a;->i:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/a/c/a;->j:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/a/c/a;-><init>(Lcom/android/a/c/c;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/a/c/c;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/a/c/a;->a:I

    iput v0, p0, Lcom/android/a/c/a;->c:I

    iput v0, p0, Lcom/android/a/c/a;->d:I

    iput-object v1, p0, Lcom/android/a/c/a;->h:Lcom/android/a/c/c;

    iput-object v1, p0, Lcom/android/a/c/a;->h:Lcom/android/a/c/c;

    iput v2, p0, Lcom/android/a/c/a;->a:I

    iput v2, p0, Lcom/android/a/c/a;->b:I

    sget-object v1, Lcom/android/a/c/a;->i:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/a/c/a;->i:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static k()V
    .locals 4

    sget-object v1, Lcom/android/a/c/a;->i:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/a/c/a;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/c/a;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/a/c/a;->b:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/a/c/a;->h:Lcom/android/a/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    const/16 v2, 0x1000

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/a/c/a;->c:I

    iput p2, p0, Lcom/android/a/c/a;->d:I

    if-lez p1, :cond_2

    invoke-static {p1}, Lcom/android/a/a/a;->a(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/a/c/a;->e:I

    if-lez p2, :cond_3

    invoke-static {p2}, Lcom/android/a/a/a;->a(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/a/c/a;->f:I

    iget v0, p0, Lcom/android/a/c/a;->e:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/android/a/c/a;->f:I

    if-le v0, v2, :cond_1

    :cond_0
    const-string v0, "BasicTexture"

    const-string v2, "texture is too large: %d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/a/c/a;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p0, Lcom/android/a/c/a;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected final a(Lcom/android/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/a/c/a;->h:Lcom/android/a/c/c;

    return-void
.end method

.method public final a(Lcom/android/a/c/c;IIII)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;IIII)V

    return-void
.end method

.method protected final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/a/c/a;->g:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/a/c/a;->a:I

    return v0
.end method

.method protected abstract b(Lcom/android/a/c/c;)Z
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/a/c/a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/android/a/c/a;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/android/a/c/a;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/android/a/c/a;->f:I

    return v0
.end method

.method protected finalize()V
    .locals 2

    sget-object v0, Lcom/android/a/c/a;->j:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/a/c/a;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/a/c/a;->j()V

    sget-object v0, Lcom/android/a/c/a;->j:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/a/c/a;->g:Z

    return v0
.end method

.method protected abstract h()I
.end method

.method public final i()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/a/c/a;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/a/c/a;->h:Lcom/android/a/c/c;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/a/c/a;->a:I

    if-eq v1, v2, :cond_0

    invoke-interface {v0, p0}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;)Z

    iput v2, p0, Lcom/android/a/c/a;->a:I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/a/c/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/c/a;->h:Lcom/android/a/c/c;

    return-void
.end method
