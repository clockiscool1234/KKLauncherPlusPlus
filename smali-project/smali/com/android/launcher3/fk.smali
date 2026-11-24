.class final Lcom/android/launcher3/fk;
.super Landroid/graphics/drawable/LevelListDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/launcher3/fk;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/fk;->setLevel(I)Z

    return-void
.end method


# virtual methods
.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    return v0
.end method
