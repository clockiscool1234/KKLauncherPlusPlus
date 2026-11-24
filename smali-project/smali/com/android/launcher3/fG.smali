.class final Lcom/android/launcher3/fG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/df;


# instance fields
.field private final synthetic a:Ljava/util/HashSet;

.field private final synthetic b:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/fG;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/fG;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/bD;Lcom/android/launcher3/bD;Landroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/fG;->a:Ljava/util/HashSet;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fG;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
