.class final Lcom/android/launcher3/bT;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final synthetic a:Ljava/lang/Runnable;

.field private final synthetic b:Lcom/android/launcher3/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;Lcom/android/launcher3/AppsCustomizeTabHost;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/bT;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/bT;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/bT;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/launcher3/bT;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
