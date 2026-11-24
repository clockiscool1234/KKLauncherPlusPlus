.class final Lcom/android/launcher3/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizeTabHost;Lcom/android/launcher3/AppsCustomizePagedView;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/t;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/t;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    return-object v0
.end method
