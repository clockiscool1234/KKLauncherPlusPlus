.class final Lcom/android/launcher3/eJ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/WallpaperCropActivity;

.field private final synthetic b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WallpaperCropActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eJ;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iput-object p2, p0, Lcom/android/launcher3/eJ;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/eJ;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iget-object v1, p0, Lcom/android/launcher3/eJ;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/net/Uri;Lcom/android/launcher3/eR;Z)V

    return-void
.end method
