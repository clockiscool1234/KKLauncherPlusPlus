.class final Lcom/android/launcher3/eZ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eS;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eZ;->a:Lcom/android/launcher3/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/eZ;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->l(Lcom/android/launcher3/eS;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eZ;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->l(Lcom/android/launcher3/eS;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/fj;

    iget-object v1, p0, Lcom/android/launcher3/eZ;->a:Lcom/android/launcher3/eS;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/fj;->b(Lcom/android/launcher3/eS;)V

    :cond_0
    return-void
.end method
