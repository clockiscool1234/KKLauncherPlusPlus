.class final Lcom/android/launcher3/R;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field a:I

.field private synthetic b:Lcom/android/launcher3/Q;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Q;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/R;->b:Lcom/android/launcher3/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/R;->a:I

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/R;->b:Lcom/android/launcher3/Q;

    iget-object v0, v0, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    iget-object v0, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/K;

    iget-object v1, p0, Lcom/android/launcher3/R;->b:Lcom/android/launcher3/Q;

    iget-object v1, v1, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    iget-object v1, v1, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    iget v2, p0, Lcom/android/launcher3/R;->a:I

    packed-switch v2, :pswitch_data_0

    iget v0, v0, Lcom/android/launcher3/K;->b:I

    iget v1, v1, Lcom/android/launcher3/K;->b:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget v2, v1, Lcom/android/launcher3/K;->a:I

    iget v1, v1, Lcom/android/launcher3/K;->c:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/K;->a:I

    iget v0, v0, Lcom/android/launcher3/K;->c:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_0

    :pswitch_1
    iget v0, v0, Lcom/android/launcher3/K;->a:I

    iget v1, v1, Lcom/android/launcher3/K;->a:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, v1, Lcom/android/launcher3/K;->b:I

    iget v1, v1, Lcom/android/launcher3/K;->d:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/K;->b:I

    iget v0, v0, Lcom/android/launcher3/K;->d:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
