.class public final La/a/a/d/a;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, La/a/a/d/c;

    invoke-direct {v0}, La/a/a/d/c;-><init>()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, La/a/a/d/b;

    invoke-direct {v0}, La/a/a/d/b;-><init>()V

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
