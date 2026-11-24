.class final Lcom/android/launcher3/bY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bY;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bY;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher3/bY;->c:I

    iput p4, p0, Lcom/android/launcher3/bY;->d:I

    iput-boolean p5, p0, Lcom/android/launcher3/bY;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/bY;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bY;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/bY;->c:I

    iget v3, p0, Lcom/android/launcher3/bY;->d:I

    iget-boolean v4, p0, Lcom/android/launcher3/bY;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->a(Ljava/util/ArrayList;IIZ)V

    return-void
.end method
