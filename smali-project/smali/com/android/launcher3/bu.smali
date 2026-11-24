.class final Lcom/android/launcher3/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Hotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Hotseat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bu;->a:Lcom/android/launcher3/Hotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/bu;->a:Lcom/android/launcher3/Hotseat;

    invoke-static {v0}, Lcom/android/launcher3/Hotseat;->a(Lcom/android/launcher3/Hotseat;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bu;->a:Lcom/android/launcher3/Hotseat;

    invoke-static {v0}, Lcom/android/launcher3/Hotseat;->a(Lcom/android/launcher3/Hotseat;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    :cond_0
    return-void
.end method
