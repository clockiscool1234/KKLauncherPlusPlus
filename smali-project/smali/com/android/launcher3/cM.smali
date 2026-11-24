.class final Lcom/android/launcher3/cM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/cL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cM;->a:Lcom/android/launcher3/cL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cM;->a:Lcom/android/launcher3/cL;

    iget-object v0, v0, Lcom/android/launcher3/cL;->a:Lcom/android/launcher3/cG;

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->g()V

    return-void
.end method
