.class public final Lcom/android/launcher3/eF;
.super Lcom/android/launcher3/fj;


# instance fields
.field private a:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/fj;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/eF;->a:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/eF;)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eF;->a:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/eS;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher3/eF;->a:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/eF;->a:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/eS;->a(Landroid/content/Intent;I)V

    return-void
.end method
