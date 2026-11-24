.class final Lcom/android/launcher3/da;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/ArrayList;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:[Ljava/lang/StackTraceElement;

.field private final synthetic d:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/da;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher3/da;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/da;->c:[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Lcom/android/launcher3/da;->d:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/da;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/da;->d:Landroid/content/ContentResolver;

    const-string v1, "nl.ndsc.kitkatlauncher.settings"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/da;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iget-wide v6, v0, Lcom/android/launcher3/bD;->f:J

    invoke-static {v6, v7, v3}, Lcom/android/launcher3/dF;->a(JZ)Landroid/net/Uri;

    move-result-object v8

    iget-object v1, p0, Lcom/android/launcher3/da;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/da;->c:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v6, v7, v1}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/bD;J[Ljava/lang/StackTraceElement;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
