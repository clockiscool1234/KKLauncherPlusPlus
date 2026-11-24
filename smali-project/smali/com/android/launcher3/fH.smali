.class final Lcom/android/launcher3/fH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/df;


# instance fields
.field private final synthetic a:Ljava/util/HashSet;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/fH;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/fH;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/launcher3/fH;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/fH;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/bD;Lcom/android/launcher3/bD;Landroid/content/ComponentName;)Z
    .locals 3

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/android/launcher3/bk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/fH;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/launcher3/bk;

    iget-object v0, p0, Lcom/android/launcher3/fH;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fH;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    check-cast p2, Lcom/android/launcher3/ey;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/fH;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/fH;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/fH;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/fH;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
