.class final Lcom/android/launcher3/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/launcher3/cO;

.field private b:I

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/cO;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/dt;->b:I

    iput-object p3, p0, Lcom/android/launcher3/dt;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->i(Lcom/android/launcher3/cO;)Lcom/android/launcher3/cB;

    invoke-static {}, Lcom/android/launcher3/cB;->b()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/dt;->c:[Ljava/lang/String;

    array-length v8, v7

    iget v0, p0, Lcom/android/launcher3/dt;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v0, v0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v0, v0, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v1, v1, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v1, v1, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v1, v1, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v1, v1, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v0, v0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v0, v0, Lcom/android/launcher3/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v3, v3, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v3, v3, Lcom/android/launcher3/b;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v3, v3, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v3, v3, Lcom/android/launcher3/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v3, v0

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v0, v0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v0, v0, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v0, v0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v0, v0, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v0, v0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v0, v0, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    move-object v5, v0

    :goto_2
    if-nez v5, :cond_3

    const-string v0, "Launcher.Model"

    const-string v1, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :pswitch_0
    move v0, v4

    :goto_4
    if-ge v0, v8, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v1, v1, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    aget-object v3, v7, v0

    invoke-virtual {v1, v6, v3}, Lcom/android/launcher3/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_1
    move v0, v4

    :goto_5
    if-ge v0, v8, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v1, v1, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    aget-object v3, v7, v0

    invoke-virtual {v1, v6, v3}, Lcom/android/launcher3/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->i(Lcom/android/launcher3/cO;)Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->g()Lcom/android/launcher3/fv;

    move-result-object v1

    aget-object v3, v7, v0

    invoke-static {v1, v3}, Lcom/android/launcher3/fr;->a(Lcom/android/launcher3/fv;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_2
    move v0, v4

    :goto_6
    if-ge v0, v8, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v1, v1, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    aget-object v3, v7, v0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->i(Lcom/android/launcher3/cO;)Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->g()Lcom/android/launcher3/fv;

    move-result-object v1

    aget-object v3, v7, v0

    invoke-static {v1, v3}, Lcom/android/launcher3/fr;->a(Lcom/android/launcher3/fv;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2
    move-object v5, v2

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    :goto_7
    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v10, v0, v1}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    :cond_4
    :goto_8
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/du;

    invoke-direct {v1, p0, v5, v3}, Lcom/android/launcher3/du;-><init>(Lcom/android/launcher3/dt;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;)V

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lcom/android/launcher3/dt;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const-string v0, "com.android.launcher3.prefs"

    invoke-virtual {v6, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->a(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/dv;

    invoke-direct {v2, p0, v5, v1, v9}, Lcom/android/launcher3/dv;-><init>(Lcom/android/launcher3/dt;Lcom/android/launcher3/de;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;)V

    :cond_b
    invoke-static {v6}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/dw;

    invoke-direct {v2, p0, v5, v0}, Lcom/android/launcher3/dw;-><init>(Lcom/android/launcher3/dt;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dx;

    invoke-direct {v1, p0, v5}, Lcom/android/launcher3/dx;-><init>(Lcom/android/launcher3/dt;Lcom/android/launcher3/de;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_c
    move-object v0, v2

    goto/16 :goto_7

    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-virtual {v10, v6, v2, v0, v1}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    goto/16 :goto_8

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/d;

    iget-object v0, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v10, v1, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-static {v0, v10}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/bD;)Z

    move-result v11

    if-eqz v11, :cond_f

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v11, v1, Lcom/android/launcher3/d;->q:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    invoke-static {v6, v0}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    goto :goto_9

    :cond_10
    iget v0, p0, Lcom/android/launcher3/dt;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move v0, v4

    :goto_a
    if-ge v0, v8, :cond_7

    aget-object v3, v7, v0

    invoke-static {v2, v3}, Lcom/android/launcher3/cO;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    aget-object v3, v7, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v3, v0}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-static {v6, v0}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    goto :goto_b

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v3, p0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    iget-object v0, v0, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-static {v3, v0}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-static {v6, v0}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    goto :goto_c

    :cond_14
    move-object v3, v2

    goto/16 :goto_1

    :cond_15
    move-object v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
