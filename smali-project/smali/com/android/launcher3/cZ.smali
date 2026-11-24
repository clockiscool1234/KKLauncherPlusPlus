.class final Lcom/android/launcher3/cZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Landroid/content/ContentValues;

.field private final synthetic d:Lcom/android/launcher3/bD;

.field private final synthetic e:J

.field private final synthetic f:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher3/bD;J[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cZ;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher3/cZ;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher3/cZ;->c:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher3/cZ;->d:Lcom/android/launcher3/bD;

    iput-wide p5, p0, Lcom/android/launcher3/cZ;->e:J

    iput-object p7, p0, Lcom/android/launcher3/cZ;->f:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cZ;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher3/cZ;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/cZ;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/cZ;->d:Lcom/android/launcher3/bD;

    iget-wide v1, p0, Lcom/android/launcher3/cZ;->e:J

    iget-object v3, p0, Lcom/android/launcher3/cZ;->f:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/bD;J[Ljava/lang/StackTraceElement;)V

    return-void
.end method
