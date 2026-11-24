.class final Lcom/android/launcher3/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/j;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/j;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c_()V

    return-void
.end method
