.class final Lcom/android/launcher3/cL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/launcher3/cG;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cL;->a:Lcom/android/launcher3/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/cL;->a:Lcom/android/launcher3/cG;

    invoke-static {v0}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/cG;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const v1, 0x7f10003d

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Cling;

    new-instance v2, Lcom/android/launcher3/cM;

    invoke-direct {v2, p0}, Lcom/android/launcher3/cM;-><init>(Lcom/android/launcher3/cL;)V

    iget-object v0, p0, Lcom/android/launcher3/cL;->a:Lcom/android/launcher3/cG;

    const-string v3, "cling_gel.migration.dismissed"

    const/16 v4, 0xc8

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/cG;Lcom/android/launcher3/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    return-void
.end method
