.class public final Lcom/android/launcher3/i;
.super Lcom/android/launcher3/CellLayout;

# interfaces
.implements Lcom/android/launcher3/dV;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/i;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/i;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/i;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/i;->q()Lcom/android/launcher3/ex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
