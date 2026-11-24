.class public Lcom/android/launcher3/eR;
.super Ljava/lang/Object;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/eS;


# direct methods
.method constructor <init>(Lcom/android/launcher3/fh;Lcom/android/launcher3/eS;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/eR;->a:Lcom/android/launcher3/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/eR;->a:Lcom/android/launcher3/eS;

    invoke-virtual {v0}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/eS;->a(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v7, 0x1

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    move v6, v5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/eS;->a(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/eR;->a:Lcom/android/launcher3/eS;

    invoke-virtual {v1}, Lcom/android/launcher3/eS;->e()Lcom/android/launcher3/et;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/et;->a(Landroid/graphics/Bitmap;[B)V

    return-void
.end method
