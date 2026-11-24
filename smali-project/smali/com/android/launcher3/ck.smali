.class final Lcom/android/launcher3/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ck;->a:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/ck;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/ck;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->h(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/ck;->a:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    return-void
.end method
