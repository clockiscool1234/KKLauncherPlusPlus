.class final Lcom/android/launcher3/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ce;->a:Lcom/android/launcher3/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher3/ce;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/ce;->a:Lcom/android/launcher3/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher3/ce;->b:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->d(Z)V

    return-void
.end method
