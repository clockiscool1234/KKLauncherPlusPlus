.class final Lcom/android/launcher3/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Lcom/android/launcher3/cF;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/cF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cd;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/cd;->b:Lcom/android/launcher3/cF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cd;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/cd;->b:Lcom/android/launcher3/cF;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/cF;)V

    return-void
.end method
