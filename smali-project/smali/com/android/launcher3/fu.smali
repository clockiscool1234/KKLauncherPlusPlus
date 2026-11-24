.class final Lcom/android/launcher3/fu;
.super Landroid/os/AsyncTask;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/fv;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/fv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fu;->a:Lcom/android/launcher3/fv;

    iput-object p2, p0, Lcom/android/launcher3/fu;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/fu;->a:Lcom/android/launcher3/fv;

    invoke-virtual {v0}, Lcom/android/launcher3/fv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "shortcut_and_widget_previews"

    const-string v2, "name = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/fu;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/fu;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
