.class public final Lcom/android/launcher3/dN;
.super Lcom/android/launcher3/fj;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/app/WallpaperInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/app/WallpaperInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/fj;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dN;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/launcher3/dN;->c:Landroid/app/WallpaperInfo;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/dN;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dN;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lcom/android/launcher3/dN;)Landroid/app/WallpaperInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dN;->c:Landroid/app/WallpaperInfo;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/eS;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

    iget-object v2, p0, Lcom/android/launcher3/dN;->c:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->f()V

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/eS;->a(Landroid/content/Intent;I)V

    return-void
.end method
