.class final Lcom/android/launcher3/dL;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private synthetic c:Lcom/android/launcher3/dK;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dK;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/dL;->c:Lcom/android/launcher3/dK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/dL;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dL;->b:I

    return-void
.end method

.method private varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dL;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    aget-object v0, p1, v7

    new-instance v1, Lcom/android/launcher3/dM;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/dM;-><init>(Lcom/android/launcher3/dL;Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v8, [Lcom/android/launcher3/dN;

    aput-object v9, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dL;->publishProgress([Ljava/lang/Object;)V

    return-object v9

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :try_start_0
    new-instance v1, Landroid/app/WallpaperInfo;

    iget-object v4, p0, Lcom/android/launcher3/dL;->a:Landroid/content/Context;

    invoke-direct {v1, v4, v0}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v1, v2}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.WallpaperService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Lcom/android/launcher3/dN;

    invoke-direct {v4, v0, v1}, Lcom/android/launcher3/dN;-><init>(Landroid/graphics/drawable/Drawable;Landroid/app/WallpaperInfo;)V

    new-array v0, v8, [Lcom/android/launcher3/dN;

    aput-object v4, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dL;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "LiveWallpaperListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipping wallpaper "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "LiveWallpaperListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipping wallpaper "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dL;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 5

    check-cast p1, [Lcom/android/launcher3/dN;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    aget-object v2, p1, v0

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dL;->c:Lcom/android/launcher3/dK;

    invoke-virtual {v0}, Lcom/android/launcher3/dK;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/android/launcher3/dN;->a(Lcom/android/launcher3/dN;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/launcher3/dN;->a(Lcom/android/launcher3/dN;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_2
    iget v3, p0, Lcom/android/launcher3/dL;->b:I

    iget-object v4, p0, Lcom/android/launcher3/dL;->c:Lcom/android/launcher3/dK;

    invoke-static {v4}, Lcom/android/launcher3/dK;->a(Lcom/android/launcher3/dK;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/dL;->c:Lcom/android/launcher3/dK;

    invoke-static {v3}, Lcom/android/launcher3/dK;->a(Lcom/android/launcher3/dK;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/dL;->b:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget v2, p0, Lcom/android/launcher3/dL;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher3/dL;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/dL;->c:Lcom/android/launcher3/dK;

    invoke-static {v3}, Lcom/android/launcher3/dK;->a(Lcom/android/launcher3/dK;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
