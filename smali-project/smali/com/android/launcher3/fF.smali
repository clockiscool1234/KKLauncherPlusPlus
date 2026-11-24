.class final Lcom/android/launcher3/fF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Workspace;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Lcom/android/launcher3/aH;

.field private final synthetic d:Z

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fF;->a:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/fF;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/fF;->c:Lcom/android/launcher3/aH;

    iput-boolean p4, p0, Lcom/android/launcher3/fF;->d:Z

    iput-boolean p5, p0, Lcom/android/launcher3/fF;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/fF;->a:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/fF;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/fF;->c:Lcom/android/launcher3/aH;

    iget-boolean v3, p0, Lcom/android/launcher3/fF;->d:Z

    iget-boolean v4, p0, Lcom/android/launcher3/fF;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/fF;->a:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->b(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    return-void
.end method
