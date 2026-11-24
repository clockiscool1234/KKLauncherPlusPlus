.class final Lcom/android/launcher3/cS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/df;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cO;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/cS;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/bD;Lcom/android/launcher3/bD;Landroid/content/ComponentName;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/cS;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
