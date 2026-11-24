.class public Lcom/android/launcher3/FolderIcon;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/android/launcher3/bl;


# static fields
.field public static a:Landroid/graphics/drawable/Drawable;

.field private static f:Z


# instance fields
.field b:Z

.field private c:Lcom/android/launcher3/Launcher;

.field private d:Lcom/android/launcher3/Folder;

.field private e:Lcom/android/launcher3/bk;

.field private g:Lcom/android/launcher3/S;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/android/launcher3/BubbleTextView;

.field private j:Lcom/android/launcher3/be;

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:Landroid/graphics/Rect;

.field private t:Lcom/android/launcher3/bj;

.field private u:Lcom/android/launcher3/bj;

.field private v:Ljava/util/ArrayList;

.field private w:Lcom/android/launcher3/a;

.field private x:Lcom/android/launcher3/bD;

.field private y:Lcom/android/launcher3/dU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/FolderIcon;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/FolderIcon;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/FolderIcon;->o:I

    iput-boolean v5, p0, Lcom/android/launcher3/FolderIcon;->b:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->s:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/bj;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bj;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    new-instance v0, Lcom/android/launcher3/bj;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bj;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->u:Lcom/android/launcher3/bj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->v:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/a;

    invoke-direct {v0}, Lcom/android/launcher3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->w:Lcom/android/launcher3/a;

    new-instance v0, Lcom/android/launcher3/ba;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ba;-><init>(Lcom/android/launcher3/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->y:Lcom/android/launcher3/dU;

    invoke-direct {p0}, Lcom/android/launcher3/FolderIcon;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/FolderIcon;->o:I

    iput-boolean v5, p0, Lcom/android/launcher3/FolderIcon;->b:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->s:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/bj;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bj;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    new-instance v0, Lcom/android/launcher3/bj;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bj;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->u:Lcom/android/launcher3/bj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->v:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/a;

    invoke-direct {v0}, Lcom/android/launcher3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->w:Lcom/android/launcher3/a;

    new-instance v0, Lcom/android/launcher3/ba;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ba;-><init>(Lcom/android/launcher3/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->y:Lcom/android/launcher3/dU;

    invoke-direct {p0}, Lcom/android/launcher3/FolderIcon;->f()V

    return-void
.end method

.method static a(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/bk;)Lcom/android/launcher3/FolderIcon;
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/FolderIcon;->setClipToPadding(Z)V

    const v1, 0x7f10001b

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    iget-object v3, p3, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Lcom/android/launcher3/al;->o:I

    iget v4, v2, Lcom/android/launcher3/al;->q:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v1, 0x7f10001a

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->h:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Lcom/android/launcher3/al;->v:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v2, Lcom/android/launcher3/al;->w:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v2, Lcom/android/launcher3/al;->w:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, p3}, Lcom/android/launcher3/FolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p3, v0, Lcom/android/launcher3/FolderIcon;->e:Lcom/android/launcher3/bk;

    iput-object p1, v0, Lcom/android/launcher3/FolderIcon;->c:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0a0068

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p3, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/launcher3/Folder;->a(Landroid/content/Context;)Lcom/android/launcher3/Folder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->q()Lcom/android/launcher3/ap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/ap;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/FolderIcon;)V

    invoke-virtual {v1, p3}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/bk;)V

    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    new-instance v1, Lcom/android/launcher3/be;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/be;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V

    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/bk;->a(Lcom/android/launcher3/bl;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bD;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->x:Lcom/android/launcher3/bD;

    return-object v0
.end method

.method private a(ILcom/android/launcher3/bj;)Lcom/android/launcher3/bj;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    rsub-int/lit8 v0, p1, 0x3

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3eb33333    # 0.35f

    sub-float v2, v6, v0

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    sub-float v2, v6, v0

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->r:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->m:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v4, v6, v1

    iget v5, p0, Lcom/android/launcher3/FolderIcon;->m:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/FolderIcon;->n:I

    int-to-float v5, v5

    add-float/2addr v3, v2

    add-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    add-float/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/FolderIcon;->l:F

    mul-float/2addr v4, v1

    const/high16 v1, 0x42a00000    # 80.0f

    sub-float v0, v6, v0

    mul-float/2addr v0, v1

    float-to-int v5, v0

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/launcher3/bj;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bj;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    :goto_0
    return-object v0

    :cond_0
    iput v2, p2, Lcom/android/launcher3/bj;->a:F

    iput v3, p2, Lcom/android/launcher3/bj;->b:F

    iput v4, p2, Lcom/android/launcher3/bj;->c:F

    iput v5, p2, Lcom/android/launcher3/bj;->d:I

    move-object v0, p2

    goto :goto_0
.end method

.method private a(II)V
    .locals 5

    iget v0, p0, Lcom/android/launcher3/FolderIcon;->k:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/FolderIcon;->o:I

    if-eq v0, p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iput p1, p0, Lcom/android/launcher3/FolderIcon;->k:I

    iput p2, p0, Lcom/android/launcher3/FolderIcon;->o:I

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v2, Lcom/android/launcher3/be;->i:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->n:I

    iget v1, p0, Lcom/android/launcher3/FolderIcon;->n:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->k:I

    int-to-float v3, v3

    const v4, 0x3f9eb852    # 1.24f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v1, v1

    mul-float/2addr v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->l:F

    iget v1, p0, Lcom/android/launcher3/FolderIcon;->k:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->l:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->m:I

    iget v1, p0, Lcom/android/launcher3/FolderIcon;->m:I

    int-to-float v1, v1

    const v3, 0x3e75c28f    # 0.24f

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->r:F

    iget v1, p0, Lcom/android/launcher3/FolderIcon;->o:I

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->n:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->p:I

    iget v0, v0, Lcom/android/launcher3/al;->v:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/FolderIcon;->q:I

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/android/launcher3/bj;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xff

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Lcom/android/launcher3/bj;->a:F

    iget v1, p0, Lcom/android/launcher3/FolderIcon;->p:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/bj;->b:F

    iget v2, p0, Lcom/android/launcher3/FolderIcon;->q:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p2, Lcom/android/launcher3/bj;->c:F

    iget v1, p2, Lcom/android/launcher3/bj;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p2, Lcom/android/launcher3/bj;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/FolderIcon;->k:I

    iget v2, p0, Lcom/android/launcher3/FolderIcon;->k:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v1, p2, Lcom/android/launcher3/bj;->d:I

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/FolderIcon;->a(II)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/FolderIcon;->a(ILcom/android/launcher3/bj;)Lcom/android/launcher3/bj;

    move-result-object v4

    iget v0, p0, Lcom/android/launcher3/FolderIcon;->n:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher3/FolderIcon;->n:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->u:Lcom/android/launcher3/bj;

    iput-object p1, v0, Lcom/android/launcher3/bj;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lcom/android/launcher3/bc;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bc;-><init>(Lcom/android/launcher3/FolderIcon;ZFLcom/android/launcher3/bj;F)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/bd;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher3/bd;-><init>(Lcom/android/launcher3/FolderIcon;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/android/launcher3/ey;Lcom/android/launcher3/aA;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
    .locals 17

    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/launcher3/ey;->j:I

    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/launcher3/ey;->k:I

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderIcon;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/FolderIcon;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->aq()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getScaleX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getScaleY()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/FolderIcon;->setScaleX(F)V

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/FolderIcon;->setScaleY(F)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/FolderIcon;->setScaleX(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/FolderIcon;->setScaleY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->ar()V

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v6, 0x3

    move/from16 v0, p5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/launcher3/FolderIcon;->a(ILcom/android/launcher3/bj;)Lcom/android/launcher3/bj;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget v7, v6, Lcom/android/launcher3/bj;->a:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/FolderIcon;->p:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/launcher3/bj;->a:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget v7, v6, Lcom/android/launcher3/bj;->b:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/FolderIcon;->q:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/launcher3/bj;->b:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget v6, v6, Lcom/android/launcher3/bj;->a:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget v7, v7, Lcom/android/launcher3/bj;->c:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/FolderIcon;->k:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget v7, v7, Lcom/android/launcher3/bj;->b:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget v8, v8, Lcom/android/launcher3/bj;->c:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/FolderIcon;->k:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v3, v8

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget v7, v6, Lcom/android/launcher3/bj;->c:F

    const/4 v6, 0x0

    const/4 v8, 0x0

    aget v8, v3, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v3, v6

    const/4 v6, 0x1

    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v3, v6

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    const/4 v8, 0x1

    aget v3, v3, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v3, v8

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v3, 0x3

    move/from16 v0, p5

    if-ge v0, v3, :cond_0

    const/high16 v6, 0x3f000000    # 0.5f

    :goto_1
    mul-float v9, v7, p4

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v11, 0x190

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v12, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v13, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p2

    move v10, v9

    move-object/from16 v14, p6

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderIcon;->v:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Folder;->b(Lcom/android/launcher3/ey;)V

    new-instance v2, Lcom/android/launcher3/bb;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/bb;-><init>(Lcom/android/launcher3/FolderIcon;Lcom/android/launcher3/ey;)V

    const-wide/16 v3, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;)V

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    goto/16 :goto_0
.end method

.method private a(Lcom/android/launcher3/bD;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Lcom/android/launcher3/bD;->g:I

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->e:Lcom/android/launcher3/bk;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->e:Lcom/android/launcher3/bk;

    iget-boolean v1, v1, Lcom/android/launcher3/bk;->a:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    return-object v0
.end method

.method static synthetic b(Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/FolderIcon;->f:Z

    return-void
.end method

.method static synthetic c(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->c:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic d(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/launcher3/FolderIcon;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/FolderIcon;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->u:Lcom/android/launcher3/bj;

    return-object v0
.end method

.method private f()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/S;

    invoke-direct {v0, p0}, Lcom/android/launcher3/S;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->g:Lcom/android/launcher3/S;

    return-void
.end method


# virtual methods
.method final a()Lcom/android/launcher3/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/FolderIcon;->a(II)V

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/android/launcher3/FolderIcon;->a(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/aH;)V
    .locals 7

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/d;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/d;

    invoke-virtual {v0}, Lcom/android/launcher3/d;->b()Lcom/android/launcher3/ey;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->n()V

    iget-object v2, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->e:Lcom/android/launcher3/bk;

    iget-object v0, v0, Lcom/android/launcher3/bk;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher3/aH;->i:Ljava/lang/Runnable;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;Lcom/android/launcher3/aA;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ey;

    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/ey;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->e:Lcom/android/launcher3/bk;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/bk;->a(Lcom/android/launcher3/ey;)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/ey;Landroid/view/View;Lcom/android/launcher3/ey;Lcom/android/launcher3/aA;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/FolderIcon;->a(II)V

    const/16 v1, 0x15e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/FolderIcon;->a(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;Lcom/android/launcher3/aA;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/launcher3/bD;

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/bD;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Lcom/android/launcher3/bk;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->e:Lcom/android/launcher3/bk;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->s()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/bD;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/be;->a(II)V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/be;->a(Lcom/android/launcher3/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    invoke-virtual {v0}, Lcom/android/launcher3/be;->a()V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/be;)V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->w:Lcom/android/launcher3/a;

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->y:Lcom/android/launcher3/dU;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/a;->a(Lcom/android/launcher3/dU;)V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->w:Lcom/android/launcher3/a;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/a;->a(J)V

    check-cast p1, Lcom/android/launcher3/bD;

    iput-object p1, p0, Lcom/android/launcher3/FolderIcon;->x:Lcom/android/launcher3/bD;

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->j:Lcom/android/launcher3/be;

    invoke-virtual {v0}, Lcom/android/launcher3/be;->b()V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->w:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->g:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    return-void
.end method

.method public final d(Lcom/android/launcher3/ey;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->i:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/FolderIcon;->b:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->d:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->u()Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/launcher3/FolderIcon;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->u:Lcom/android/launcher3/bj;

    iget-object v0, v0, Lcom/android/launcher3/bj;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/FolderIcon;->b:Z

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher3/FolderIcon;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/FolderIcon;->a(ILcom/android/launcher3/bj;)Lcom/android/launcher3/bj;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iget-object v3, p0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    iput-object v0, v3, Lcom/android/launcher3/bj;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->t:Lcom/android/launcher3/bj;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FolderIcon;->a(Landroid/graphics/Canvas;Lcom/android/launcher3/bj;)V

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->u:Lcom/android/launcher3/bj;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FolderIcon;->a(Landroid/graphics/Canvas;Lcom/android/launcher3/bj;)V

    goto :goto_0
.end method

.method public final e(Lcom/android/launcher3/ey;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/FolderIcon;->f:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->g:Lcom/android/launcher3/S;

    invoke-virtual {v1}, Lcom/android/launcher3/S;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->g:Lcom/android/launcher3/S;

    invoke-virtual {v1}, Lcom/android/launcher3/S;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final t()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    return-void
.end method
