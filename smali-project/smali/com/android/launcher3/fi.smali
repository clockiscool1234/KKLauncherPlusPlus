.class final Lcom/android/launcher3/fi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/fh;

.field private final synthetic b:Lcom/android/launcher3/eS;


# direct methods
.method constructor <init>(Lcom/android/launcher3/fh;Lcom/android/launcher3/eS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fi;->a:Lcom/android/launcher3/fh;

    iput-object p2, p0, Lcom/android/launcher3/fi;->b:Lcom/android/launcher3/eS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fi;->a:Lcom/android/launcher3/fh;

    invoke-static {v0}, Lcom/android/launcher3/fh;->a(Lcom/android/launcher3/fh;)Lcom/android/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/fi;->a:Lcom/android/launcher3/fh;

    invoke-static {v0}, Lcom/android/launcher3/fh;->a(Lcom/android/launcher3/fh;)Lcom/android/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/f;->b()Lcom/android/b/c;

    move-result-object v0

    sget-object v1, Lcom/android/b/c;->b:Lcom/android/b/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/fi;->b:Lcom/android/launcher3/eS;

    iget-object v1, p0, Lcom/android/launcher3/fi;->a:Lcom/android/launcher3/fh;

    iget-object v1, v1, Lcom/android/launcher3/fh;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher3/eS;->a(Lcom/android/launcher3/eS;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/fi;->b:Lcom/android/launcher3/eS;

    invoke-static {v0}, Lcom/android/launcher3/eS;->a(Lcom/android/launcher3/eS;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/fi;->a:Lcom/android/launcher3/fh;

    iget-object v0, v0, Lcom/android/launcher3/fh;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/fi;->a:Lcom/android/launcher3/fh;

    iget-object v1, v1, Lcom/android/launcher3/fh;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/fi;->b:Lcom/android/launcher3/eS;

    iget-object v1, p0, Lcom/android/launcher3/fi;->b:Lcom/android/launcher3/eS;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Lcom/android/launcher3/eS;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
