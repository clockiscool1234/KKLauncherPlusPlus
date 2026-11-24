.class public final Lcom/android/launcher3/aZ;
.super La/a/a/e/a;


# instance fields
.field private final a:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 3

    const/4 v2, 0x1

    const v1, 0x44bb8000    # 1500.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1}, La/a/a/e/a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/aZ;->a:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aZ;->b(I)La/a/a/e/a;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/aZ;->a(I)La/a/a/e/a;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/aZ;->b(Z)La/a/a/e/a;

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/aZ;->a(FF)La/a/a/e/a;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aZ;->d(I)La/a/a/e/a;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aZ;->c(I)La/a/a/e/a;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aZ;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    return-void
.end method

.method public final e(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aZ;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
