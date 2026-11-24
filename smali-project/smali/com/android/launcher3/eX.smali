.class final Lcom/android/launcher3/eX;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Lcom/android/launcher3/eS;

.field private final synthetic b:Landroid/widget/LinearLayout;

.field private final synthetic c:Lcom/android/launcher3/dK;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;Landroid/widget/LinearLayout;Lcom/android/launcher3/dK;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eX;->a:Lcom/android/launcher3/eS;

    iput-object p2, p0, Lcom/android/launcher3/eX;->b:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/launcher3/eX;->c:Lcom/android/launcher3/dK;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/eX;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/eX;->a:Lcom/android/launcher3/eS;

    iget-object v1, p0, Lcom/android/launcher3/eX;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/eX;->c:Lcom/android/launcher3/dK;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/eS;->a(Lcom/android/launcher3/eS;Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    iget-object v0, p0, Lcom/android/launcher3/eX;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->h(Lcom/android/launcher3/eS;)V

    iget-object v0, p0, Lcom/android/launcher3/eX;->a:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->i(Lcom/android/launcher3/eS;)V

    return-void
.end method
