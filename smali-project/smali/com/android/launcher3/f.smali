.class final Lcom/android/launcher3/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/e;


# direct methods
.method constructor <init>(Lcom/android/launcher3/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/f;->a:Lcom/android/launcher3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/f;->a:Lcom/android/launcher3/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/e;->a(Z)V

    return-void
.end method
