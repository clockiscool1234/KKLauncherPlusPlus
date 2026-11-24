.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;


# static fields
.field static final a:Landroid/net/Uri;

.field private static c:Z


# instance fields
.field private b:Lcom/android/launcher3/dB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://nl.ndsc.kitkatlauncher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/dB;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/launcher3/LauncherProvider;->b(Lcom/android/launcher3/dB;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/dF;->a(JZ)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dC;

    invoke-direct {v1, v0, v2, v2}, Lcom/android/launcher3/dC;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/launcher3/dC;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/launcher3/dC;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "notify"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/LauncherProvider;->c:Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    const/4 v0, 0x0

    return v0
.end method

.method private static b(Lcom/android/launcher3/dB;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to insert null values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/dB;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "com.android.launcher3.prefs"

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher.LauncherProvider"

    const-string v2, "loading default workspace"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    const-string v2, "DEFAULT_WORKSPACE_RESOURCE_ID"

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f060001

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EMPTY_DATABASE_CREATED"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const-string v2, "DEFAULT_WORKSPACE_RESOURCE_ID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v3}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/launcher3/dB;->a(Lcom/android/launcher3/dB;Landroid/database/sqlite/SQLiteDatabase;I)I

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-static {v0}, Lcom/android/launcher3/dB;->a(Lcom/android/launcher3/dB;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/high16 v0, 0x7f060000

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dB;->a(J)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0}, Lcom/android/launcher3/dB;->a()Z

    move-result v0

    return v0
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0}, Lcom/android/launcher3/dB;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dB;->b(J)V

    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    const/4 v0, 0x0

    new-instance v2, Lcom/android/launcher3/dC;

    invoke-direct {v2, p1}, Lcom/android/launcher3/dC;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v1}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v4, p2

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->a(Landroid/net/Uri;)V

    array-length v0, p2

    :goto_1
    return v0

    :cond_0
    :try_start_1
    aget-object v5, p2, v1

    invoke-static {v5}, Lcom/android/launcher3/LauncherProvider;->a(Landroid/content/ContentValues;)V

    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    iget-object v6, v2, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, p2, v1

    invoke-static {v5, v3, v6, v7, v8}, Lcom/android/launcher3/LauncherProvider;->b(Lcom/android/launcher3/dB;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0}, Lcom/android/launcher3/dB;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized d()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "com.android.launcher3.prefs"

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/LauncherProvider;->c:Z

    if-nez v3, :cond_0

    :goto_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher3/LauncherProvider;->c:Z

    const-string v3, "UPGRADED_FROM_OLD_DATABASE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "UPGRADED_FROM_OLD_DATABASE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    new-instance v0, Lcom/android/launcher3/dC;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/dC;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v1}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/dC;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/dC;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->a(Landroid/net/Uri;)V

    :cond_0
    return v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v1}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/dF;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dB;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v0}, Lcom/android/launcher3/dB;->close()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_0
    new-instance v0, Lcom/android/launcher3/dB;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/dB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/android/launcher3/dC;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher3/dC;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/dC;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.dir/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/android/launcher3/dC;

    invoke-direct {v1, p1}, Lcom/android/launcher3/dC;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v2}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->a(Landroid/content/ContentValues;)V

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    iget-object v1, v1, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    invoke-static {v3, v2, v1, v0, p2}, Lcom/android/launcher3/LauncherProvider;->b(Lcom/android/launcher3/dB;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dB;

    invoke-direct {v1, v0}, Lcom/android/launcher3/dB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-static {p0}, Lcom/android/launcher3/cB;->a(Lcom/android/launcher3/LauncherProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    new-instance v2, Lcom/android/launcher3/dC;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/launcher3/dC;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v1, v2, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v1}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v2, Lcom/android/launcher3/dC;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/launcher3/dC;->c:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    new-instance v0, Lcom/android/launcher3/dC;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/dC;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->a(Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->b:Lcom/android/launcher3/dB;

    invoke-virtual {v1}, Lcom/android/launcher3/dB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/dC;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/dC;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/dC;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->a(Landroid/net/Uri;)V

    :cond_0
    return v0
.end method
