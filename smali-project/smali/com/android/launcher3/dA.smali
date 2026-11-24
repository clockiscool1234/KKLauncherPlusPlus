.class Lcom/android/launcher3/dA;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/android/launcher3/dB;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dB;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dA;->a:Lcom/android/launcher3/dB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)V
    .locals 4

    const-string v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dA;->a:Lcom/android/launcher3/dB;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/dB;->a(Lcom/android/launcher3/dB;J)J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "screen"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
