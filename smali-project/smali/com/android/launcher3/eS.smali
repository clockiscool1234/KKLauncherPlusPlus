.class public Lcom/android/launcher3/eS;
.super Lcom/android/launcher3/WallpaperCropActivity;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/view/View;

.field private h:Landroid/view/ActionMode$Callback;

.field private i:Landroid/view/ActionMode;

.field private j:Landroid/view/View$OnLongClickListener;

.field private k:Ljava/util/ArrayList;

.field private l:Lcom/android/launcher3/et;

.field private m:Landroid/app/WallpaperInfo;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/WallpaperCropActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/eS;->k:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/eS;->b(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/res/Resources;)Landroid/graphics/Point;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/eS;->b(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_1

    const v0, 0x7f040029

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/launcher3/eS;->a(Landroid/widget/FrameLayout;)V

    const v0, 0x7f10005b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/eS;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->c:Landroid/view/View;

    return-object v0
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x18

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    aget-object v4, v2, v0

    const-string v5, "drawable"

    invoke-virtual {p0, v4, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_small"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "drawable"

    invoke-virtual {p0, v4, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    new-instance v6, Lcom/android/launcher3/fg;

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v6, p0, v5, v4}, Lcom/android/launcher3/fg;-><init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "Launcher.WallpaperPickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t find wallpaper "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/eS;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040029

    iget-object v2, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {v6}, Lcom/android/launcher3/eS;->a(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const v0, 0x7f10005b

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/eS;->b(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v4

    new-instance v0, Lcom/android/launcher3/fc;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/fc;-><init>(Lcom/android/launcher3/eS;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/fc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/launcher3/fh;

    invoke-direct {v0, p1}, Lcom/android/launcher3/fh;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/fh;->a(Landroid/view/View;)V

    invoke-direct {p0, v6}, Lcom/android/launcher3/eS;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/eS;->i()V

    iget-object v0, p0, Lcom/android/launcher3/eS;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eS;->e:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v6}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->j:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0, p1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/fj;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/fj;->a(Landroid/view/View;)V

    if-eqz p3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher3/eS;->a(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/eS;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method static a(Landroid/widget/FrameLayout;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v0, Lcom/android/launcher3/fk;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/fk;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/eS;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eS;->i:Landroid/view/ActionMode;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/eS;Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/eS;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eS;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eS;->b:Landroid/view/View;

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/eS;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/eS;->n:I

    const v0, 0x7f0a0004

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/eS;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/eS;Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/eS;->a(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/eS;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/eS;->d:Z

    return-void
.end method

.method private a(Ljava/io/File;Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/eS;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.WallpaperPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while writing bitmap to file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_1

    new-instance v1, Lcom/android/launcher3/eQ;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p6

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/eQ;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/eQ;->a()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_3

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_1
    if-eqz p3, :cond_2

    new-instance v2, Lcom/android/launcher3/eQ;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p3

    move/from16 v5, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/eQ;-><init>([BLandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/android/launcher3/eQ;

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v18}, Lcom/android/launcher3/eQ;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    move-object v1, v8

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, p6

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v4, v5

    const/4 v5, 0x1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v4, v2

    const/4 v2, 0x0

    aget v2, v4, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    float-to-int v3, v3

    move/from16 v0, p7

    invoke-static {v2, v3, v6, v7, v0}, Lcom/android/launcher3/WallpaperCropActivity;->a(IIIIZ)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/eQ;->a(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/android/launcher3/eQ;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher3/eQ;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/res/Resources;)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    const/high16 v1, 0x7f090000

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method static synthetic b(Lcom/android/launcher3/eS;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/android/launcher3/eS;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/eS;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/android/launcher3/eS;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->i:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic e(Lcom/android/launcher3/eS;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->j:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/android/launcher3/eS;)Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->h:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic g(Lcom/android/launcher3/eS;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .locals 3

    const v0, 0x7f100056

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/fb;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/fb;-><init>(Lcom/android/launcher3/eS;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    const-string v4, "datetaken"

    aput-object v4, v2, v7

    const-string v5, "datetaken DESC LIMIT 1"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v4, v1

    invoke-static {v2, v4, v5, v7, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method static synthetic h(Lcom/android/launcher3/eS;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/eS;->g()V

    return-void
.end method

.method private i()V
    .locals 17

    const v1, 0x7f100057

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    const/4 v2, 0x2

    if-lt v9, v2, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v10, :cond_1

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/fj;

    if-eqz v3, :cond_2

    add-int/lit8 v2, v4, 0x1

    move v3, v2

    move-object v5, v1

    move v2, v4

    :goto_2
    move v8, v2

    :goto_3
    if-lt v8, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move/from16 v16, v5

    move-object v5, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/fj;

    invoke-virtual {v2}, Lcom/android/launcher3/fj;->b()Z

    move-result v12

    if-eqz v12, :cond_5

    if-nez v9, :cond_4

    add-int/lit8 v2, v7, 0x1

    move/from16 v16, v6

    move v6, v2

    move/from16 v2, v16

    :goto_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v6

    move v6, v2

    goto :goto_3

    :cond_4
    const v12, 0x7f0a0003

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/launcher3/fj;->a(Ljava/lang/CharSequence;)V

    :cond_5
    move v2, v6

    move v6, v7

    goto :goto_4
.end method

.method static synthetic i(Lcom/android/launcher3/eS;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/eS;->i()V

    return-void
.end method

.method static synthetic j(Lcom/android/launcher3/eS;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/eS;->n:I

    return v0
.end method

.method private j()Ljava/util/ArrayList;
    .locals 10

    const/4 v2, 0x0

    const/4 v7, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x18

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/android/launcher3/eS;->k()Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v5, v0}, Lcom/android/launcher3/eS;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v8, v0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v0, "default_wallpaper"

    const-string v1, "drawable"

    const-string v3, "android"

    invoke-virtual {v4, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v9, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "default_thumb2.jpg"

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/launcher3/fg;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v4, v5, v0}, Lcom/android/launcher3/fg;-><init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v8, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v8

    :catch_0
    move-exception v0

    :cond_2
    move-object v8, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/eS;->b(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {v1, v5}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/res/Resources;I)I

    move-result v6

    move-object v1, p0

    move-object v3, v2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/eS;->b(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v9, v1}, Lcom/android/launcher3/eS;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v7

    goto :goto_1
.end method

.method private k()Landroid/util/Pair;
    .locals 3

    const/high16 v1, 0x7f0d0000

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    const/high16 v2, 0x7f0d0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/android/launcher3/eS;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic l(Lcom/android/launcher3/eS;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/eS;->g:Landroid/view/View;

    float-to-int v1, p1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/eS;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected final b()V
    .locals 10

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->setContentView(I)V

    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CropView;

    iput-object v0, p0, Lcom/android/launcher3/eS;->a:Lcom/android/launcher3/CropView;

    const v0, 0x7f100055

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/eS;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/eS;->a:Lcom/android/launcher3/CropView;

    new-instance v1, Lcom/android/launcher3/eT;

    invoke-direct {v1, p0}, Lcom/android/launcher3/eT;-><init>(Lcom/android/launcher3/eS;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CropView;->a(Lcom/android/launcher3/Z;)V

    new-instance v0, Lcom/android/launcher3/eV;

    invoke-direct {v0, p0}, Lcom/android/launcher3/eV;-><init>(Lcom/android/launcher3/eS;)V

    iput-object v0, p0, Lcom/android/launcher3/eS;->e:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/eW;

    invoke-direct {v0, p0}, Lcom/android/launcher3/eW;-><init>(Lcom/android/launcher3/eS;)V

    iput-object v0, p0, Lcom/android/launcher3/eS;->j:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/android/launcher3/eS;->j()Ljava/util/ArrayList;

    move-result-object v1

    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/launcher3/fd;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/fd;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0, v7}, Lcom/android/launcher3/eS;->a(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    new-instance v0, Lcom/android/launcher3/et;

    invoke-direct {v0, p0}, Lcom/android/launcher3/et;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/launcher3/eS;->l:Lcom/android/launcher3/et;

    iget-object v0, p0, Lcom/android/launcher3/eS;->l:Lcom/android/launcher3/et;

    invoke-virtual {v0}, Lcom/android/launcher3/et;->a()V

    iget-object v0, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/eS;->l:Lcom/android/launcher3/et;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/eS;->a(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    const v0, 0x7f100059

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/launcher3/dK;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dK;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/launcher3/eX;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/eX;-><init>(Lcom/android/launcher3/eS;Landroid/widget/LinearLayout;Lcom/android/launcher3/dK;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dK;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/launcher3/eE;

    invoke-direct {v1, p0}, Lcom/android/launcher3/eE;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v7}, Lcom/android/launcher3/eS;->a(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    const v0, 0x7f100057

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040028

    invoke-virtual {v1, v2, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/launcher3/eS;->a(Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/launcher3/eS;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f10005b

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher3/eS;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v5, 0x7f070000

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    new-instance v0, Lcom/android/launcher3/ff;

    invoke-direct {v0}, Lcom/android/launcher3/ff;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ff;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/eS;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "default_thumb2.jpg"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/launcher3/fe;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v2}, Lcom/android/launcher3/fe;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/android/launcher3/fe;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v6, v2, v4}, Lcom/android/launcher3/eS;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/launcher3/eS;->a(Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/launcher3/eS;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/fe;->a(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/eS;->a:Lcom/android/launcher3/CropView;

    new-instance v1, Lcom/android/launcher3/eY;

    invoke-direct {v1, p0}, Lcom/android/launcher3/eY;-><init>(Lcom/android/launcher3/eS;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CropView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/eS;->i()V

    invoke-direct {p0}, Lcom/android/launcher3/eS;->g()V

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/launcher3/eS;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/eZ;

    invoke-direct {v1, p0}, Lcom/android/launcher3/eZ;-><init>(Lcom/android/launcher3/eS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x7f100000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/eS;->c:Landroid/view/View;

    new-instance v0, Lcom/android/launcher3/fa;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fa;-><init>(Lcom/android/launcher3/eS;)V

    iput-object v0, p0, Lcom/android/launcher3/eS;->h:Landroid/view/ActionMode$Callback;

    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "default_thumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/eS;->b(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v9

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget v1, v9, Landroid/graphics/Point;->x:I

    iget v2, v9, Landroid/graphics/Point;->y:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, v9, Landroid/graphics/Point;->x:I

    iget v2, v9, Landroid/graphics/Point;->y:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, v9, Landroid/graphics/Point;->x:I

    iget v5, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    if-eqz v1, :cond_4

    invoke-direct {p0, v8, v1}, Lcom/android/launcher3/eS;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    move-object v1, v6

    goto/16 :goto_1

    :cond_4
    move v0, v7

    goto/16 :goto_0

    :cond_5
    move-object v1, v6

    goto :goto_2
.end method

.method public final d()Lcom/android/launcher3/CropView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->a:Lcom/android/launcher3/CropView;

    return-object v0
.end method

.method public final e()Lcom/android/launcher3/et;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eS;->l:Lcom/android/launcher3/et;

    return-object v0
.end method

.method public final f()V
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/eS;->m:Landroid/app/WallpaperInfo;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/eS;->a(Landroid/net/Uri;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/eS;->m:Landroid/app/WallpaperInfo;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/eS;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/eS;->finish()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "TEMP_WALLPAPER_TILES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SELECTED_INDEX"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/eS;->n:I

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/eS;->a(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TEMP_WALLPAPER_TILES"

    iget-object v1, p0, Lcom/android/launcher3/eS;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "SELECTED_INDEX"

    iget v1, p0, Lcom/android/launcher3/eS;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-super {p0}, Lcom/android/launcher3/WallpaperCropActivity;->onStop()V

    const v0, 0x7f100055

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/eS;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/eS;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eS;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/eS;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
