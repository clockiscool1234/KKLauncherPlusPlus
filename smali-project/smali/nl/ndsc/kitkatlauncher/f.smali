.class public final Lnl/ndsc/kitkatlauncher/f;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/ContentResolver;

.field final b:Landroid/net/Uri;

.field final c:Landroid/net/Uri;

.field private d:Landroid/content/Context;

.field private e:Lcom/android/launcher3/dB;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/dG;->a:Landroid/net/Uri;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/f;->b:Landroid/net/Uri;

    sget-object v0, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/f;->c:Landroid/net/Uri;

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/f;->d:Landroid/content/Context;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/f;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-array v7, p1, [Landroid/content/ContentValues;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/f;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/f;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v0, v6

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-lt v6, p1, :cond_2

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/f;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/f;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    iget-object v3, p0, Lnl/ndsc/kitkatlauncher/f;->e:Lcom/android/launcher3/dB;

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/launcher3/dB;

    iget-object v4, p0, Lnl/ndsc/kitkatlauncher/f;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/launcher3/dB;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnl/ndsc/kitkatlauncher/f;->e:Lcom/android/launcher3/dB;

    :cond_3
    iget-object v3, p0, Lnl/ndsc/kitkatlauncher/f;->e:Lcom/android/launcher3/dB;

    invoke-virtual {v3}, Lcom/android/launcher3/dB;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "screenRank"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    goto :goto_1
.end method
