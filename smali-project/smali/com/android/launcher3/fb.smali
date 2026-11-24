.class final Lcom/android/launcher3/fb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eS;

.field private final synthetic b:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;Landroid/widget/HorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fb;->a:Lcom/android/launcher3/eS;

    iput-object p2, p0, Lcom/android/launcher3/fb;->b:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/fb;->a:Lcom/android/launcher3/eS;

    const v1, 0x7f100057

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/fb;->b:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/launcher3/fb;->b:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
