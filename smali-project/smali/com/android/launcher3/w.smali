.class final Lcom/android/launcher3/w;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/u;


# direct methods
.method constructor <init>(Lcom/android/launcher3/u;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/w;->a:Lcom/android/launcher3/u;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/w;->a:Lcom/android/launcher3/u;

    invoke-static {v0}, Lcom/android/launcher3/u;->a(Lcom/android/launcher3/u;)Lcom/android/launcher3/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->d(Lcom/android/launcher3/AppsCustomizeTabHost;)V

    return-void
.end method
