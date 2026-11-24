.class final Lcom/android/launcher3/cY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/android/launcher3/bD;

.field private final synthetic c:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/android/launcher3/bD;[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-wide p1, p0, Lcom/android/launcher3/cY;->a:J

    iput-object p3, p0, Lcom/android/launcher3/cY;->b:Lcom/android/launcher3/bD;

    iput-object p4, p0, Lcom/android/launcher3/cY;->c:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/launcher3/cY;->a:J

    iget-object v0, p0, Lcom/android/launcher3/cY;->b:Lcom/android/launcher3/bD;

    iget-object v4, p0, Lcom/android/launcher3/cY;->c:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher3/cO;->a(JLcom/android/launcher3/bD;[Ljava/lang/StackTraceElement;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
