.class final Lcom/android/launcher3/cJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/cG;

.field private final synthetic b:Lcom/android/launcher3/Cling;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cG;Lcom/android/launcher3/Cling;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cJ;->a:Lcom/android/launcher3/cG;

    iput-object p2, p0, Lcom/android/launcher3/cJ;->b:Lcom/android/launcher3/Cling;

    iput-object p3, p0, Lcom/android/launcher3/cJ;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/cJ;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/cJ;->b:Lcom/android/launcher3/Cling;

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->c()V

    iget-object v0, p0, Lcom/android/launcher3/cJ;->a:Lcom/android/launcher3/cG;

    invoke-static {v0}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/cG;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/cJ;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/launcher3/cJ;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cJ;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
