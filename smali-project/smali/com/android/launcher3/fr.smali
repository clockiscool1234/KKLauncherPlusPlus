.class public final Lcom/android/launcher3/fr;
.super Ljava/lang/Object;


# static fields
.field private static u:Ljava/util/HashSet;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Landroid/content/pm/PackageManager;

.field private f:Lcom/android/launcher3/ee;

.field private g:Lcom/android/launcher3/B;

.field private h:Lcom/android/launcher3/en;

.field private i:Lcom/android/launcher3/F;

.field private j:Lcom/android/launcher3/F;

.field private k:Lcom/android/launcher3/es;

.field private l:Lcom/android/launcher3/es;

.field private m:Lcom/android/launcher3/en;

.field private n:Ljava/lang/String;

.field private o:Lcom/android/launcher3/C;

.field private p:I

.field private q:Lcom/android/launcher3/bw;

.field private r:Lcom/android/launcher3/fv;

.field private s:Ljava/util/HashMap;

.field private t:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/fr;->u:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/B;

    invoke-direct {v0}, Lcom/android/launcher3/B;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->g:Lcom/android/launcher3/B;

    new-instance v0, Lcom/android/launcher3/en;

    invoke-direct {v0}, Lcom/android/launcher3/en;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->h:Lcom/android/launcher3/en;

    new-instance v0, Lcom/android/launcher3/F;

    invoke-direct {v0}, Lcom/android/launcher3/F;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->i:Lcom/android/launcher3/F;

    new-instance v0, Lcom/android/launcher3/F;

    invoke-direct {v0}, Lcom/android/launcher3/F;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->j:Lcom/android/launcher3/F;

    new-instance v0, Lcom/android/launcher3/es;

    invoke-direct {v0}, Lcom/android/launcher3/es;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->k:Lcom/android/launcher3/es;

    new-instance v0, Lcom/android/launcher3/es;

    invoke-direct {v0}, Lcom/android/launcher3/es;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->l:Lcom/android/launcher3/es;

    new-instance v0, Lcom/android/launcher3/en;

    invoke-direct {v0}, Lcom/android/launcher3/en;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->m:Lcom/android/launcher3/en;

    new-instance v0, Lcom/android/launcher3/C;

    invoke-direct {v0}, Lcom/android/launcher3/C;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->o:Lcom/android/launcher3/C;

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    iput-object p1, p0, Lcom/android/launcher3/fr;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/fr;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/fr;->e:Landroid/content/pm/PackageManager;

    iget v1, v1, Lcom/android/launcher3/al;->o:I

    iput v1, p0, Lcom/android/launcher3/fr;->p:I

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->e()Lcom/android/launcher3/bw;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/fr;->q:Lcom/android/launcher3/bw;

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->g()Lcom/android/launcher3/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/fr;->r:Lcom/android/launcher3/fv;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fr;->t:Ljava/util/ArrayList;

    const-string v0, "com.android.launcher3.prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android.incremental.version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/fr;->r:Lcom/android/launcher3/fv;

    invoke-virtual {v1}, Lcom/android/launcher3/fv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    const-string v3, "shortcut_and_widget_previews"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.incremental.version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fr;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "name = ? AND size = ?"

    iput-object v0, p0, Lcom/android/launcher3/fr;->n:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/fr;->r:Lcom/android/launcher3/fv;

    invoke-virtual {v0}, Lcom/android/launcher3/fv;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "shortcut_and_widget_previews"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "preview_bitmap"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/launcher3/fr;->n:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/fr;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/android/launcher3/fr;->o:Lcom/android/launcher3/C;

    invoke-virtual {v0}, Lcom/android/launcher3/C;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput v11, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    :try_start_1
    array-length v3, v1

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/launcher3/fr;->b()V

    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/android/launcher3/fr;->r:Lcom/android/launcher3/fv;

    new-instance v1, Lcom/android/launcher3/fu;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/fu;-><init>(Lcom/android/launcher3/fv;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v11, [Ljava/lang/Void;

    aput-object v9, v2, v10

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/fu;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object v0, v9

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/launcher3/fr;->u:Ljava/util/HashSet;

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/fr;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 5

    invoke-static {p1}, Lcom/android/launcher3/fr;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fr;->r:Lcom/android/launcher3/fv;

    invoke-virtual {v1}, Lcom/android/launcher3/fv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v3, "preview_bitmap"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "size"

    iget-object v3, p0, Lcom/android/launcher3/fr;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "shortcut_and_widget_previews"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/launcher3/fr;->b()V

    goto :goto_0
.end method

.method public static a(Lcom/android/launcher3/fv;Ljava/lang/String;)V
    .locals 5

    sget-object v1, Lcom/android/launcher3/fr;->u:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/fr;->u:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/launcher3/ft;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/ft;-><init>(Lcom/android/launcher3/fv;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/ft;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v0, p0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    const-string v0, "Widget:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Shortcut:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->c()V

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->g()Lcom/android/launcher3/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/fr;->r:Lcom/android/launcher3/fv;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/fr;->a:I

    iget-object v1, p0, Lcom/android/launcher3/fr;->f:Lcom/android/launcher3/ee;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/ee;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/ComponentName;IIIIIILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 13

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-gez p6, :cond_0

    const p6, 0x7fffffff

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_e

    iget-object v1, p0, Lcom/android/launcher3/fr;->e:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, p2, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "WidgetPreviewLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load widget preview drawable 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v10, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v10, :cond_5

    const/4 v1, 0x1

    move v9, v1

    :goto_1
    if-eqz v9, :cond_6

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move-object v8, v2

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p9, :cond_2

    const/4 v2, 0x0

    aput v5, p9, v2

    :cond_2
    move/from16 v0, p6

    if-le v5, v0, :cond_3

    move/from16 v0, p6

    int-to-float v1, v0

    int-to-float v2, v5

    div-float/2addr v1, v2

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    int-to-float v2, v5

    mul-float/2addr v2, v1

    float-to-int v5, v2

    int-to-float v2, v6

    mul-float/2addr v1, v2

    float-to-int v6, v1

    :cond_4
    if-nez p8, :cond_d

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v5

    div-int/lit8 v3, v1, 0x2

    if-eqz v9, :cond_b

    const/4 v4, 0x0

    move-object v1, v10

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/fr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    :goto_4
    return-object v2

    :cond_5
    const/4 v1, 0x0

    move v9, v1

    goto :goto_1

    :cond_6
    if-gtz p4, :cond_7

    const/16 p4, 0x1

    :cond_7
    if-gtz p5, :cond_8

    const/16 p5, 0x1

    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/fr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    mul-int v8, v4, p4

    mul-int v7, v6, p5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/fr;->j:Lcom/android/launcher3/F;

    invoke-virtual {v3}, Lcom/android/launcher3/F;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v8, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    sget-object v11, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/android/launcher3/fr;->p:I

    int-to-float v1, v1

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v11, p0, Lcom/android/launcher3/fr;->p:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v11

    int-to-float v1, v1

    div-float v1, v3, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/4 v1, 0x0

    int-to-float v3, v4

    :try_start_0
    iget v4, p0, Lcom/android/launcher3/fr;->p:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v6

    iget v6, p0, Lcom/android/launcher3/fr;->p:I

    int-to-float v6, v6

    mul-float/2addr v6, v11

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    if-lez p3, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/fr;->q:Lcom/android/launcher3/bw;

    move/from16 v0, p3

    invoke-virtual {v1, v5, v0}, Lcom/android/launcher3/bw;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    iget v5, p0, Lcom/android/launcher3/fr;->p:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher3/fr;->p:I

    int-to-float v6, v6

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/fr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    move v5, v8

    move-object v8, v2

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :cond_a
    move v6, v7

    move v5, v8

    move-object v8, v2

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/fr;->j:Lcom/android/launcher3/F;

    invoke-virtual {v1}, Lcom/android/launcher3/F;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/launcher3/fr;->k:Lcom/android/launcher3/es;

    invoke-virtual {v4}, Lcom/android/launcher3/es;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/launcher3/fr;->l:Lcom/android/launcher3/es;

    invoke-virtual {v7}, Lcom/android/launcher3/es;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v9, 0x0

    add-int/2addr v5, v3

    invoke-virtual {v7, v3, v9, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/launcher3/fr;->m:Lcom/android/launcher3/en;

    invoke-virtual {v3}, Lcom/android/launcher3/en;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Paint;

    if-nez v3, :cond_c

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v5, p0, Lcom/android/launcher3/fr;->m:Lcom/android/launcher3/en;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/en;->a(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v1, v8, v4, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v2, p8

    goto/16 :goto_3

    :cond_e
    move-object v10, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-static {p1}, Lcom/android/launcher3/fr;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    instance-of v0, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/launcher3/fr;->u:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/launcher3/fr;->u:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    monitor-exit v1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/launcher3/fr;->t:Ljava/util/ArrayList;

    monitor-enter v1

    :goto_3
    if-eqz v8, :cond_4

    :try_start_2
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/fr;->a:I

    if-ne v0, v2, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/fr;->b:I

    if-eq v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/fr;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_5
    if-eqz v8, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/fr;->j:Lcom/android/launcher3/F;

    invoke-virtual {v0}, Lcom/android/launcher3/F;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v8, :cond_7

    iget v0, p0, Lcom/android/launcher3/fr;->a:I

    iget v1, p0, Lcom/android/launcher3/fr;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_7
    invoke-direct {p0, v10, v8}, Lcom/android/launcher3/fr;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher3/fr;->t:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v8, v0

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/fr;->a:I

    if-ne v0, v1, :cond_a

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/fr;->b:I

    if-eq v0, v1, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improperly sized bitmap passed as argument"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    instance-of v0, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, p0, Lcom/android/launcher3/fr;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    const/4 v1, 0x0

    aget v1, v5, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/fr;->a(I)I

    move-result v6

    const/4 v1, 0x1

    aget v1, v5, v1

    iget v2, p0, Lcom/android/launcher3/fr;->b:I

    iget-object v3, p0, Lcom/android/launcher3/fr;->f:Lcom/android/launcher3/ee;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ee;->b(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v0, 0x0

    aget v4, v5, v0

    const/4 v0, 0x1

    aget v5, v5, v0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/fr;->a(Landroid/content/ComponentName;IIIIIILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    if-eq v0, v8, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generatePreview is not recycling the bitmap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/launcher3/fr;->a:I

    iget v9, p0, Lcom/android/launcher3/fr;->b:I

    iget-object v1, p0, Lcom/android/launcher3/fr;->g:Lcom/android/launcher3/B;

    invoke-virtual {v1}, Lcom/android/launcher3/B;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/fr;->i:Lcom/android/launcher3/F;

    invoke-virtual {v2}, Lcom/android/launcher3/F;->b()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/Canvas;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v7, :cond_d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v9, :cond_f

    :cond_d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/fr;->g:Lcom/android/launcher3/B;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/B;->a(Ljava/lang/Object;)V

    :goto_5
    iget-object v2, p0, Lcom/android/launcher3/fr;->q:Lcom/android/launcher3/bw;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/bw;->a(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/fr;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v2, p0, Lcom/android/launcher3/fr;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09002e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/fr;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int v5, v7, v2

    sub-int v4, v5, v4

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/fr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v7, :cond_e

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v9, :cond_10

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improperly sized bitmap passed as argument"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_10
    if-nez v8, :cond_13

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v7, v2

    :goto_6
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher3/fr;->h:Lcom/android/launcher3/en;

    invoke-virtual {v2}, Lcom/android/launcher3/en;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    if-nez v2, :cond_11

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/launcher3/fr;->h:Lcom/android/launcher3/en;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/en;->a(Ljava/lang/Object;)V

    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/fr;->p:I

    iget v5, p0, Lcom/android/launcher3/fr;->p:I

    move-object v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/fr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    move-object v0, v7

    goto/16 :goto_4

    :cond_12
    iget-object v1, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    new-instance v1, Lcom/android/launcher3/fs;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/fs;-><init>(Lcom/android/launcher3/fr;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/fs;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13
    move-object v7, v8

    goto :goto_6
.end method

.method public final a(IILcom/android/launcher3/ee;)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/fr;->a:I

    iput p2, p0, Lcom/android/launcher3/fr;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/fr;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/fr;->f:Lcom/android/launcher3/ee;

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 5

    invoke-static {p1}, Lcom/android/launcher3/fr;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-ne v0, p2, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/fr;->s:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/fr;->t:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/fr;->t:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap passed in doesn\'t match up"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
.end method
