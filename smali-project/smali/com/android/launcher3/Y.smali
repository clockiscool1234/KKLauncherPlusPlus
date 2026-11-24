.class final Lcom/android/launcher3/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/CropView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CropView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Y;->a:Lcom/android/launcher3/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Y;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v0}, Lcom/android/launcher3/CropView;->d()V

    iget-object v0, p0, Lcom/android/launcher3/Y;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v0}, Lcom/android/launcher3/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
