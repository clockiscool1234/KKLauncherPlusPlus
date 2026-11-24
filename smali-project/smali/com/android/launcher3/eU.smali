.class final Lcom/android/launcher3/eU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eT;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eU;->a:Lcom/android/launcher3/eT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/eU;->a:Lcom/android/launcher3/eT;

    iget-object v0, v0, Lcom/android/launcher3/eT;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->b(Lcom/android/launcher3/eS;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
