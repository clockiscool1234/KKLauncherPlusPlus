.class final Lcom/android/launcher3/bF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Lcom/android/launcher3/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bF;->a:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/bF;->b:I

    iput p3, p0, Lcom/android/launcher3/bF;->c:I

    iput-object p4, p0, Lcom/android/launcher3/bF;->d:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/bF;->a:Lcom/android/launcher3/Launcher;

    iget v1, p0, Lcom/android/launcher3/bF;->b:I

    iget v2, p0, Lcom/android/launcher3/bF;->c:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;II)V

    iget-object v0, p0, Lcom/android/launcher3/bF;->d:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->c(Z)V

    return-void
.end method
