.class final Lcom/android/launcher3/cT;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/df;


# instance fields
.field private final synthetic a:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cO;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/cT;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/bD;Lcom/android/launcher3/bD;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cT;->a:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
