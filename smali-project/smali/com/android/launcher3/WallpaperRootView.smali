.class public Lcom/android/launcher3/WallpaperRootView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final a:Lcom/android/launcher3/eS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Lcom/android/launcher3/eS;

    iput-object p1, p0, Lcom/android/launcher3/WallpaperRootView;->a:Lcom/android/launcher3/eS;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    check-cast p1, Lcom/android/launcher3/eS;

    iput-object p1, p0, Lcom/android/launcher3/WallpaperRootView;->a:Lcom/android/launcher3/eS;

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/WallpaperRootView;->a:Lcom/android/launcher3/eS;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eS;->a(F)V

    const/4 v0, 0x1

    return v0
.end method
