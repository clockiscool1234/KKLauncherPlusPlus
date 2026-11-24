.class final Lcom/android/launcher3/bZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/animation/AnimatorSet;

.field private final synthetic b:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/bZ;->a:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/bZ;->b:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/bZ;->a:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/bZ;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/launcher3/bZ;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
