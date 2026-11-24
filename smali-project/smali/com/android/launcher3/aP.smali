.class final Lcom/android/launcher3/aP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/dU;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aP;->a:Lcom/android/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/aP;->a:Lcom/android/launcher3/Folder;

    iget-object v1, p0, Lcom/android/launcher3/aP;->a:Lcom/android/launcher3/Folder;

    invoke-static {v1}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/aP;->a:Lcom/android/launcher3/Folder;

    invoke-static {v2}, Lcom/android/launcher3/Folder;->b(Lcom/android/launcher3/Folder;)[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;[I[I)V

    return-void
.end method
