.class final La/a/a/a/p;
.super La/a/a/a/n;


# static fields
.field static a:Z

.field private static f:Z

.field private static w:Landroid/view/animation/Interpolator;

.field private static x:Landroid/view/animation/Interpolator;


# instance fields
.field b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field d:I

.field e:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:La/a/a/a/h;

.field private n:La/a/a/a/m;

.field private o:La/a/a/a/e;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Bundle;

.field private u:Landroid/util/SparseArray;

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    sput-boolean v0, La/a/a/a/p;->a:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, La/a/a/a/p;->f:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, La/a/a/a/p;->w:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, La/a/a/a/p;->x:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/a/a/n;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/p;->d:I

    iput-object v1, p0, La/a/a/a/p;->t:Landroid/os/Bundle;

    iput-object v1, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    new-instance v0, La/a/a/a/q;

    invoke-direct {v0, p0}, La/a/a/a/q;-><init>(La/a/a/a/p;)V

    iput-object v0, p0, La/a/a/a/p;->v:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)La/a/a/a/e;
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    :cond_2
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragment no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, La/a/a/a/p;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12

    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, La/a/a/a/p;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, La/a/a/a/p;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method private a(La/a/a/a/e;IZI)Landroid/view/animation/Animation;
    .locals 6

    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p1, La/a/a/a/e;->F:I

    invoke-static {}, La/a/a/a/e;->h()Landroid/view/animation/Animation;

    iget v0, p1, La/a/a/a/e;->F:I

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iget v2, p1, La/a/a/a/e;->F:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    :cond_5
    packed-switch v0, :pswitch_data_0

    if-nez p4, :cond_6

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v3, v4, v3}, La/a/a/a/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-static {v3, v5, v3, v4}, La/a/a/a/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-static {v5, v3, v4, v3}, La/a/a/a/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    const v0, 0x3f89999a    # 1.075f

    invoke-static {v3, v0, v3, v4}, La/a/a/a/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-static {v4, v3}, La/a/a/a/p;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-static {v3, v4}, La/a/a/a/p;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILa/a/a/a/b;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, La/a/a/a/p;->a(IIIZ)V

    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, La/a/a/c/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, La/a/a/c/e;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, La/a/a/a/h;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    throw p1

    :catch_0
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, La/a/a/a/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(La/a/a/a/e;)V
    .locals 2

    iget-object v0, p1, La/a/a/a/e;->I:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    :goto_1
    iget-object v0, p1, La/a/a/a/e;->I:Landroid/view/View;

    iget-object v1, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    iput-object v0, p1, La/a/a/a/e;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/a/p;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public static c(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private p()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v6, v3

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/e;

    if-eqz v1, :cond_2

    iget-boolean v0, v1, La/a/a/a/e;->J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, La/a/a/a/p;->g:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/p;->s:Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    iput-boolean v3, v1, La/a/a/a/e;->J:Z

    iget v2, p0, La/a/a/a/p;->d:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, La/a/a/a/p;->a(La/a/a/a/e;IIIZ)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)La/a/a/a/e;
    .locals 3

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_1

    iget v2, v0, La/a/a/a/e;->w:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_3

    iget v2, v0, La/a/a/a/e;->w:I

    if-eq v2, p1, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)La/a/a/a/e;
    .locals 3

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_1

    iget-object v2, v0, La/a/a/a/e;->y:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_3

    iget-object v2, v0, La/a/a/a/e;->y:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(IIIZ)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, La/a/a/a/p;->d:I

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, La/a/a/a/p;->d:I

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    :goto_1
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/e;

    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, La/a/a/a/p;->a(La/a/a/a/e;IIIZ)V

    iget-object v0, v1, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v0, :cond_5

    iget-object v0, v1, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    invoke-direct {p0}, La/a/a/a/p;->p()V

    :cond_4
    iget-boolean v0, p0, La/a/a/a/p;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    if-eqz v0, :cond_1

    iget v0, p0, La/a/a/a/p;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->b()V

    iput-boolean v5, p0, La/a/a/a/p;->p:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method final a(La/a/a/a/b;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(La/a/a/a/e;)V
    .locals 6

    const/4 v3, 0x0

    iget v2, p0, La/a/a/a/p;->d:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, La/a/a/a/p;->a(La/a/a/a/e;IIIZ)V

    return-void
.end method

.method public final a(La/a/a/a/e;II)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, La/a/a/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iget-boolean v2, p1, La/a/a/a/e;->A:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v2, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iput-boolean v5, p1, La/a/a/a/e;->l:Z

    iput-boolean v1, p1, La/a/a/a/e;->m:Z

    if-eqz v0, :cond_4

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, La/a/a/a/p;->a(La/a/a/a/e;IIIZ)V

    :cond_2
    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method final a(La/a/a/a/e;IIIZ)V
    .locals 9

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p1, La/a/a/a/e;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, La/a/a/a/e;->A:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    :cond_1
    iget-boolean v0, p1, La/a/a/a/e;->m:Z

    if-eqz v0, :cond_2

    iget v0, p1, La/a/a/a/e;->a:I

    if-le p2, v0, :cond_2

    iget p2, p1, La/a/a/a/e;->a:I

    :cond_2
    iget-boolean v0, p1, La/a/a/a/e;->J:Z

    if-eqz v0, :cond_3

    iget v0, p1, La/a/a/a/e;->a:I

    if-ge v0, v8, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    :cond_3
    iget v0, p1, La/a/a/a/e;->a:I

    if-ge v0, p2, :cond_19

    iget-boolean v0, p1, La/a/a/a/e;->o:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, La/a/a/a/e;->p:Z

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object v0, p1, La/a/a/a/e;->b:Landroid/view/View;

    if-eqz v0, :cond_5

    iput-object v7, p1, La/a/a/a/e;->b:Landroid/view/View;

    iget v2, p1, La/a/a/a/e;->c:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, La/a/a/a/p;->a(La/a/a/a/e;IIIZ)V

    :cond_5
    iget v0, p1, La/a/a/a/e;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    iput p2, p1, La/a/a/a/e;->a:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, La/a/a/a/e;->e:Landroid/util/SparseArray;

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(Landroid/os/Bundle;Ljava/lang/String;)La/a/a/a/e;

    move-result-object v0

    iput-object v0, p1, La/a/a/a/e;->i:La/a/a/a/e;

    iget-object v0, p1, La/a/a/a/e;->i:La/a/a/a/e;

    if-eqz v0, :cond_7

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, La/a/a/a/e;->k:I

    :cond_7
    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, La/a/a/a/e;->K:Z

    iget-boolean v0, p1, La/a/a/a/e;->K:Z

    if-nez v0, :cond_8

    iput-boolean v5, p1, La/a/a/a/e;->J:Z

    if-le p2, v6, :cond_8

    move p2, v6

    :cond_8
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iput-object v0, p1, La/a/a/a/e;->t:La/a/a/a/h;

    iget-object v0, p0, La/a/a/a/p;->o:La/a/a/a/e;

    iput-object v0, p1, La/a/a/a/e;->v:La/a/a/a/e;

    iget-object v0, p0, La/a/a/a/p;->o:La/a/a/a/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/a/a/a/p;->o:La/a/a/a/e;

    iget-object v0, v0, La/a/a/a/e;->u:La/a/a/a/p;

    :goto_2
    iput-object v0, p1, La/a/a/a/e;->s:La/a/a/a/p;

    iput-boolean v3, p1, La/a/a/a/e;->E:Z

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-virtual {p1}, La/a/a/a/e;->g()V

    iget-boolean v0, p1, La/a/a/a/e;->E:Z

    if-nez v0, :cond_a

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iget-object v0, v0, La/a/a/a/h;->b:La/a/a/a/p;

    goto :goto_2

    :cond_a
    iget-object v0, p1, La/a/a/a/e;->v:La/a/a/a/e;

    if-nez v0, :cond_b

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-static {}, La/a/a/a/h;->c()V

    :cond_b
    iget-boolean v0, p1, La/a/a/a/e;->C:Z

    if-nez v0, :cond_c

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, La/a/a/a/e;->b(Landroid/os/Bundle;)V

    :cond_c
    iput-boolean v3, p1, La/a/a/a/e;->C:Z

    iget-boolean v0, p1, La/a/a/a/e;->o:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p1}, La/a/a/a/e;->e()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, La/a/a/a/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    iput-object v0, p1, La/a/a/a/e;->I:Landroid/view/View;

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-static {v0}, La/a/a/a/D;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    iget-boolean v0, p1, La/a/a/a/e;->z:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-static {}, La/a/a/a/e;->i()V

    :cond_e
    :goto_3
    :pswitch_1
    if-le p2, v5, :cond_15

    iget-boolean v0, p1, La/a/a/a/e;->o:Z

    if-nez v0, :cond_13

    iget v0, p1, La/a/a/a/e;->x:I

    if-eqz v0, :cond_28

    iget-object v0, p0, La/a/a/a/p;->n:La/a/a/a/m;

    iget v1, p1, La/a/a/a/e;->x:I

    invoke-interface {v0, v1}, La/a/a/a/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_f

    iget-boolean v1, p1, La/a/a/a/e;->q:Z

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, La/a/a/a/e;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, La/a/a/a/e;->b()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, La/a/a/a/e;->x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    :cond_f
    :goto_4
    iput-object v0, p1, La/a/a/a/e;->G:Landroid/view/ViewGroup;

    iget-object v1, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p1}, La/a/a/a/e;->e()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, La/a/a/a/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    iput-object v1, p1, La/a/a/a/e;->I:Landroid/view/View;

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-static {v1}, La/a/a/a/D;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p3, v5, p4}, La/a/a/a/p;->a(La/a/a/a/e;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_10
    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_11
    iget-boolean v0, p1, La/a/a/a/e;->z:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-static {}, La/a/a/a/e;->i()V

    :cond_13
    :goto_5
    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, La/a/a/a/e;->c(Landroid/os/Bundle;)V

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, La/a/a/a/e;->a(Landroid/os/Bundle;)V

    :cond_14
    iput-object v7, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    :cond_15
    :pswitch_2
    if-le p2, v6, :cond_16

    invoke-virtual {p1}, La/a/a/a/e;->m()V

    :cond_16
    :pswitch_3
    if-le p2, v8, :cond_6

    iput-boolean v5, p1, La/a/a/a/e;->n:Z

    invoke-virtual {p1}, La/a/a/a/e;->n()V

    iput-object v7, p1, La/a/a/a/e;->d:Landroid/os/Bundle;

    iput-object v7, p1, La/a/a/a/e;->e:Landroid/util/SparseArray;

    goto/16 :goto_1

    :cond_17
    iput-object v7, p1, La/a/a/a/e;->I:Landroid/view/View;

    goto/16 :goto_3

    :cond_18
    iput-object v7, p1, La/a/a/a/e;->I:Landroid/view/View;

    goto :goto_5

    :cond_19
    iget v0, p1, La/a/a/a/e;->a:I

    if-le v0, p2, :cond_6

    iget v0, p1, La/a/a/a/e;->a:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :cond_1a
    :goto_6
    :pswitch_4
    if-gtz p2, :cond_6

    iget-boolean v0, p0, La/a/a/a/p;->r:Z

    if-eqz v0, :cond_1b

    iget-object v0, p1, La/a/a/a/e;->b:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p1, La/a/a/a/e;->b:Landroid/view/View;

    iput-object v7, p1, La/a/a/a/e;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1b
    iget-object v0, p1, La/a/a/a/e;->b:Landroid/view/View;

    if-eqz v0, :cond_22

    iput p2, p1, La/a/a/a/e;->c:I

    move p2, v5

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1c

    invoke-virtual {p1}, La/a/a/a/e;->p()V

    iput-boolean v3, p1, La/a/a/a/e;->n:Z

    :cond_1c
    :pswitch_6
    if-ge p2, v8, :cond_1d

    invoke-virtual {p1}, La/a/a/a/e;->q()V

    :cond_1d
    :pswitch_7
    if-ge p2, v6, :cond_1e

    invoke-virtual {p1}, La/a/a/a/e;->r()V

    :cond_1e
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1a

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, La/a/a/a/e;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_1f

    invoke-direct {p0, p1}, La/a/a/a/p;->b(La/a/a/a/e;)V

    :cond_1f
    invoke-virtual {p1}, La/a/a/a/e;->s()V

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p1, La/a/a/a/e;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    iget v0, p0, La/a/a/a/p;->d:I

    if-lez v0, :cond_27

    iget-boolean v0, p0, La/a/a/a/p;->r:Z

    if-nez v0, :cond_27

    invoke-direct {p0, p1, p3, v3, p4}, La/a/a/a/p;->a(La/a/a/a/e;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_20

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    iput-object v1, p1, La/a/a/a/e;->b:Landroid/view/View;

    iput p2, p1, La/a/a/a/e;->c:I

    new-instance v1, La/a/a/a/r;

    invoke-direct {v1, p0, p1}, La/a/a/a/r;-><init>(La/a/a/a/p;La/a/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_20
    iget-object v0, p1, La/a/a/a/e;->G:Landroid/view/ViewGroup;

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_21
    iput-object v7, p1, La/a/a/a/e;->G:Landroid/view/ViewGroup;

    iput-object v7, p1, La/a/a/a/e;->H:Landroid/view/View;

    iput-object v7, p1, La/a/a/a/e;->I:Landroid/view/View;

    goto :goto_6

    :cond_22
    iget-boolean v0, p1, La/a/a/a/e;->C:Z

    if-nez v0, :cond_23

    invoke-virtual {p1}, La/a/a/a/e;->t()V

    :cond_23
    iput-boolean v3, p1, La/a/a/a/e;->E:Z

    invoke-virtual {p1}, La/a/a/a/e;->k()V

    iget-boolean v0, p1, La/a/a/a/e;->E:Z

    if-nez v0, :cond_24

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    if-nez p5, :cond_6

    iget-boolean v0, p1, La/a/a/a/e;->C:Z

    if-nez v0, :cond_26

    iget v0, p1, La/a/a/a/e;->f:I

    if-ltz v0, :cond_6

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    iget v1, p1, La/a/a/a/e;->f:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    :cond_25
    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    iget v1, p1, La/a/a/a/e;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iget-object v1, p1, La/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, La/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/a/e;->j()V

    goto/16 :goto_1

    :cond_26
    iput-object v7, p1, La/a/a/a/e;->t:La/a/a/a/h;

    iput-object v7, p1, La/a/a/a/e;->v:La/a/a/a/e;

    iput-object v7, p1, La/a/a/a/e;->s:La/a/a/a/p;

    iput-object v7, p1, La/a/a/a/e;->u:La/a/a/a/p;

    goto/16 :goto_1

    :cond_27
    move-object v0, v7

    goto/16 :goto_7

    :cond_28
    move-object v0, v7

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(La/a/a/a/e;Z)V
    .locals 3

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    :cond_0
    iget v0, p1, La/a/a/a/e;->f:I

    if-gez v0, :cond_3

    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_1
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, La/a/a/a/p;->o:La/a/a/a/e;

    invoke-virtual {p1, v0, v1}, La/a/a/a/e;->a(ILa/a/a/a/e;)V

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-boolean v0, p1, La/a/a/a/e;->A:Z

    if-nez v0, :cond_6

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    iget-object v1, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, La/a/a/a/p;->o:La/a/a/a/e;

    invoke-virtual {p1, v0, v1}, La/a/a/a/e;->a(ILa/a/a/a/e;)V

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    iget v1, p1, La/a/a/a/e;->f:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, La/a/a/a/e;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, La/a/a/a/e;->m:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, La/a/a/a/p;->a(La/a/a/a/e;)V

    :cond_6
    return-void
.end method

.method public final a(La/a/a/a/h;La/a/a/a/m;La/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iput-object p2, p0, La/a/a/a/p;->n:La/a/a/a/m;

    iput-object p3, p0, La/a/a/a/p;->o:La/a/a/a/e;

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La/a/a/a/e;->a(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, La/a/a/a/s;

    iget-object v0, p1, La/a/a/a/s;->a:[La/a/a/a/u;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    iget-object v3, p1, La/a/a/a/s;->a:[La/a/a/a/u;

    iget v4, v0, La/a/a/a/e;->f:I

    aget-object v3, v3, v4

    iput-object v0, v3, La/a/a/a/u;->b:La/a/a/a/e;

    iput-object v6, v0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    iput v2, v0, La/a/a/a/e;->r:I

    iput-boolean v2, v0, La/a/a/a/e;->p:Z

    iput-boolean v2, v0, La/a/a/a/e;->l:Z

    iput-object v6, v0, La/a/a/a/e;->i:La/a/a/a/e;

    iget-object v4, v3, La/a/a/a/u;->a:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-object v4, v3, La/a/a/a/u;->a:Landroid/os/Bundle;

    iget-object v5, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-virtual {v5}, La/a/a/a/h;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v3, v3, La/a/a/a/u;->a:Landroid/os/Bundle;

    const-string v4, "android:view_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, La/a/a/a/s;->a:[La/a/a/a/u;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move v0, v2

    :goto_2
    iget-object v1, p1, La/a/a/a/s;->a:[La/a/a/a/u;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p1, La/a/a/a/s;->a:[La/a/a/a/u;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v3, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iget-object v4, p0, La/a/a/a/p;->o:La/a/a/a/e;

    invoke-virtual {v1, v3, v4}, La/a/a/a/u;->a(La/a/a/a/h;La/a/a/a/e;)La/a/a/a/e;

    move-result-object v3

    iget-object v4, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v6, v1, La/a/a/a/u;->b:La/a/a/a/e;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    :cond_6
    iget-object v1, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_a

    move v3, v2

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    iget v1, v0, La/a/a/a/e;->j:I

    if-ltz v1, :cond_8

    iget v1, v0, La/a/a/a/e;->j:I

    iget-object v4, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    iget-object v1, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    iget v4, v0, La/a/a/a/e;->j:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/e;

    iput-object v1, v0, La/a/a/a/e;->i:La/a/a/a/e;

    :cond_8
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_9
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Re-attaching retained fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, La/a/a/a/e;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v0, La/a/a/a/e;->i:La/a/a/a/e;

    goto :goto_5

    :cond_a
    iget-object v0, p1, La/a/a/a/s;->b:[I

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, La/a/a/a/s;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    move v1, v2

    :goto_6
    iget-object v0, p1, La/a/a/a/s;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    iget-object v3, p1, La/a/a/a/s;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-nez v0, :cond_b

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No instantiated fragment for index #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, La/a/a/a/s;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, v0, La/a/a/a/e;->l:Z

    iget-object v3, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v3, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_d
    iput-object v6, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    :cond_e
    iget-object v0, p1, La/a/a/a/s;->c:[La/a/a/a/c;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, La/a/a/a/s;->c:[La/a/a/a/c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    :goto_7
    iget-object v0, p1, La/a/a/a/s;->c:[La/a/a/a/c;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    iget-object v0, p1, La/a/a/a/s;->c:[La/a/a/a/c;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, La/a/a/a/c;->a(La/a/a/a/p;)La/a/a/a/b;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, La/a/a/a/b;->g:I

    if-ltz v1, :cond_f

    iget v1, v0, La/a/a/a/b;->g:I

    invoke-direct {p0, v1, v0}, La/a/a/a/p;->a(ILa/a/a/a/b;)V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    iput-object v6, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, p2, p3, p4}, La/a/a/a/e;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, La/a/a/a/p;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v0, p0, La/a/a/a/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_4

    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/a/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p3}, La/a/a/a/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge v1, v2, :cond_5

    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/p;->n:La/a/a/a/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/p;->o:La/a/a/a/e;

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/p;->o:La/a/a/a/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/p;->d:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/p;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/p;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, La/a/a/a/p;->p:Z

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/p;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_8
    iget-object v0, p0, La/a/a/a/p;->e:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/p;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, La/a/a/a/p;->q:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, La/a/a/a/p;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, La/a/a/a/p;->b()Z

    iget-object v2, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iget-object v2, v2, La/a/a/a/h;->a:Landroid/os/Handler;

    iget-object v2, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b;

    invoke-virtual {v0, v1}, La/a/a/a/b;->a(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La/a/a/a/e;->a(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    return v2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, La/a/a/a/e;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    :cond_3
    iget-object v0, p0, La/a/a/a/p;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    :goto_1
    iget-object v0, p0, La/a/a/a/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, La/a/a/a/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {}, La/a/a/a/e;->l()V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iput-object v1, p0, La/a/a/a/p;->j:Ljava/util/ArrayList;

    return v2
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, La/a/a/a/e;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/p;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, La/a/a/a/p;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(La/a/a/a/e;II)V
    .locals 2

    iget-boolean v0, p1, La/a/a/a/e;->z:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, La/a/a/a/e;->z:Z

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, La/a/a/a/p;->a(La/a/a/a/e;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p1, La/a/a/a/e;->l:Z

    invoke-static {}, La/a/a/a/e;->c()V

    :cond_2
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La/a/a/a/e;->b(Landroid/view/Menu;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 5

    const/4 v2, 0x0

    iget-boolean v0, p0, La/a/a/a/p;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iget-object v1, v1, La/a/a/a/h;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-enter p0

    monitor-exit p0

    iget-boolean v0, p0, La/a/a/a/p;->s:Z

    if-eqz v0, :cond_4

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_2

    iget-object v4, v0, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v4, :cond_2

    iget-object v0, v0, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->a()Z

    move-result v0

    or-int/2addr v3, v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    iput-boolean v2, p0, La/a/a/a/p;->s:Z

    invoke-direct {p0}, La/a/a/a/p;->p()V

    :cond_4
    return v2
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, La/a/a/a/e;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final c()Ljava/util/ArrayList;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, La/a/a/a/e;->B:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, v0, La/a/a/a/e;->C:Z

    iget-object v2, v0, La/a/a/a/e;->i:La/a/a/a/e;

    if-eqz v2, :cond_2

    iget-object v2, v0, La/a/a/a/e;->i:La/a/a/a/e;

    iget v2, v2, La/a/a/a/e;->f:I

    :goto_1
    iput v2, v0, La/a/a/a/e;->j:I

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final c(La/a/a/a/e;II)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p1, La/a/a/a/e;->z:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p1, La/a/a/a/e;->z:Z

    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, La/a/a/a/p;->a(La/a/a/a/e;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p1, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p1, La/a/a/a/e;->l:Z

    invoke-static {}, La/a/a/a/e;->c()V

    :cond_2
    return-void
.end method

.method final d()Landroid/os/Parcelable;
    .locals 14

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, La/a/a/a/p;->b()Z

    sget-boolean v0, La/a/a/a/p;->f:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, La/a/a/a/p;->q:Z

    :cond_0
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [La/a/a/a/u;

    move v5, v4

    move v1, v4

    :goto_1
    if-ge v5, v6, :cond_f

    iget-object v0, p0, La/a/a/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_15

    iget v1, v0, La/a/a/a/e;->f:I

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, La/a/a/a/e;->f:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    :cond_3
    new-instance v8, La/a/a/a/u;

    invoke-direct {v8, v0}, La/a/a/a/u;-><init>(La/a/a/a/e;)V

    aput-object v8, v7, v5

    iget v1, v0, La/a/a/a/e;->a:I

    if-lez v1, :cond_d

    iget-object v1, v8, La/a/a/a/u;->a:Landroid/os/Bundle;

    if-nez v1, :cond_d

    iget-object v1, p0, La/a/a/a/p;->t:Landroid/os/Bundle;

    if-nez v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, La/a/a/a/p;->t:Landroid/os/Bundle;

    :cond_4
    iget-object v1, p0, La/a/a/a/p;->t:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, La/a/a/a/e;->d(Landroid/os/Bundle;)V

    iget-object v1, p0, La/a/a/a/p;->t:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, La/a/a/a/p;->t:Landroid/os/Bundle;

    iput-object v2, p0, La/a/a/a/p;->t:Landroid/os/Bundle;

    :goto_2
    iget-object v9, v0, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v9, :cond_5

    invoke-direct {p0, v0}, La/a/a/a/p;->b(La/a/a/a/e;)V

    :cond_5
    iget-object v9, v0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    if-eqz v9, :cond_7

    if-nez v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_6
    const-string v9, "android:view_state"

    iget-object v10, v0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_7
    iget-boolean v9, v0, La/a/a/a/e;->K:Z

    if-nez v9, :cond_9

    if-nez v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_8
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v0, La/a/a/a/e;->K:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    iput-object v1, v8, La/a/a/a/u;->a:Landroid/os/Bundle;

    iget-object v1, v0, La/a/a/a/e;->i:La/a/a/a/e;

    if-eqz v1, :cond_e

    iget-object v1, v0, La/a/a/a/e;->i:La/a/a/a/e;

    iget v1, v1, La/a/a/a/e;->f:I

    if-gez v1, :cond_a

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, La/a/a/a/e;->i:La/a/a/a/e;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    :cond_a
    iget-object v1, v8, La/a/a/a/u;->a:Landroid/os/Bundle;

    if-nez v1, :cond_b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v8, La/a/a/a/u;->a:Landroid/os/Bundle;

    :cond_b
    iget-object v1, v8, La/a/a/a/u;->a:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, La/a/a/a/e;->i:La/a/a/a/e;

    iget v11, v10, La/a/a/a/e;->f:I

    if-gez v11, :cond_c

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    :cond_c
    iget v10, v10, La/a/a/a/e;->f:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, v0, La/a/a/a/e;->k:I

    if-eqz v1, :cond_e

    iget-object v1, v8, La/a/a/a/u;->a:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    iget v0, v0, La/a/a/a/e;->k:I

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v3

    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto/16 :goto_1

    :cond_d
    iget-object v0, v0, La/a/a/a/e;->d:Landroid/os/Bundle;

    iput-object v0, v8, La/a/a/a/u;->a:Landroid/os/Bundle;

    :cond_e
    move v0, v3

    goto :goto_3

    :cond_f
    if-eqz v1, :cond_1

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_11

    new-array v1, v5, [I

    move v3, v4

    :goto_4
    if-ge v3, v5, :cond_12

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    iget v0, v0, La/a/a/a/e;->f:I

    aput v0, v1, v3

    aget v0, v1, v3

    if-gez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/a/a/p;->a(Ljava/lang/RuntimeException;)V

    :cond_10
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_11
    move-object v1, v2

    :cond_12
    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    new-array v2, v5, [La/a/a/a/c;

    move v3, v4

    :goto_5
    if-ge v3, v5, :cond_13

    new-instance v4, La/a/a/a/c;

    iget-object v0, p0, La/a/a/a/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b;

    invoke-direct {v4, v0}, La/a/a/a/c;-><init>(La/a/a/a/b;)V

    aput-object v4, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_13
    new-instance v0, La/a/a/a/s;

    invoke-direct {v0}, La/a/a/a/s;-><init>()V

    iput-object v7, v0, La/a/a/a/s;->a:[La/a/a/a/u;

    iput-object v1, v0, La/a/a/a/s;->b:[I

    iput-object v2, v0, La/a/a/a/s;->c:[La/a/a/a/c;

    move-object v2, v0

    goto/16 :goto_0

    :cond_14
    move-object v1, v2

    goto/16 :goto_2

    :cond_15
    move v0, v1

    goto/16 :goto_3
.end method

.method public final d(La/a/a/a/e;II)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p1, La/a/a/a/e;->A:Z

    if-nez v0, :cond_1

    iput-boolean v2, p1, La/a/a/a/e;->A:Z

    iget-boolean v0, p1, La/a/a/a/e;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iput-boolean v5, p1, La/a/a/a/e;->l:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, La/a/a/a/p;->a(La/a/a/a/e;IIIZ)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/p;->q:Z

    return-void
.end method

.method public final e(La/a/a/a/e;II)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p1, La/a/a/a/e;->A:Z

    if-eqz v0, :cond_2

    iput-boolean v5, p1, La/a/a/a/e;->A:Z

    iget-boolean v0, p1, La/a/a/a/e;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, La/a/a/a/e;->l:Z

    iget v2, p0, La/a/a/a/p;->d:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, La/a/a/a/p;->a(La/a/a/a/e;IIIZ)V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, La/a/a/a/p;->q:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, La/a/a/a/p;->q:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, La/a/a/a/p;->q:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final i()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, La/a/a/a/p;->q:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final k()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/p;->q:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final l()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/a/a/a/p;->a(IZ)V

    return-void
.end method

.method public final n()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/p;->r:Z

    invoke-virtual {p0}, La/a/a/a/p;->b()Z

    invoke-direct {p0, v2, v2}, La/a/a/a/p;->a(IZ)V

    iput-object v1, p0, La/a/a/a/p;->m:La/a/a/a/h;

    iput-object v1, p0, La/a/a/a/p;->n:La/a/a/a/m;

    iput-object v1, p0, La/a/a/a/p;->o:La/a/a/a/e;

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/a/a/e;->o()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/p;->o:La/a/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a/p;->o:La/a/a/a/e;

    invoke-static {v1, v0}, La/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, La/a/a/a/p;->m:La/a/a/a/h;

    invoke-static {v1, v0}, La/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
