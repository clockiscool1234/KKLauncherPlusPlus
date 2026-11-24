.class final Lcom/android/launcher3/bX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bX;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bX;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/bX;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/bX;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/bX;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/bX;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bX;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/bX;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/bX;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/bX;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
