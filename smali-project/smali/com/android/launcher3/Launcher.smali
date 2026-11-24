.class public Lcom/android/launcher3/Launcher;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/de;


# static fields
.field private static Q:Z

.field private static X:Lcom/android/launcher3/cs;

.field private static Y:Ljava/util/HashMap;

.field private static ad:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static ae:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static af:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static ai:Ljava/util/ArrayList;

.field private static ak:Ljava/util/ArrayList;

.field private static ar:Ljava/util/ArrayList;

.field private static as:Z

.field private static final c:Ljava/lang/Object;

.field private static final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static f:I

.field private static g:I

.field private static h:I


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Lcom/android/launcher3/SearchDropTargetBar;

.field private C:Lcom/android/launcher3/AppsCustomizeTabHost;

.field private D:Lcom/android/launcher3/AppsCustomizePagedView;

.field private E:Z

.field private F:Landroid/view/View;

.field private G:Landroid/os/Bundle;

.field private H:Lcom/android/launcher3/cv;

.field private I:Landroid/text/SpannableStringBuilder;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Ljava/util/ArrayList;

.field private P:Ljava/util/ArrayList;

.field private R:Lcom/android/launcher3/cO;

.field private S:Lcom/android/launcher3/bw;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private Z:Landroid/view/View$OnTouchListener;

.field private a:Lcom/android/launcher3/cv;

.field private aa:J

.field private ab:J

.field private ac:Ljava/util/HashMap;

.field private ag:Landroid/graphics/drawable/Drawable;

.field private final ah:Ljava/util/ArrayList;

.field private aj:Landroid/content/SharedPreferences;

.field private al:Landroid/widget/ImageView;

.field private am:Landroid/graphics/Bitmap;

.field private an:Landroid/graphics/Canvas;

.field private ao:Landroid/graphics/Rect;

.field private ap:Lcom/android/launcher3/BubbleTextView;

.field private aq:Ljava/lang/Runnable;

.field private at:Lcom/android/launcher3/eD;

.field private au:Z

.field private av:Lcom/android/launcher3/cu;

.field private final aw:Landroid/content/BroadcastReceiver;

.field private final ax:Landroid/os/Handler;

.field private ay:Ljava/util/ArrayList;

.field private az:Ljava/lang/Runnable;

.field private b:Landroid/animation/AnimatorSet;

.field private d:Ljava/util/HashMap;

.field private final i:Landroid/content/BroadcastReceiver;

.field private final j:Landroid/database/ContentObserver;

.field private k:Landroid/view/LayoutInflater;

.field private l:Lcom/android/launcher3/Workspace;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/android/launcher3/DragLayer;

.field private p:Lcom/android/launcher3/ap;

.field private q:Landroid/view/View;

.field private r:Lcom/android/launcher3/cG;

.field private s:Landroid/appwidget/AppWidgetManager;

.field private t:Lcom/android/launcher3/cD;

.field private u:Lcom/android/launcher3/bD;

.field private v:Landroid/appwidget/AppWidgetProviderInfo;

.field private w:I

.field private x:[I

.field private y:Lcom/android/launcher3/bk;

.field private z:Lcom/android/launcher3/Hotseat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x1f4

    const/4 v3, 0x3

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/Launcher;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    sput v4, Lcom/android/launcher3/Launcher;->f:I

    const/4 v0, 0x5

    sput v0, Lcom/android/launcher3/Launcher;->g:I

    sput v4, Lcom/android/launcher3/Launcher;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/Launcher;->Q:Z

    sput-object v5, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->Y:Ljava/util/HashMap;

    new-array v0, v2, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher3/Launcher;->ad:[Landroid/graphics/drawable/Drawable$ConstantState;

    new-array v0, v2, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher3/Launcher;->ae:[Landroid/graphics/drawable/Drawable$ConstantState;

    new-array v0, v2, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher3/Launcher;->af:[Landroid/graphics/drawable/Drawable$ConstantState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->ai:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sput-object v5, Lcom/android/launcher3/Launcher;->ak:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->ar:Ljava/util/ArrayList;

    const-string v0, "launcher_force_rotate"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Launcher;->as:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/android/launcher3/cq;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/cq;-><init>(Lcom/android/launcher3/Launcher;B)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->i:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/launcher3/cp;

    invoke-direct {v0, p0}, Lcom/android/launcher3/cp;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->j:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher3/bD;

    invoke-direct {v0}, Lcom/android/launcher3/bD;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->w:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->x:[I

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->E:Z

    sget-object v0, Lcom/android/launcher3/cv;->a:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->H:Lcom/android/launcher3/cv;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->J:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->K:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->P:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->T:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->U:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->V:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->W:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->ab:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->ah:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->ao:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/bE;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bE;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->aq:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/cu;

    invoke-direct {v0, p0}, Lcom/android/launcher3/cu;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->av:Lcom/android/launcher3/cu;

    new-instance v0, Lcom/android/launcher3/ca;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ca;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->aw:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/launcher3/ci;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ci;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/ck;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ck;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->az:Ljava/lang/Runnable;

    return-void
.end method

.method protected static G()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected static H()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected static I()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected static J()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected static K()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected static L()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected static M()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method static synthetic P()I
    .locals 1

    sget v0, Lcom/android/launcher3/Launcher;->h:I

    return v0
.end method

.method private Q()V
    .locals 9

    const v7, 0x7f10004a

    const v6, 0x7f100044

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->V()I

    move-result v3

    sget-object v1, Lcom/android/launcher3/Launcher;->ad:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/Launcher;->ae:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/Launcher;->af:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v1, v1, v3

    if-nez v1, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->W()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->g(Z)Z

    move-result v0

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_0
    sget-object v4, Lcom/android/launcher3/Launcher;->ad:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    sget-object v0, Lcom/android/launcher3/Launcher;->ad:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v4, v0, v3

    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v7, v4}, Lcom/android/launcher3/Launcher;->a(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    invoke-static {v5, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    move v0, v2

    :cond_1
    sget-object v4, Lcom/android/launcher3/Launcher;->ae:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    sget-object v1, Lcom/android/launcher3/Launcher;->ae:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v1, v1, v3

    const v3, 0x7f10004c

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/Launcher;->a(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    invoke-static {v3, v4}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/SearchDropTargetBar;->a(ZZ)V

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private R()V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher3/cl;

    invoke-direct {v0, p0}, Lcom/android/launcher3/cl;-><init>(Lcom/android/launcher3/Launcher;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/cl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    iget-object v3, v3, Lcom/android/launcher3/cs;->a:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    iget v5, v5, Lcom/android/launcher3/cs;->b:I

    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    sget-object v7, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    iget v7, v7, Lcom/android/launcher3/cs;->c:I

    iget v8, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v6, v5, :cond_2

    if-ne v8, v7, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    iput-object v4, v0, Lcom/android/launcher3/cs;->a:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    iput v6, v0, Lcom/android/launcher3/cs;->b:I

    sget-object v0, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    iput v8, v0, Lcom/android/launcher3/cs;->c:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->S:Lcom/android/launcher3/bw;

    invoke-virtual {v0}, Lcom/android/launcher3/bw;->b()V

    sget-object v0, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    new-instance v3, Lcom/android/launcher3/cm;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/cm;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/cs;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher3/cm;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private S()V
    .locals 11

    const-wide/16 v3, 0x4e20

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->U:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->T:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher3/Launcher;->E:Z

    if-eq v0, v5, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->E:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/launcher3/Launcher;->ab:J

    const-wide/16 v5, -0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    move-wide v0, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->a(J)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/launcher3/Launcher;->ab:J

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher3/Launcher;->aa:J

    sub-long/2addr v7, v9

    sub-long/2addr v3, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/launcher3/Launcher;->ab:J

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private T()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->J:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private U()V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide v3, v0, Lcom/android/launcher3/bD;->h:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide v3, v0, Lcom/android/launcher3/bD;->i:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput v2, v1, Lcom/android/launcher3/bD;->k:I

    iput v2, v0, Lcom/android/launcher3/bD;->j:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput v2, v1, Lcom/android/launcher3/bD;->m:I

    iput v2, v0, Lcom/android/launcher3/bD;->l:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput v2, v1, Lcom/android/launcher3/bD;->o:I

    iput v2, v0, Lcom/android/launcher3/bD;->n:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/bD;->r:[I

    return-void
.end method

.method private V()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private W()Z
    .locals 9

    const v8, 0x7f02002f

    const v7, 0x7f10004a

    const/16 v6, 0x8

    const/4 v2, 0x0

    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f10004c

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f100044

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->V()I

    move-result v4

    sget-object v5, Lcom/android/launcher3/Launcher;->ad:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v6, "com.android.launcher.toolbar_search_icon"

    invoke-direct {p0, v7, v1, v8, v6}, Lcom/android/launcher3/Launcher;->a(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    aput-object v6, v5, v4

    sget-object v5, Lcom/android/launcher3/Launcher;->ad:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v5, v5, v4

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/launcher3/Launcher;->ad:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-direct {p0, v7, v1, v8, v6}, Lcom/android/launcher3/Launcher;->a(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    aput-object v1, v5, v4

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v3, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->c(Z)V

    move v0, v2

    goto :goto_0
.end method

.method private X()Z
    .locals 2

    sget-boolean v0, Lcom/android/launcher3/Launcher;->as:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/Launcher;->a(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load toolbar icon; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load toolbar icon from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Lcom/android/launcher3/ey;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040003

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->C()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher3/Launcher;->a(ILandroid/view/ViewGroup;Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method static a(I)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/Launcher;->c:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private a(II)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v1, v1, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->v:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/cD;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v6

    new-instance v4, Lcom/android/launcher3/bG;

    invoke-direct {v4, p0, p2, v6, p1}, Lcom/android/launcher3/bG;-><init>(Lcom/android/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/DragLayer;->c()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/aA;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/aA;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/cD;->deleteAppWidgetId(I)V

    const/4 v5, 0x4

    move-object v4, v6

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    move-object v4, v6

    goto :goto_0
.end method

.method private a(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 26

    if-nez p7, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->s:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p7

    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->a(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Launcher;->x:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-object v7, v6, Lcom/android/launcher3/bD;->r:[I

    const/4 v6, 0x2

    new-array v13, v6, [I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v6, v6, Lcom/android/launcher3/bD;->j:I

    if-ltz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v6, v6, Lcom/android/launcher3/bD;->k:I

    if-ltz v6, :cond_2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v7, v7, Lcom/android/launcher3/bD;->j:I

    aput v7, v12, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v7, v7, Lcom/android/launcher3/bD;->k:I

    aput v7, v12, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v7, v7, Lcom/android/launcher3/bD;->l:I

    aput v7, v15, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v7, v7, Lcom/android/launcher3/bD;->m:I

    aput v7, v15, v6

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_5

    const/4 v6, -0x1

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    new-instance v6, Lcom/android/launcher3/bK;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/bK;-><init>(Lcom/android/launcher3/Launcher;I)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Void;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/bK;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Launcher;->a(Z)V

    :goto_1
    return-void

    :cond_2
    if-eqz v7, :cond_4

    const/4 v6, 0x0

    aget v6, v7, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, 0x0

    aget v8, v9, v8

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    aget v10, v15, v10

    const/4 v11, 0x1

    aget v11, v15, v11

    invoke-virtual/range {v5 .. v13}, Lcom/android/launcher3/CellLayout;->a(IIIIII[I[I)[I

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v13, v8

    aput v8, v15, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v13, v8

    aput v8, v15, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    aget v6, v9, v6

    const/4 v7, 0x1

    aget v7, v9, v7

    invoke-virtual {v5, v12, v6, v7}, Lcom/android/launcher3/CellLayout;->a([III)Z

    move-result v6

    goto :goto_0

    :cond_5
    new-instance v14, Lcom/android/launcher3/cF;

    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v14, v0, v5}, Lcom/android/launcher3/cF;-><init>(ILandroid/content/ComponentName;)V

    const/4 v5, 0x0

    aget v5, v15, v5

    iput v5, v14, Lcom/android/launcher3/cF;->l:I

    const/4 v5, 0x1

    aget v5, v15, v5

    iput v5, v14, Lcom/android/launcher3/cF;->m:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v5, v5, Lcom/android/launcher3/bD;->n:I

    iput v5, v14, Lcom/android/launcher3/cF;->n:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v5, v5, Lcom/android/launcher3/bD;->o:I

    iput v5, v14, Lcom/android/launcher3/cF;->o:I

    const/4 v5, 0x0

    aget v19, v12, v5

    const/4 v5, 0x1

    aget v20, v12, v5

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-static/range {v13 .. v21}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIZ)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/Launcher;->L:Z

    if-nez v5, :cond_6

    if-nez p6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher3/cD;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v14, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    iget-object v5, v14, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v5, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    :goto_2
    iget-object v5, v14, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    iget-object v5, v14, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/cF;->b(Lcom/android/launcher3/Launcher;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v0, v14, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    aget v21, v12, v5

    const/4 v5, 0x1

    aget v22, v12, v5

    iget v0, v14, Lcom/android/launcher3/cF;->l:I

    move/from16 v23, v0

    iget v0, v14, Lcom/android/launcher3/cF;->m:I

    move/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->T()Z

    move-result v25

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    invoke-virtual/range {v15 .. v25}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZ)V

    iget-object v5, v14, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->U()V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p6

    iput-object v0, v14, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    goto :goto_2
.end method

.method private a(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(ILcom/android/launcher3/bD;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->a(ILcom/android/launcher3/bD;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;I)V

    return-void
.end method

.method private a(ILcom/android/launcher3/bD;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 9

    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iput-object p4, p0, Lcom/android/launcher3/Launcher;->v:Landroid/appwidget/AppWidgetProviderInfo;

    iput p1, p0, Lcom/android/launcher3/Launcher;->w:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/eI;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v8, Lcom/android/launcher3/bN;

    invoke-direct {v8, p0}, Lcom/android/launcher3/bN;-><init>(Lcom/android/launcher3/Launcher;)V

    iget-wide v2, p2, Lcom/android/launcher3/bD;->h:J

    iget-wide v4, p2, Lcom/android/launcher3/bD;->i:J

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->a(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, p5, v2}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->aa:J

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/android/launcher3/cs;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/cs;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/cs;->b:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/cs;->c:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/4 v0, 0x6

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/eI;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/eI;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;F)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/dH;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/dH;

    invoke-interface {p1, p0, p2}, Lcom/android/launcher3/dH;->a(Lcom/android/launcher3/Launcher;F)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->S()V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    instance-of v0, p0, Lcom/android/launcher3/HolographicLinearLayout;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/launcher3/HolographicLinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/HolographicLinearLayout;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/HolographicImageView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/HolographicImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/HolographicImageView;->a()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZZ)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/dH;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/dH;

    invoke-interface {p1, p0, p2, p3}, Lcom/android/launcher3/dH;->a(Lcom/android/launcher3/Launcher;ZZ)V

    :cond_0
    return-void
.end method

.method private a(Lcom/android/launcher3/Folder;)V
    .locals 9

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/Folder;->e()Lcom/android/launcher3/bk;

    move-result-object v0

    iput-boolean v7, v0, Lcom/android/launcher3/bk;->a:Z

    invoke-virtual {p1}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v1, p1, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->b(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_0

    const-string v1, "alpha"

    new-array v2, v8, [F

    aput v5, v2, v7

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v1, "scaleX"

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v1, "scaleY"

    new-array v4, v8, [F

    aput v5, v4, v7

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/FolderIcon;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    const/4 v2, 0x2

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/android/launcher3/cw;->a(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/launcher3/bP;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/bP;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/FolderIcon;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Folder;->k()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->a(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;J)V
    .locals 2

    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->c(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->ay:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Launcher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->T:Z

    return-void
.end method

.method static a(Lcom/android/launcher3/bk;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/Launcher;->Y:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/android/launcher3/bk;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/cs;)V
    .locals 0

    sput-object p0, Lcom/android/launcher3/Launcher;->X:Lcom/android/launcher3/cs;

    return-void
.end method

.method private a(Lcom/android/launcher3/fU;ZLjava/lang/Runnable;)V
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0e000c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v0, 0x7f0e000f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v0, 0x7f0e000d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v7, v0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v0, 0x0

    sget-object v6, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-ne p1, v6, :cond_4

    const v0, 0x7f0e0011

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v6, -0x1

    invoke-virtual {v1, p1, p2, v0, v6}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/fU;ZII)Landroid/animation/Animator;

    move-result-object v0

    move-object v6, v0

    :goto_0
    invoke-static {v2}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->j()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-static {}, Lcom/android/launcher3/SearchDropTargetBar;->b()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    if-eqz p2, :cond_7

    new-instance v8, Lcom/android/launcher3/dI;

    invoke-direct {v8, v2}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v7}, Lcom/android/launcher3/dI;->b(F)Lcom/android/launcher3/dI;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/dI;->c(F)Lcom/android/launcher3/dI;

    move-result-object v0

    int-to-long v9, v3

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/dI;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/fX;

    invoke-direct {v1}, Lcom/android/launcher3/fX;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v9, v5

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/bU;

    invoke-direct {v0, p0, v2, v4}, Lcom/android/launcher3/bU;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v4, p2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->F()V

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/bV;

    move-object v1, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bV;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    const/4 v3, 0x1

    aput-object v7, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v4, p2, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    invoke-static {v0, v4}, Lcom/android/launcher3/cw;->a(Landroid/animation/Animator;Landroid/view/View;)V

    :goto_2
    return-void

    :cond_4
    sget-object v1, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    if-ne p1, v1, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/fU;Z)Landroid/animation/Animator;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setAlpha(F)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher3/Launcher;->c(Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v4, p2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v4, p2, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v4, p2, v0}, Lcom/android/launcher3/Launcher;->c(Landroid/view/View;ZZ)V

    goto :goto_2

    :cond_8
    move-object v6, v0

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 5

    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "No global search activity found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-nez p3, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const-string v3, "source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "source"

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "app_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "query"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "select_query"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Global search activity not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private a(ZZLcom/android/launcher3/r;)V
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0e000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0e000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v4, v3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    const v6, 0x7f0e0012

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    sget-object v7, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    invoke-virtual {v6, v7, p1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/fU;Z)Landroid/animation/Animator;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    if-ne p3, v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v7, p3}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(Lcom/android/launcher3/r;)V

    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {v3, v4}, Lcom/android/launcher3/AppsCustomizeTabHost;->setScaleX(F)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/AppsCustomizeTabHost;->setScaleY(F)V

    new-instance v7, Lcom/android/launcher3/dI;

    invoke-direct {v7, v3}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/launcher3/dI;->b(F)Lcom/android/launcher3/dI;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/android/launcher3/dI;->c(F)Lcom/android/launcher3/dI;

    move-result-object v8

    int-to-long v9, v1

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/dI;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v8, Lcom/android/launcher3/fY;

    invoke-direct {v8}, Lcom/android/launcher3/fY;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->setAlpha(F)V

    const-string v1, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v3, v1, v8}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v8, v2

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/bQ;

    invoke-direct {v2, p0, v5, v3}, Lcom/android/launcher3/bQ;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/AppsCustomizeTabHost;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    int-to-long v7, v0

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    int-to-long v7, v0

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/bR;

    invoke-direct {v1, p0, v3, v5, p1}, Lcom/android/launcher3/bR;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/AppsCustomizeTabHost;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v5, p1, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    const/4 v1, 0x0

    invoke-direct {p0, v3, p1, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    invoke-interface {v3}, Lcom/android/launcher3/dH;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/AppsCustomizeTabHost;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_8

    :cond_4
    const/4 v0, 0x1

    move v7, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/bS;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/bS;-><init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher3/AppsCustomizeTabHost;FLandroid/view/View;Z)V

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/AppsCustomizeTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/bT;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/launcher3/bT;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;Lcom/android/launcher3/AppsCustomizeTabHost;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_1
    return-void

    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setTranslationX(F)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setScaleX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/AppsCustomizeTabHost;->bringToFront()V

    if-nez p2, :cond_7

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->j()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->b(Z)V

    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v5, p1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v5, p1, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;ZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v5, p1, v0}, Lcom/android/launcher3/Launcher;->c(Landroid/view/View;ZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v3, p1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;ZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v3, p1, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;ZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v3, p1, v0}, Lcom/android/launcher3/Launcher;->c(Landroid/view/View;ZZ)V

    goto :goto_1

    :cond_8
    move v7, v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/android/launcher3/ct;)Z
    .locals 21

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher3/ct;->a:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v3, v13

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->U()V

    return v3

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/ct;->b:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher3/ct;->c:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/ct;->d:J

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher3/ct;->e:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/ct;->f:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->x:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/launcher3/Launcher;->a(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    if-ltz v11, :cond_1

    if-ltz v12, :cond_1

    const/4 v10, 0x0

    aput v11, v4, v10

    const/4 v10, 0x1

    aput v12, v4, v10

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v4, v10, v3, v0}, Lcom/android/launcher3/cO;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher3/ey;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    iget-object v10, v4, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v4, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, v4, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    const/high16 v10, 0x10200000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    iput v3, v4, Lcom/android/launcher3/ey;->g:I

    iget-object v3, v4, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/launcher3/ey;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/ey;->a(Landroid/content/pm/PackageInfo;)V

    const-wide/16 v14, -0x1

    iput-wide v14, v4, Lcom/android/launcher3/ey;->h:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->T()Z

    move-result v10

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/ey;Lcom/android/launcher3/CellLayout;JJZII)V

    move v3, v13

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x1

    const/4 v14, 0x1

    invoke-virtual {v5, v4, v10, v14}, Lcom/android/launcher3/CellLayout;->a([III)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->a(Z)V

    move v3, v13

    goto/16 :goto_0

    :cond_2
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Couldn\'t find ActivityInfo for selected application: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v13

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/ct;->b:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Intent;)V

    move v3, v13

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/ct;->b:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/launcher3/ct;->c:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher3/ct;->d:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher3/ct;->e:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher3/ct;->f:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Launcher;->x:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-object v11, v4, Lcom/android/launcher3/bD;->r:[I

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/launcher3/Launcher;->a(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v3, v12}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher3/ey;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v4

    if-ltz v9, :cond_4

    if-ltz v10, :cond_4

    const/4 v3, 0x0

    aput v9, v8, v3

    const/4 v3, 0x1

    aput v10, v8, v3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/aA;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v13, Lcom/android/launcher3/aH;

    invoke-direct {v13}, Lcom/android/launcher3/aH;-><init>()V

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v10, v7

    move-object v11, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/aH;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v11, :cond_6

    const/4 v3, 0x0

    aget v10, v11, v3

    const/4 v3, 0x1

    aget v11, v11, v3

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v9, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/CellLayout;->b(IIII[I)[I

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->a(Z)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v3, v9}, Lcom/android/launcher3/CellLayout;->a([III)Z

    move-result v3

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    aget v15, v8, v3

    const/4 v3, 0x1

    aget v16, v8, v3

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, v20

    move-wide v11, v5

    move-wide/from16 v13, v18

    invoke-static/range {v9 .. v17}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIZ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Launcher;->L:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v7, 0x0

    aget v9, v8, v7

    const/4 v7, 0x1

    aget v10, v8, v7

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->T()Z

    move-result v13

    move-wide/from16 v7, v18

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZ)V

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/ct;->b:Landroid/content/Intent;

    const-string v4, "appWidgetId"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/launcher3/ct;->c:J

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/launcher3/ct;->d:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/Launcher;->a(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    move v3, v15

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->K:Z

    if-eqz v0, :cond_2

    const-string v0, "Launcher"

    const-string v1, "Deferring update until onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/CellLayout;->a(II[I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/SearchDropTargetBar;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/android/launcher3/cs;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    const-string v2, "launcher.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p1, Lcom/android/launcher3/cs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/launcher3/cs;->b:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p1, Lcom/android/launcher3/cs;->c:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    const-string v1, "launcher.preferences"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private static b(Landroid/view/View;)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private b(Landroid/view/View;ZZ)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/dH;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/dH;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher3/dH;->b(Lcom/android/launcher3/Launcher;ZZ)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;F)V

    return-void
.end method

.method private b(Lcom/android/launcher3/FolderIcon;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getMeasuredHeight()I

    move-result v2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->am:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->am:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->am:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->an:Landroid/graphics/Canvas;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->ao:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v3

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->c:Z

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->ao:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->ao:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    int-to-float v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->an:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->an:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/FolderIcon;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->p()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->q()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->bringToFront()V

    :cond_5
    return-void

    :cond_6
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/android/launcher3/Launcher;Landroid/view/View;F)V
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;ZZ)V

    return-void
.end method

.method private b(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x10000000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {p1, v2, v3, v4, v5}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const v2, 0x7f0a0015

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launcher does not have the permission to launch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    return-object v0
.end method

.method private c(Landroid/view/View;ZZ)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/dH;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/dH;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher3/dH;->c(Lcom/android/launcher3/Launcher;ZZ)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic d(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->S()V

    return-void
.end method

.method static synthetic e(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AppsCustomizeTabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    return-object v0
.end method

.method private static e(I)Lcom/android/launcher3/cv;
    .locals 4

    sget-object v1, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    invoke-static {}, Lcom/android/launcher3/cv;->values()[Lcom/android/launcher3/cv;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher3/cv;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_1

    aget-object v0, v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Launcher"

    const-string v1, "11683562 - bindAddScreens()"

    invoke-static {v0, v1, v4, v3}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "11683562 -   orderedScreenIds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v3}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Workspace;->a(J)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/bD;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    return-object v0
.end method

.method private f(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    sget-object v0, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/fU;ZLjava/lang/Runnable;)V

    sget-object v0, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    return-void
.end method

.method static synthetic g(Lcom/android/launcher3/Launcher;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    return-object v0
.end method

.method private g(Z)Z
    .locals 9

    const v8, 0x7f020031

    const/16 v6, 0x8

    const v7, 0x7f100044

    const/4 v1, 0x0

    const v0, 0x7f10004c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->V()I

    move-result v4

    sget-object v5, Lcom/android/launcher3/Launcher;->ae:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v6, "com.android.launcher.toolbar_voice_search_icon"

    invoke-direct {p0, v7, v0, v8, v6}, Lcom/android/launcher3/Launcher;->a(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    aput-object v6, v5, v4

    sget-object v5, Lcom/android/launcher3/Launcher;->ae:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v5, v5, v4

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/launcher3/Launcher;->ae:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-direct {p0, v7, v0, v8, v6}, Lcom/android/launcher3/Launcher;->a(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    aput-object v0, v5, v4

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->c(Z)V

    invoke-static {v2, v3}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->c(Z)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/android/launcher3/Launcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    invoke-virtual {v0}, Lcom/android/launcher3/cD;->startListening()V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->R()V

    return-void
.end method

.method static synthetic k(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/cD;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    return-object v0
.end method

.method static synthetic l(Lcom/android/launcher3/Launcher;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->aq:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic m(Lcom/android/launcher3/Launcher;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/android/launcher3/Launcher;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->b:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic o(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AppsCustomizePagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    return-object v0
.end method

.method protected static t()V
    .locals 0

    return-void
.end method

.method protected static u()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->K:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->N:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->C()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final C()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->av()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->n()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->b()V

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->W()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->g(Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v0, v2

    :goto_0
    :pswitch_0
    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v1, v5, v3

    const/16 v6, 0x9

    aput v6, v5, v2

    const/4 v6, 0x3

    const/16 v7, 0x8

    aput v7, v5, v6

    if-ne v0, v2, :cond_2

    :goto_1
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    aget v0, v5, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    :cond_0
    return-void

    :pswitch_1
    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final F()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method final N()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->a(Z)V

    :cond_3
    return-void
.end method

.method final O()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->b(Z)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/launcher3/bD;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/launcher3/bD;->f:J

    long-to-int v2, v0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    const v3, 0xffffff

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v3, Lcom/android/launcher3/Launcher;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0
.end method

.method final a(ILandroid/view/ViewGroup;Lcom/android/launcher3/ey;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->S:Lcom/android/launcher3/bw;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/BubbleTextView;->a(Lcom/android/launcher3/ey;Lcom/android/launcher3/bw;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method final a(JJ)Lcom/android/launcher3/CellLayout;
    .locals 2

    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/FolderIcon;
    .locals 11

    new-instance v1, Lcom/android/launcher3/bk;

    invoke-direct {v1}, Lcom/android/launcher3/bk;-><init>()V

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIZ)V

    sget-object v0, Lcom/android/launcher3/Launcher;->Y:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/android/launcher3/bk;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f04000f

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->S:Lcom/android/launcher3/bw;

    invoke-static {v0, p0, p1, v1}, Lcom/android/launcher3/FolderIcon;->a(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/bk;)Lcom/android/launcher3/FolderIcon;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->T()Z

    move-result v10

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZ)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ex;->a(Landroid/view/View;)V

    return-object v1
.end method

.method public final a(Landroid/view/View;Lcom/android/launcher3/cr;Ljava/lang/String;)Lcom/android/launcher3/cu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Lcom/android/launcher3/cr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->av:Lcom/android/launcher3/cu;

    return-object v0
.end method

.method final a(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10808000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "startApplicationDetailsActivity"

    invoke-virtual {p0, v4, v1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Landroid/content/ComponentName;JJ[I[I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->U()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide p2, v0, Lcom/android/launcher3/bD;->h:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide p4, v0, Lcom/android/launcher3/bD;->i:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/bD;->r:[I

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const/4 v1, 0x0

    aget v1, p6, v1

    iput v1, v0, Lcom/android/launcher3/bD;->j:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const/4 v1, 0x1

    aget v1, p6, v1

    iput v1, v0, Lcom/android/launcher3/bD;->k:I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/FolderIcon;)V
    .locals 10

    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v2

    iget-object v0, v2, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iput-boolean v8, v0, Lcom/android/launcher3/bk;->a:Z

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aF;)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->f()V

    if-eqz p1, :cond_1

    const-string v0, "alpha"

    new-array v1, v8, [F

    const/4 v3, 0x0

    aput v3, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v0, "scaleX"

    new-array v1, v8, [F

    aput v5, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v0, "scaleY"

    new-array v1, v8, [F

    aput v5, v1, v9

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bk;

    iget-wide v0, v0, Lcom/android/launcher3/bk;->h:J

    const-wide/16 v6, -0x65

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v6, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher3/CellLayout;->c(II)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/FolderIcon;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/FolderIcon;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->al:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v9

    aput-object v4, v1, v8

    const/4 v3, 0x2

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Lcom/android/launcher3/cw;->a(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e001b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Folder;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->sendAccessibilityEvent(I)V

    return-void

    :cond_2
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Opening folder ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") which already has a parent ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final a(Lcom/android/launcher3/cF;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->S()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method

.method final a(Lcom/android/launcher3/eq;JJ[I[I[I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->U()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide p2, p1, Lcom/android/launcher3/eq;->h:J

    iput-wide p2, v0, Lcom/android/launcher3/bD;->h:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide p4, p1, Lcom/android/launcher3/eq;->i:J

    iput-wide p4, v0, Lcom/android/launcher3/bD;->i:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-object v4, v0, Lcom/android/launcher3/bD;->r:[I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, p1, Lcom/android/launcher3/eq;->n:I

    iput v1, v0, Lcom/android/launcher3/bD;->n:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, p1, Lcom/android/launcher3/eq;->o:I

    iput v1, v0, Lcom/android/launcher3/bD;->o:I

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    aget v1, p6, v2

    iput v1, v0, Lcom/android/launcher3/bD;->j:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    aget v1, p6, v3

    iput v1, v0, Lcom/android/launcher3/bD;->k:I

    :cond_0
    if-eqz p7, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    aget v1, p7, v2

    iput v1, v0, Lcom/android/launcher3/bD;->l:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    aget v1, p7, v3

    iput v1, v0, Lcom/android/launcher3/bD;->m:I

    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/eq;->t:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    iget-object v2, p1, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/launcher3/Launcher;->a(ILcom/android/launcher3/bD;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    invoke-virtual {v0}, Lcom/android/launcher3/cD;->allocateAppWidgetId()I

    move-result v1

    iget-object v0, p1, Lcom/android/launcher3/eq;->u:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->s:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p1, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v1, p1, v4, v0}, Lcom/android/launcher3/Launcher;->a(ILcom/android/launcher3/bD;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->s:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p1, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->v:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appWidgetProvider"

    iget-object v2, p1, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->e(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->r()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->p()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->b()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/ArrayList;IIZ)V
    .locals 19

    new-instance v3, Lcom/android/launcher3/bY;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/bY;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    invoke-virtual {v5}, Lcom/android/launcher3/ap;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Lcom/android/launcher3/Launcher;->g:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move v14, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const-wide/16 v15, -0x1

    :goto_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_4

    if-eqz v14, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v4, v15, v4

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->D()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Workspace;->a(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/Workspace;->c(J)I

    move-result v6

    new-instance v7, Lcom/android/launcher3/bZ;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/bZ;-><init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    cmp-long v4, v15, v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    new-instance v5, Lcom/android/launcher3/cb;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/launcher3/cb;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    sget v6, Lcom/android/launcher3/Launcher;->f:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_4
    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->requestLayout()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    move v14, v3

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/launcher3/bD;

    iget-wide v4, v13, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v4, :cond_8

    :cond_5
    iget v4, v13, Lcom/android/launcher3/bD;->g:I

    packed-switch v4, :pswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid Item Type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/ey;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v4

    iget-wide v5, v13, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-wide v6, v13, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v6, v13, Lcom/android/launcher3/bD;->j:I

    iget v7, v13, Lcom/android/launcher3/bD;->k:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/CellLayout;->f(II)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "OCCUPIED"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    iget-wide v5, v13, Lcom/android/launcher3/bD;->h:J

    iget-wide v7, v13, Lcom/android/launcher3/bD;->i:J

    iget v9, v13, Lcom/android/launcher3/bD;->j:I

    iget v10, v13, Lcom/android/launcher3/bD;->k:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIII)V

    if-eqz v14, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/launcher3/cw;->a(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1c2

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    mul-int/lit8 v5, p2, 0x55

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/android/launcher3/eA;

    invoke-direct {v5}, Lcom/android/launcher3/eA;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-wide v4, v13, Lcom/android/launcher3/bD;->i:J

    :goto_5
    add-int/lit8 p2, p2, 0x1

    move-wide v15, v4

    goto/16 :goto_3

    :pswitch_1
    const v6, 0x7f04000f

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->C()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v13

    check-cast v5, Lcom/android/launcher3/bk;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Launcher;->S:Lcom/android/launcher3/bw;

    move-object/from16 v0, p0

    invoke-static {v6, v0, v4, v5}, Lcom/android/launcher3/FolderIcon;->a(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/bk;)Lcom/android/launcher3/FolderIcon;

    move-result-object v4

    iget-wide v5, v13, Lcom/android/launcher3/bD;->h:J

    iget-wide v7, v13, Lcom/android/launcher3/bD;->i:J

    iget v9, v13, Lcom/android/launcher3/bD;->j:I

    iget v10, v13, Lcom/android/launcher3/bD;->k:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIII)V

    move-wide v4, v15

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    sget v5, Lcom/android/launcher3/Launcher;->h:I

    int-to-long v5, v5

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :cond_8
    move-wide v4, v15

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/cg;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/cg;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->b(Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->c(Ljava/util/ArrayList;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ap;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/AppsCustomizePagedView;->d(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/android/launcher3/bX;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bX;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->e(Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p2, v6, v0, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/util/ArrayList;IIZ)V

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v6, v0, v1}, Lcom/android/launcher3/Launcher;->a(Ljava/util/ArrayList;IIZ)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;)V

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p4}, Lcom/android/launcher3/AppsCustomizePagedView;->c(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/cc;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/cc;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/HashMap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher;->Y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher3/Launcher;->Y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f0a0029

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v0, 0x7f0a0028

    goto :goto_0
.end method

.method final a(ZILjava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v1, Lcom/android/launcher3/cv;->d:Lcom/android/launcher3/cv;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/bW;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/bW;-><init>(Lcom/android/launcher3/Launcher;ZLjava/lang/Runnable;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method final a(ZLcom/android/launcher3/r;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v1, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->a()V

    :cond_1
    invoke-direct {p0, p1, v2, p2}, Lcom/android/launcher3/Launcher;->a(ZZLcom/android/launcher3/r;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->requestFocus()Z

    sget-object v0, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->T:Z

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->S()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->v()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method final a(ZLjava/lang/Runnable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v3, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v3, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    if-eq v0, v3, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    sget-object v3, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/fU;ZLjava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/launcher3/SearchDropTargetBar;->a(Z)V

    :cond_2
    sget-object v0, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->T:Z

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->S()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final a(Landroid/content/ComponentName;I)Z
    .locals 5

    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    const v1, 0x7f0a004c

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const v2, 0x7f0a0015

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->U:Z

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->S()V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->U:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->b()V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/bL;

    invoke-direct {v2, p0}, Lcom/android/launcher3/bL;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/android/launcher3/cF;)V
    .locals 12

    const/4 v10, 0x0

    new-instance v0, Lcom/android/launcher3/cd;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/cd;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/cF;)V

    invoke-direct {p0, v0, v10}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget v1, p1, Lcom/android/launcher3/cF;->a:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->s:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    invoke-virtual {v2, p0, v1, v11}, Lcom/android/launcher3/cD;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p1, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/cF;->a(Lcom/android/launcher3/Launcher;)V

    iget-object v1, p1, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher3/cF;->h:J

    iget-wide v4, p1, Lcom/android/launcher3/cF;->i:J

    iget v6, p1, Lcom/android/launcher3/cF;->j:I

    iget v7, p1, Lcom/android/launcher3/cF;->k:I

    iget v8, p1, Lcom/android/launcher3/cF;->l:I

    iget v9, p1, Lcom/android/launcher3/cF;->m:I

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZ)V

    iget-object v1, p1, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0, v1, v11}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    goto :goto_0
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/Launcher;->ak:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/Launcher;->ak:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {p0}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {p0}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected final b(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public final c()Lcom/android/launcher3/eD;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->at:Lcom/android/launcher3/eD;

    return-object v0
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ah:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/cf;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/cf;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->d(Ljava/util/ArrayList;)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->e(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f100043

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->ao()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->au:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->az:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->ay:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher3/ce;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/ce;-><init>(Lcom/android/launcher3/Launcher;Z)V

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->G:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->G:Landroid/os/Bundle;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->au()V

    move v1, v2

    :goto_1
    sget-object v0, Lcom/android/launcher3/Launcher;->ar:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    sget-object v0, Lcom/android/launcher3/Launcher;->ar:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->J:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->ak:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/launcher3/Launcher;->ar:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ct;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/ct;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method final d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v0}, Lcom/android/launcher3/cO;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Hotseat;->c(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissFirstRunCling(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/cG;->dismissFirstRunCling(Landroid/view/View;)V

    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/cG;->dismissFolderCling(Landroid/view/View;)V

    return-void
.end method

.method public dismissMigrationClingCopyApps(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/cG;->dismissMigrationClingCopyApps(Landroid/view/View;)V

    return-void
.end method

.method public dismissMigrationClingUseDefault(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/cG;->dismissMigrationClingUseDefault(Landroid/view/View;)V

    return-void
.end method

.method public dismissMigrationWorkspaceCling(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/cG;->dismissMigrationWorkspaceCling(Landroid/view/View;)V

    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/cG;->dismissWorkspaceCling(Landroid/view/View;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    :sswitch_1
    const-string v1, "launcher_dump_state"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BEGIN launcher3 dump state for launcher "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSavedState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->G:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWorkspaceLoading="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->J:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mRestoring="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->L:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWaitingForResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->M:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSavedInstanceState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sFolders.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/Launcher;->Y:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v1}, Lcom/android/launcher3/cO;->h()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->q()V

    :cond_1
    const-string v1, "Launcher"

    const-string v2, "END launcher3 dump state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v3, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher3/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    const v2, 0x7f0a0031

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/Launcher;->ai:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Debug logs: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/android/launcher3/Launcher;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/Launcher;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->z()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final e(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/ch;

    invoke-direct {v1, p0}, Lcom/android/launcher3/ch;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final f()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnl/ndsc/kitkatlauncher/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final g()Lcom/android/launcher3/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    return-object v0
.end method

.method public final h()Lcom/android/launcher3/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method public final i()Lcom/android/launcher3/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public final j()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final k()Lcom/android/launcher3/SearchDropTargetBar;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    return-object v0
.end method

.method public final l()Lcom/android/launcher3/cD;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    return-object v0
.end method

.method public final m()Lcom/android/launcher3/cO;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    return-object v0
.end method

.method public final n()Lcom/android/launcher3/cG;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    return-object v0
.end method

.method protected final o()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->aj:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v5, 0x1f4

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->M:Z

    iget v0, p0, Lcom/android/launcher3/Launcher;->w:I

    iput v2, p0, Lcom/android/launcher3/Launcher;->w:I

    new-instance v6, Lcom/android/launcher3/cn;

    invoke-direct {v6, p0, p2}, Lcom/android/launcher3/cn;-><init>(Lcom/android/launcher3/Launcher;I)V

    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_1

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-nez p2, :cond_2

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/Launcher;->a(II)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v6, v5, v3}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->v:Landroid/appwidget/AppWidgetProviderInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->a(ILcom/android/launcher3/bD;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->a(Z)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x9

    if-eq p1, v1, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    move v1, v3

    :goto_2
    if-eqz v1, :cond_a

    if-eqz p3, :cond_8

    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_3
    if-gez v1, :cond_5

    move v1, v0

    :cond_5
    if-ltz v1, :cond_6

    if-nez p2, :cond_9

    :cond_6
    const-string v0, "Launcher"

    const-string v2, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the \\widget configuration activity."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/Launcher;->a(II)V

    new-instance v0, Lcom/android/launcher3/co;

    invoke-direct {v0, p0}, Lcom/android/launcher3/co;-><init>(Lcom/android/launcher3/Launcher;)V

    :goto_4
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v4, v0, v5, v3}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v6, v2, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher3/CellLayout;->c(Z)V

    new-instance v0, Lcom/android/launcher3/bF;

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/android/launcher3/bF;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/CellLayout;)V

    goto :goto_4

    :cond_a
    if-ne p2, v2, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v0, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v7, -0x1

    cmp-long v0, v0, v7

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/launcher3/ct;

    invoke-direct {v0, v3}, Lcom/android/launcher3/ct;-><init>(B)V

    iput p1, v0, Lcom/android/launcher3/ct;->a:I

    iput-object p3, v0, Lcom/android/launcher3/ct;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v1, v1, Lcom/android/launcher3/bD;->h:J

    iput-wide v1, v0, Lcom/android/launcher3/ct;->c:J

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v1, v1, Lcom/android/launcher3/bD;->i:J

    iput-wide v1, v0, Lcom/android/launcher3/ct;->d:J

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->j:I

    iput v1, v0, Lcom/android/launcher3/ct;->e:I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->k:I

    iput v1, v0, Lcom/android/launcher3/ct;->f:I

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->T()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/launcher3/Launcher;->ar:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v6, v5, v3}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->b()V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/ct;)Z

    goto :goto_5

    :cond_d
    if-nez p2, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v6, v5, v3}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    goto :goto_6
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->aw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/aK;->a(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->W:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->U:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->l()Lcom/android/launcher3/r;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/launcher3/Launcher;->f(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->v()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->al()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ae()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->a(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/Workspace;->d(IZ)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/android/launcher3/ey;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v4, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/launcher3/fq;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v0, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    invoke-virtual {p0, v3, v0, v3}, Lcom/android/launcher3/Launcher;->a(ZLcom/android/launcher3/r;Z)V

    goto :goto_0

    :cond_4
    const-class v6, Lcom/android/launcher3/MemoryDumpActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0}, Lcom/android/launcher3/MemoryDumpActivity;->startDump(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-class v6, Lcom/android/launcher3/eG;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v0, "com.android.launcher3.prefs"

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "debug.show_mem"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "debug.show_mem"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->q:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->q:Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    const/16 v2, 0x8

    goto :goto_2

    :cond_8
    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v6, Landroid/graphics/Rect;

    aget v7, v5, v2

    aget v8, v5, v3

    aget v2, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v2, v9

    aget v5, v5, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v5, v9

    invoke-direct {v6, v7, v8, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v4, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->at:Lcom/android/launcher3/eD;

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/eD;->a(Landroid/content/Intent;Lcom/android/launcher3/ey;)V

    if-eqz v1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->ap:Lcom/android/launcher3/BubbleTextView;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ap:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->a(Z)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, v1, Lcom/android/launcher3/bk;

    if-eqz v0, :cond_c

    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->b()Lcom/android/launcher3/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->a(Ljava/lang/Object;)Lcom/android/launcher3/Folder;

    move-result-object v1

    iget-boolean v3, v0, Lcom/android/launcher3/bk;->a:Z

    if-eqz v3, :cond_a

    if-nez v1, :cond_a

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/launcher3/bk;->i:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/bk;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/bk;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v0, Lcom/android/launcher3/bk;->a:Z

    :cond_a
    iget-boolean v0, v0, Lcom/android/launcher3/bk;->a:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->s()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->v()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/FolderIcon;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->e(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Folder;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->C()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->v()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/FolderIcon;)V

    goto/16 :goto_0

    :cond_c
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(ZLcom/android/launcher3/r;Z)V

    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z

    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x10000000

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :try_start_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x0

    const-string v2, "onClickVoiceButton"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->b(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "onClickVoiceButton"

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/16 v12, -0x3e9

    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, La/a/a/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->au:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/cB;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v2, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/cB;->a(Landroid/content/Context;IIIIII)Lcom/android/launcher3/al;

    move-result-object v1

    const-string v2, "com.android.launcher3.prefs"

    invoke-virtual {p0, v2, v8}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->aj:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/cB;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/cO;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->e()Lcom/android/launcher3/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->S:Lcom/android/launcher3/bw;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->S:Lcom/android/launcher3/bw;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bw;->a(Lcom/android/launcher3/al;)V

    new-instance v0, Lcom/android/launcher3/ap;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ap;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    new-instance v0, Lcom/android/launcher3/cG;

    invoke-direct {v0, p0}, Lcom/android/launcher3/cG;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->k:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/launcher3/eD;

    invoke-direct {v0, p0}, Lcom/android/launcher3/eD;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->at:Lcom/android/launcher3/eD;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->s:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/android/launcher3/cD;

    const/16 v2, 0x400

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/cD;-><init>(Lcom/android/launcher3/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    invoke-virtual {v0}, Lcom/android/launcher3/cD;->startListening()V

    iput-boolean v8, p0, Lcom/android/launcher3/Launcher;->K:Z

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->R()V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    const v0, 0x7f100035

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->m:Landroid/view/View;

    const v0, 0x7f100036

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    const v3, 0x7f100037

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    const v3, 0x7f100042

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->m:Landroid/view/View;

    const/16 v3, 0x600

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->ag:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ap;)V

    const v0, 0x7f100038

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Hotseat;->a(Lcom/android/launcher3/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const v0, 0x7f10003a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->A:Landroid/view/ViewGroup;

    const v0, 0x7f100048

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/bH;

    invoke-direct {v3, p0}, Lcom/android/launcher3/bH;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->s()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f100047

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/bI;

    invoke-direct {v3, p0}, Lcom/android/launcher3/bI;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->s()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f100049

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/bJ;

    invoke-direct {v3, p0}, Lcom/android/launcher3/bJ;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->s()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->A:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/ap;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aq;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    const v3, 0x7f100039

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SearchDropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppsCustomizeTabHost;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    const v3, 0x7f100005

    invoke-virtual {v0, v3}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppsCustomizePagedView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ap;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/ay;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ap;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ap;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aF;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/SearchDropTargetBar;->a(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ap;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Launcher"

    const-string v2, "adding WeightWatcher"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/fl;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->q:Landroid/view/View;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->m:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->q:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "com.android.launcher3.prefs"

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "debug.show_mem"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->q:Landroid/view/View;

    if-eqz v0, :cond_c

    move v0, v8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/launcher3/al;->a(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->G:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->G:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    const-string v0, "launcher.state"

    sget-object v2, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    invoke-virtual {v2}, Lcom/android/launcher3/cv;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->e(I)Lcom/android/launcher3/cv;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->H:Lcom/android/launcher3/cv;

    :cond_3
    const-string v0, "launcher.current_screen"

    invoke-virtual {v1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v12, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->j(I)V

    :cond_4
    const-string v0, "launcher.add_container"

    invoke-virtual {v1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "launcher.add_screen"

    invoke-virtual {v1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v2, v10

    if-eqz v0, :cond_5

    cmp-long v0, v4, v10

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide v2, v0, Lcom/android/launcher3/bD;->h:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iput-wide v4, v0, Lcom/android/launcher3/bD;->i:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const-string v2, "launcher.add_cell_x"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/bD;->j:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const-string v2, "launcher.add_cell_y"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/bD;->k:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const-string v2, "launcher.add_span_x"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/bD;->l:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    const-string v2, "launcher.add_span_y"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/bD;->m:I

    const-string v0, "launcher.add_widget_info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->v:Landroid/appwidget/AppWidgetProviderInfo;

    const-string v0, "launcher.add_widget_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Launcher;->w:I

    iput-boolean v9, p0, Lcom/android/launcher3/Launcher;->M:Z

    iput-boolean v9, p0, Lcom/android/launcher3/Launcher;->L:Z

    :cond_5
    const-string v0, "launcher.rename_folder"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "launcher.rename_folder_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    sget-object v0, Lcom/android/launcher3/Launcher;->Y:Ljava/util/HashMap;

    invoke-static {p0, v0, v2, v3}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher3/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->y:Lcom/android/launcher3/bk;

    iput-boolean v9, p0, Lcom/android/launcher3/Launcher;->L:Z

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    if-eqz v0, :cond_8

    const-string v0, "apps_customize_currentTab"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(Ljava/lang/String;)Lcom/android/launcher3/r;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(Lcom/android/launcher3/r;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->p(I)V

    :cond_7
    const-string v0, "apps_customize_currentIndex"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->b(I)V

    :cond_8
    const-string v0, "launcher.view_ids"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->d:Ljava/util/HashMap;

    :cond_9
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->L:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/launcher3/Launcher;->Q:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v0, v9, v12}, Lcom/android/launcher3/cO;->a(ZI)V

    :cond_a
    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->Q()V

    invoke-virtual {p0, v9}, Lcom/android/launcher3/Launcher;->e(Z)V

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->aj:Landroid/content/SharedPreferences;

    const-string v1, "launcher.first_run_activity_displayed"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->f()V

    :goto_2
    return-void

    :cond_c
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->G()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher3/cO;->a(ZI)V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->e()V

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->d()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ax:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->aq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v1}, Lcom/android/launcher3/cO;->e()V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/cB;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/cO;

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    invoke-virtual {v0}, Lcom/android/launcher3/cD;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->t:Lcom/android/launcher3/cD;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ac:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v0}, Lcom/android/launcher3/cO;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->o:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->a()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->n()V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    invoke-static {}, Lcom/android/launcher3/cw;->a()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->U:Z

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->W:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->aw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->W:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->S()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v4, v1

    :goto_0
    if-nez v2, :cond_2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z

    move-result v0

    :goto_2
    return v0

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->T()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v3, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    if-ne v0, v3, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->U()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/L;

    if-nez v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->V()Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    invoke-virtual {v3}, Lcom/android/launcher3/ap;->b()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v4, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->f(Landroid/view/View;)Z

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->an()Z

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->z:Lcom/android/launcher3/Hotseat;

    iget v5, v0, Lcom/android/launcher3/L;->b:I

    iget v6, v0, Lcom/android/launcher3/L;->c:I

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/Hotseat;->a(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->d(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    instance-of v3, v4, Lcom/android/launcher3/Folder;

    if-nez v3, :cond_5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/L;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/high16 v4, 0x400000

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->p()V

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->V:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_1

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->al()V

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v5, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->l()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Workspace;->c(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->v()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->y()V

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->a()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->H:Lcom/android/launcher3/cv;

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->K:Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->c()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->e()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ad()Lcom/android/launcher3/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ad()Lcom/android/launcher3/cr;

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->v()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->al()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->am()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->f(Z)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->t(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, La/a/a/c/d;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v2}, La/a/a/c/d;->b(Landroid/content/Context;Z)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->H:Lcom/android/launcher3/cv;

    sget-object v4, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    if-ne v0, v4, :cond_b

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/launcher3/cv;->a:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->H:Lcom/android/launcher3/cv;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v4, Lcom/android/launcher3/cv;->b:Lcom/android/launcher3/cv;

    if-ne v0, v4, :cond_c

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->m:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ag:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->K:Z

    sput-boolean v2, Lcom/android/launcher3/Launcher;->Q:Z

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->L:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->N:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->J:Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    const/16 v3, -0x3e9

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/cO;->a(ZI)V

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->L:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->N:Z

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Z)V

    :cond_4
    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v1, v2

    :goto_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ap:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->ap:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->a(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->s()V

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ac()V

    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->a(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->c(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->Q()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ad()Lcom/android/launcher3/cr;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ah()Z

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ap()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->ai()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->H:Lcom/android/launcher3/cv;

    sget-object v4, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->l()Lcom/android/launcher3/r;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/launcher3/Launcher;->a(ZLcom/android/launcher3/r;Z)V

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    move-object v0, v3

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->R:Lcom/android/launcher3/cO;

    invoke-virtual {v0}, Lcom/android/launcher3/cO;->e()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->r()V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->as()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    invoke-virtual {v1}, Lcom/android/launcher3/cv;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->v()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v0, v0, Lcom/android/launcher3/bD;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v0, v0, Lcom/android/launcher3/bD;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->M:Z

    if-eqz v0, :cond_1

    const-string v0, "launcher.add_container"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v1, v1, Lcom/android/launcher3/bD;->h:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "launcher.add_screen"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget-wide v1, v1, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "launcher.add_cell_x"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_cell_y"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_span_x"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_span_y"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->u:Lcom/android/launcher3/bD;

    iget v1, v1, Lcom/android/launcher3/bD;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_widget_info"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->v:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "launcher.add_widget_id"

    iget v1, p0, Lcom/android/launcher3/Launcher;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->y:Lcom/android/launcher3/bk;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->M:Z

    if-eqz v0, :cond_2

    const-string v0, "launcher.rename_folder"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "launcher.rename_folder_id"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->y:Lcom/android/launcher3/bk;

    iget-wide v1, v1, Lcom/android/launcher3/bk;->f:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->l()Lcom/android/launcher3/r;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/r;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "apps_customize_currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c()I

    move-result v0

    const-string v1, "apps_customize_currentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v0, "launcher.view_ids"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return v1
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/aK;->a(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/aK;->a(Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->C:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->c()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Launcher;->Q:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->V:Z

    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->M:Z

    return-void
.end method

.method public final q()Lcom/android/launcher3/ap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->p:Lcom/android/launcher3/ap;

    return-object v0
.end method

.method protected final r()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/launcher3/LauncherWallpaperPickerActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final s()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->Z:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/bO;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bO;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->Z:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->Z:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->M:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->a(ZLjava/lang/Runnable;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->I:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "source"

    const-string v1, "launcher-search"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->e()Landroid/graphics/Rect;

    move-result-object v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final v()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->l:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->c()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Folder;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->r:Lcom/android/launcher3/cG;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/cG;->dismissFolderCling(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v1, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->H:Lcom/android/launcher3/cv;

    sget-object v1, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final x()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/fU;ZLjava/lang/Runnable;)V

    sget-object v0, Lcom/android/launcher3/cv;->d:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    :cond_0
    return-void
.end method

.method final y()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    sget-object v1, Lcom/android/launcher3/cv;->d:Lcom/android/launcher3/cv;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->D:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->l()Lcom/android/launcher3/r;

    move-result-object v0

    invoke-direct {p0, v2, v2, v0}, Lcom/android/launcher3/Launcher;->a(ZZLcom/android/launcher3/r;)V

    sget-object v0, Lcom/android/launcher3/cv;->c:Lcom/android/launcher3/cv;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->a:Lcom/android/launcher3/cv;

    :cond_0
    return-void
.end method

.method public final z()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->F:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f040021

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->F:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->B:Lcom/android/launcher3/SearchDropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->F:Landroid/view/View;

    return-object v0
.end method
