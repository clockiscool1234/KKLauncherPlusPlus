.class public final La/a/a/d/d;
.super Ljava/lang/Object;


# static fields
.field private static a:La/a/a/d/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, La/a/a/d/k;

    invoke-direct {v0}, La/a/a/d/k;-><init>()V

    sput-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, La/a/a/d/j;

    invoke-direct {v0}, La/a/a/d/j;-><init>()V

    sput-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    new-instance v0, La/a/a/d/i;

    invoke-direct {v0}, La/a/a/d/i;-><init>()V

    sput-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    goto :goto_0

    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    new-instance v0, La/a/a/d/h;

    invoke-direct {v0}, La/a/a/d/h;-><init>()V

    sput-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    new-instance v0, La/a/a/d/g;

    invoke-direct {v0}, La/a/a/d/g;-><init>()V

    sput-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    goto :goto_0

    :cond_4
    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    new-instance v0, La/a/a/d/f;

    invoke-direct {v0}, La/a/a/d/f;-><init>()V

    sput-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    goto :goto_0

    :cond_5
    new-instance v0, La/a/a/d/l;

    invoke-direct {v0}, La/a/a/d/l;-><init>()V

    sput-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    invoke-virtual {v0, p0, p1}, La/a/a/d/l;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, La/a/a/d/d;->a:La/a/a/d/l;

    invoke-virtual {v0, p0, p1, p2, p3}, La/a/a/d/l;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method
