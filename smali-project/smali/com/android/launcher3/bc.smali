.class final Lcom/android/launcher3/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/FolderIcon;

.field private final synthetic b:Z

.field private final synthetic c:F

.field private final synthetic d:Lcom/android/launcher3/bj;

.field private final synthetic e:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon;ZFLcom/android/launcher3/bj;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bc;->a:Lcom/android/launcher3/FolderIcon;

    iput-boolean p2, p0, Lcom/android/launcher3/bc;->b:Z

    iput p3, p0, Lcom/android/launcher3/bc;->c:F

    iput-object p4, p0, Lcom/android/launcher3/bc;->d:Lcom/android/launcher3/bj;

    iput p5, p0, Lcom/android/launcher3/bc;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/bc;->b:Z

    if-eqz v1, :cond_0

    sub-float v0, v5, v0

    iget-object v1, p0, Lcom/android/launcher3/bc;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher3/FolderIcon;->d(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/bc;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher3/FolderIcon;->f(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bj;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/bc;->c:F

    iget-object v3, p0, Lcom/android/launcher3/bc;->d:Lcom/android/launcher3/bj;

    iget v3, v3, Lcom/android/launcher3/bj;->a:F

    iget v4, p0, Lcom/android/launcher3/bc;->c:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/bj;->a:F

    iget-object v1, p0, Lcom/android/launcher3/bc;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher3/FolderIcon;->f(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bj;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/bc;->e:F

    iget-object v3, p0, Lcom/android/launcher3/bc;->d:Lcom/android/launcher3/bj;

    iget v3, v3, Lcom/android/launcher3/bj;->b:F

    iget v4, p0, Lcom/android/launcher3/bc;->e:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/bj;->b:F

    iget-object v1, p0, Lcom/android/launcher3/bc;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher3/FolderIcon;->f(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/bc;->d:Lcom/android/launcher3/bj;

    iget v2, v2, Lcom/android/launcher3/bj;->c:F

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/launcher3/bj;->c:F

    iget-object v0, p0, Lcom/android/launcher3/bc;->a:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    return-void
.end method
