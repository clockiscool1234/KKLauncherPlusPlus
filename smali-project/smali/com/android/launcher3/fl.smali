.class public final Lcom/android/launcher3/fl;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/android/launcher3/dQ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/fl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/launcher3/fm;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fm;-><init>(Lcom/android/launcher3/fl;)V

    iput-object v0, p0, Lcom/android/launcher3/fl;->a:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/fn;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fn;-><init>(Lcom/android/launcher3/fl;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher3/dQ;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0, v3}, Lcom/android/launcher3/fl;->setOrientation(I)V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/fl;->setBackgroundColor(I)V

    return-void
.end method

.method static a([II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget v1, p0, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/fl;)Lcom/android/launcher3/dQ;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/fl;->b:Lcom/android/launcher3/dQ;

    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/fl;Lcom/android/launcher3/dQ;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fl;->b:Lcom/android/launcher3/dQ;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/fl;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/fl;->b:Lcom/android/launcher3/dQ;

    invoke-virtual {v0}, Lcom/android/launcher3/dQ;->a()[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/launcher3/fo;

    invoke-virtual {p0}, Lcom/android/launcher3/fl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/fo;-><init>(Lcom/android/launcher3/fl;Landroid/content/Context;)V

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/fo;->a(I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/fl;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/fl;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/fl;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
