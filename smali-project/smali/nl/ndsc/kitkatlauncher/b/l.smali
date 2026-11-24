.class public final Lnl/ndsc/kitkatlauncher/b/l;
.super Landroid/app/Fragment;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/android/launcher3/PagedViewIcon;

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->c:F

    iput v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->f:Z

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/b/l;)V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/l;->c()V

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/b/l;F)V
    .locals 0

    iput p1, p0, Lnl/ndsc/kitkatlauncher/b/l;->c:F

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/b/l;Z)V
    .locals 0

    iput-boolean p1, p0, Lnl/ndsc/kitkatlauncher/b/l;->e:Z

    return-void
.end method

.method static synthetic b(Lnl/ndsc/kitkatlauncher/b/l;)F
    .locals 1

    iget v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->c:F

    return v0
.end method

.method private b()V
    .locals 4

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lnl/ndsc/kitkatlauncher/b/l;->f:Z

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setAlpha(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method static synthetic b(Lnl/ndsc/kitkatlauncher/b/l;F)V
    .locals 0

    iput p1, p0, Lnl/ndsc/kitkatlauncher/b/l;->d:F

    return-void
.end method

.method static synthetic c(Lnl/ndsc/kitkatlauncher/b/l;)F
    .locals 1

    iget v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->d:F

    return v0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    sget v0, La/a/a/c/d;->a:F

    iget v1, p0, Lnl/ndsc/kitkatlauncher/b/l;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/launcher3/eI;->a(I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040004

    iget-object v3, p0, Lnl/ndsc/kitkatlauncher/b/l;->a:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedViewIcon;

    sget v2, La/a/a/c/d;->b:F

    iget v3, p0, Lnl/ndsc/kitkatlauncher/b/l;->d:F

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/PagedViewIcon;->setTextSize(IF)V

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/eI;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v5, v5}, Lcom/android/launcher3/PagedViewIcon;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedViewIcon;->setY(F)V

    iget-boolean v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    const-string v1, "Preview icon"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lnl/ndsc/kitkatlauncher/b/l;)Z
    .locals 1

    iget-boolean v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->f:Z

    return v0
.end method

.method static synthetic e(Lnl/ndsc/kitkatlauncher/b/l;)V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/l;->b()V

    return-void
.end method

.method static synthetic f(Lnl/ndsc/kitkatlauncher/b/l;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lnl/ndsc/kitkatlauncher/b/l;->f:Z

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setAlpha(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    new-instance v0, Lnl/ndsc/kitkatlauncher/x;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/x;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lnl/ndsc/kitkatlauncher/x;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PRODIALOG"

    invoke-virtual {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/x;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iput-object p2, p0, Lnl/ndsc/kitkatlauncher/b/l;->a:Landroid/view/ViewGroup;

    const v0, 0x7f040017

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/l;->b:Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "Icon Settings"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-boolean v0, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-nez v0, :cond_0

    const v0, 0x7f100030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->n(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->c:F

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->o(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->d:F

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lnl/ndsc/kitkatlauncher/b/l;->e:Z

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/l;->c()V

    const v0, 0x7f10002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lnl/ndsc/kitkatlauncher/b/l;->c:F

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v2, p0, Lnl/ndsc/kitkatlauncher/b/l;->c:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lnl/ndsc/kitkatlauncher/b/m;

    invoke-direct {v2, p0, v1}, Lnl/ndsc/kitkatlauncher/b/m;-><init>(Lnl/ndsc/kitkatlauncher/b/l;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f100031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lnl/ndsc/kitkatlauncher/b/l;->d:F

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v2, p0, Lnl/ndsc/kitkatlauncher/b/l;->d:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lnl/ndsc/kitkatlauncher/b/n;

    invoke-direct {v2, p0, v1}, Lnl/ndsc/kitkatlauncher/b/n;-><init>(Lnl/ndsc/kitkatlauncher/b/l;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/o;

    invoke-direct {v1, p0}, Lnl/ndsc/kitkatlauncher/b/o;-><init>(Lnl/ndsc/kitkatlauncher/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/l;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lnl/ndsc/kitkatlauncher/b/l;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v1, p0, Lnl/ndsc/kitkatlauncher/b/l;->e:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/l;->b()V

    :cond_1
    new-instance v1, Lnl/ndsc/kitkatlauncher/b/p;

    invoke-direct {v1, p0}, Lnl/ndsc/kitkatlauncher/b/p;-><init>(Lnl/ndsc/kitkatlauncher/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/q;

    invoke-direct {v1, p0}, Lnl/ndsc/kitkatlauncher/b/q;-><init>(Lnl/ndsc/kitkatlauncher/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
