.class final Lcom/android/launcher3/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dg;

.field private final synthetic b:Lcom/android/launcher3/de;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dr;->a:Lcom/android/launcher3/dg;

    iput-object p2, p0, Lcom/android/launcher3/dr;->b:Lcom/android/launcher3/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dr;->a:Lcom/android/launcher3/dg;

    iget-object v1, p0, Lcom/android/launcher3/dr;->b:Lcom/android/launcher3/de;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dg;->a(Lcom/android/launcher3/de;)Lcom/android/launcher3/de;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/launcher3/de;->C()V

    :cond_0
    return-void
.end method
