.class public final Lcom/android/launcher3/ev;
.super Lcom/android/launcher3/fj;


# instance fields
.field private a:I

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/fj;-><init>()V

    iput p1, p0, Lcom/android/launcher3/ev;->a:I

    iput-object p2, p0, Lcom/android/launcher3/ev;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/ev;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ev;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/eS;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->e()Lcom/android/launcher3/et;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ev;->a:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/et;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/android/b/d;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/b/d;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/eS;->a(Lcom/android/b/b;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/launcher3/eS;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->e()Lcom/android/launcher3/et;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ev;->a:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/et;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/eS;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/android/launcher3/eS;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->e()Lcom/android/launcher3/et;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ev;->a:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/et;->b(I)V

    return-void
.end method
