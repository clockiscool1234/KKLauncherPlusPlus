.class public final La/a/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:La/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    new-instance v0, La/a/a/b/d;

    invoke-direct {v0}, La/a/a/b/d;-><init>()V

    sput-object v0, La/a/a/b/a;->a:La/a/a/b/b;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, La/a/a/b/c;

    invoke-direct {v0}, La/a/a/b/c;-><init>()V

    sput-object v0, La/a/a/b/a;->a:La/a/a/b/b;

    goto :goto_0

    :cond_1
    new-instance v0, La/a/a/b/b;

    invoke-direct {v0}, La/a/a/b/b;-><init>()V

    sput-object v0, La/a/a/b/a;->a:La/a/a/b/b;

    goto :goto_0
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    sget-object v0, La/a/a/b/a;->a:La/a/a/b/b;

    invoke-virtual {v0, p0}, La/a/a/b/b;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
