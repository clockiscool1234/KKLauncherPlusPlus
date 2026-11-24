.class final Lcom/android/launcher3/dO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/MemoryDumpActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/MemoryDumpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dO;->a:Lcom/android/launcher3/MemoryDumpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dO;->a:Lcom/android/launcher3/MemoryDumpActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/MemoryDumpActivity;->finish()V

    return-void
.end method
