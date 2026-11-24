.class final Lcom/android/launcher3/cI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/ViewGroup;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cG;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/cI;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher3/cI;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cI;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/cI;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
