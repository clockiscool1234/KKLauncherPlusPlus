.class public final Lnl/ndsc/kitkatlauncher/v;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const v0, 0x7f040012

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/v;->a:Landroid/content/Context;

    iput-object p2, p0, Lnl/ndsc/kitkatlauncher/v;->b:Ljava/util/List;

    invoke-static {p1}, La/a/a/c/d;->p(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/v;->c:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/v;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/v;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 5

    const v0, 0x7f100020

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100021

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f10001f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f10001e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x3e99999a    # 0.3f

    if-eqz p1, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnl/ndsc/kitkatlauncher/v;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/v;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040012

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/v;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/ndsc/kitkatlauncher/a/a;

    const v1, 0x7f100020

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100021

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f10001f

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f10001e

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iget-object v6, v0, Lnl/ndsc/kitkatlauncher/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lnl/ndsc/kitkatlauncher/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lnl/ndsc/kitkatlauncher/a/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/v;->c:Ljava/util/Set;

    iget-object v2, v0, Lnl/ndsc/kitkatlauncher/a/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {v5, v7}, Lnl/ndsc/kitkatlauncher/v;->a(Landroid/view/View;Z)V

    :cond_0
    new-instance v1, Lnl/ndsc/kitkatlauncher/w;

    invoke-direct {v1, p0, v0, v5}, Lnl/ndsc/kitkatlauncher/w;-><init>(Lnl/ndsc/kitkatlauncher/v;Lnl/ndsc/kitkatlauncher/a/a;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v5
.end method
