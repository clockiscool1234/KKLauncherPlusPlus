.class final Lcom/android/launcher3/fM;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fM;->a:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/android/launcher3/WallpaperCropActivity;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fM;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fM;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/fM;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/fM;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v3}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher3/LauncherWallpaperPickerActivity;->a(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V

    const/4 v0, 0x0

    return-object v0
.end method
