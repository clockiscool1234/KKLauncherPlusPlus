.class final Lcom/android/launcher3/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cc;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/cc;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cc;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/cc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->a(Ljava/util/HashMap;)V

    return-void
.end method
