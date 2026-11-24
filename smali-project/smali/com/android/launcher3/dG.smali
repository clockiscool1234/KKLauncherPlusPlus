.class public final Lcom/android/launcher3/dG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/dE;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://nl.ndsc.kitkatlauncher.settings/workspaceScreens?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/dG;->a:Landroid/net/Uri;

    return-void
.end method
