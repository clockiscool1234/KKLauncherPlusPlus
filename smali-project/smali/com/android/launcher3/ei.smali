.class final Lcom/android/launcher3/ei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/PagedViewIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedViewIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ei;->a:Lcom/android/launcher3/PagedViewIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ei;->a:Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedViewIcon;->refreshDrawableState()V

    return-void
.end method
