.class final Lcom/android/launcher3/cp;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/cp;->a:Lcom/android/launcher3/Launcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cp;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->i(Lcom/android/launcher3/Launcher;)V

    return-void
.end method
