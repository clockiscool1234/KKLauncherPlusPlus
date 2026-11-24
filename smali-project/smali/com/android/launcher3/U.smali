.class final Lcom/android/launcher3/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Cling;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Cling;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/U;->a:Lcom/android/launcher3/Cling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/U;->a:Lcom/android/launcher3/Cling;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Cling;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/U;->a:Lcom/android/launcher3/Cling;

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->requestFocus()Z

    return-void
.end method
