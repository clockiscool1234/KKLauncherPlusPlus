.class public final Lcom/android/launcher3/fo;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/android/launcher3/fp;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:Lcom/android/launcher3/dT;

.field private synthetic e:Lcom/android/launcher3/fl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fl;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/fo;-><init>(Lcom/android/launcher3/fl;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/fl;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/launcher3/fo;->e:Lcom/android/launcher3/fl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/launcher3/fo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/fo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/fo;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/fo;->b:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/launcher3/fo;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/launcher3/fo;->b:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1, v4, v1, v4}, Lcom/android/launcher3/fo;->setPadding(IIII)V

    new-instance v1, Lcom/android/launcher3/fp;

    invoke-virtual {p0}, Lcom/android/launcher3/fo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/fp;-><init>(Lcom/android/launcher3/fo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/fo;->a:Lcom/android/launcher3/fp;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/android/launcher3/fo;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/fo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/launcher3/fo;->a:Lcom/android/launcher3/fp;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/fo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/fo;)Lcom/android/launcher3/dT;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/fo;->d:Lcom/android/launcher3/dT;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/fo;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 3

    iput p1, p0, Lcom/android/launcher3/fo;->c:I

    iget-object v0, p0, Lcom/android/launcher3/fo;->e:Lcom/android/launcher3/fl;

    invoke-static {v0}, Lcom/android/launcher3/fl;->a(Lcom/android/launcher3/fl;)Lcom/android/launcher3/dQ;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/fo;->c:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dQ;->a(I)Lcom/android/launcher3/dT;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/fo;->d:Lcom/android/launcher3/dT;

    iget-object v0, p0, Lcom/android/launcher3/fo;->d:Lcom/android/launcher3/dT;

    if-nez v0, :cond_0

    const-string v0, "WeightWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing info for pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/fo;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/fo;->e:Lcom/android/launcher3/fl;

    invoke-virtual {v0}, Lcom/android/launcher3/fl;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 9

    iget-object v2, p0, Lcom/android/launcher3/fo;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/fo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/launcher3/fo;->c:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v0, v3, :cond_3

    const-string v0, "/A"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/fo;->d:Lcom/android/launcher3/dT;

    invoke-virtual {v0}, Lcom/android/launcher3/dT;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v5, 0x15180

    div-long v5, v0, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const-wide/32 v7, 0x15180

    mul-long/2addr v7, v5

    sub-long/2addr v0, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v5, 0xe10

    div-long v5, v0, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v5

    sub-long/2addr v0, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/16 v5, 0x3c

    div-long v5, v0, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v5

    sub-long/2addr v0, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fo;->d:Lcom/android/launcher3/dT;

    iget-wide v3, v1, Lcom/android/launcher3/dT;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fo;->d:Lcom/android/launcher3/dT;

    iget-wide v3, v1, Lcom/android/launcher3/dT;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/fo;->a:Lcom/android/launcher3/fp;

    invoke-virtual {v0}, Lcom/android/launcher3/fp;->invalidate()V

    return-void

    :cond_3
    const-string v0, "/S"

    goto/16 :goto_0
.end method
