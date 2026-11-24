.class public final Lcom/android/launcher3/aK;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static f:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private static g:J

.field private static h:Z


# instance fields
.field private a:Landroid/view/View;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/aK;->c:J

    iput-object p2, p0, Lcom/android/launcher3/aK;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/aK;->c:J

    iput-object p2, p0, Lcom/android/launcher3/aK;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/android/launcher3/aK;->g:J

    return-wide v0
.end method

.method static synthetic a(J)V
    .locals 0

    sput-wide p0, Lcom/android/launcher3/aK;->g:J

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/aK;->f:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/aK;->f:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    new-instance v0, Lcom/android/launcher3/aL;

    invoke-direct {v0}, Lcom/android/launcher3/aL;-><init>()V

    sput-object v0, Lcom/android/launcher3/aK;->f:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/aK;->f:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/aK;->h:Z

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/aK;->h:Z

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/aK;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/aK;->c:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget-wide v2, Lcom/android/launcher3/aK;->g:J

    iput-wide v2, p0, Lcom/android/launcher3/aK;->b:J

    iput-wide v0, p0, Lcom/android/launcher3/aK;->c:J

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/launcher3/aK;->d:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/launcher3/aK;->h:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/aK;->d:Z

    sget-wide v4, Lcom/android/launcher3/aK;->g:J

    iget-wide v6, p0, Lcom/android/launcher3/aK;->b:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    iget-wide v6, p0, Lcom/android/launcher3/aK;->c:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/aK;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/aK;->d:Z

    :cond_2
    return-void

    :cond_3
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    iget-wide v6, p0, Lcom/android/launcher3/aK;->c:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher3/aK;->e:Z

    if-nez v6, :cond_4

    iget-wide v6, p0, Lcom/android/launcher3/aK;->c:J

    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    const-wide/16 v0, 0x10

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/aK;->e:Z

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/aK;->a:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/aM;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/aM;-><init>(Lcom/android/launcher3/aK;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
