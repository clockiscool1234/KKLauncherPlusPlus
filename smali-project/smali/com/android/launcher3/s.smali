.class final Lcom/android/launcher3/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizeTabHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/s;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/s;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/android/launcher3/s;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->b(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
