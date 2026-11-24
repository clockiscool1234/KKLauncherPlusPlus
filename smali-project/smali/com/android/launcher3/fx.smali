.class final Lcom/android/launcher3/fx;
.super Lcom/android/launcher3/cA;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Workspace;

.field private final synthetic b:Lcom/android/launcher3/CellLayout;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fx;->a:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/fx;->b:Lcom/android/launcher3/CellLayout;

    iput p3, p0, Lcom/android/launcher3/fx;->c:I

    invoke-direct {p0}, Lcom/android/launcher3/cA;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/fx;->b:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/fx;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->p(Lcom/android/launcher3/Workspace;)[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/fx;->c:I

    aget v1, v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/launcher3/fx;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/Workspace;->q(Lcom/android/launcher3/Workspace;)[F

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/fx;->c:I

    aget v2, v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    return-void
.end method
