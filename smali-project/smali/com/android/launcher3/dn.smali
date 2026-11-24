.class final Lcom/android/launcher3/dn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dg;

.field private final synthetic b:Lcom/android/launcher3/de;

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dn;->a:Lcom/android/launcher3/dg;

    iput-object p2, p0, Lcom/android/launcher3/dn;->b:Lcom/android/launcher3/de;

    iput-object p3, p0, Lcom/android/launcher3/dn;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dn;->a:Lcom/android/launcher3/dg;

    iget-object v1, p0, Lcom/android/launcher3/dn;->b:Lcom/android/launcher3/de;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dg;->a(Lcom/android/launcher3/de;)Lcom/android/launcher3/de;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dn;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/de;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
