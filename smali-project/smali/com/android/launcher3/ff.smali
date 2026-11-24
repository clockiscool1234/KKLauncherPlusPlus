.class public final Lcom/android/launcher3/ff;
.super Lcom/android/launcher3/fj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/fj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/eS;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/eS;->a(Landroid/content/Intent;I)V

    return-void
.end method
