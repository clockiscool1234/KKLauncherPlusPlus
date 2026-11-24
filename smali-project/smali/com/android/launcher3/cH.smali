.class final Lcom/android/launcher3/cH;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private final synthetic a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cG;Landroid/widget/TextView;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/cH;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cH;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
