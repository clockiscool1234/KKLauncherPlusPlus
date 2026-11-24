.class final Lcom/android/launcher3/do;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dg;

.field private final synthetic b:Lcom/android/launcher3/de;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:I

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/do;->a:Lcom/android/launcher3/dg;

    iput-object p2, p0, Lcom/android/launcher3/do;->b:Lcom/android/launcher3/de;

    iput-object p3, p0, Lcom/android/launcher3/do;->c:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/launcher3/do;->d:I

    iput p5, p0, Lcom/android/launcher3/do;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/do;->a:Lcom/android/launcher3/dg;

    iget-object v1, p0, Lcom/android/launcher3/do;->b:Lcom/android/launcher3/de;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dg;->a(Lcom/android/launcher3/de;)Lcom/android/launcher3/de;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/do;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/do;->d:I

    iget v3, p0, Lcom/android/launcher3/do;->d:I

    iget v4, p0, Lcom/android/launcher3/do;->e:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/launcher3/de;->a(Ljava/util/ArrayList;IIZ)V

    :cond_0
    return-void
.end method
