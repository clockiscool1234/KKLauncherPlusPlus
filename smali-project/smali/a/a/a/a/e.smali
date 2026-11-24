.class public La/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final M:La/a/a/c/l;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:I

.field G:Landroid/view/ViewGroup;

.field H:Landroid/view/View;

.field I:Landroid/view/View;

.field J:Z

.field K:Z

.field L:La/a/a/a/y;

.field private N:Z

.field private O:Z

.field a:I

.field b:Landroid/view/View;

.field c:I

.field d:Landroid/os/Bundle;

.field e:Landroid/util/SparseArray;

.field f:I

.field g:Ljava/lang/String;

.field h:Landroid/os/Bundle;

.field i:La/a/a/a/e;

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:I

.field s:La/a/a/a/p;

.field t:La/a/a/a/h;

.field u:La/a/a/a/p;

.field v:La/a/a/a/e;

.field w:I

.field x:I

.field y:Ljava/lang/String;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/c/l;

    invoke-direct {v0}, La/a/a/c/l;-><init>()V

    sput-object v0, La/a/a/a/e;->M:La/a/a/c/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/e;->a:I

    iput v1, p0, La/a/a/a/e;->f:I

    iput v1, p0, La/a/a/a/e;->j:I

    iput-boolean v2, p0, La/a/a/a/e;->D:Z

    iput-boolean v2, p0, La/a/a/a/e;->K:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)La/a/a/a/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La/a/a/a/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)La/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)La/a/a/a/e;
    .locals 4

    :try_start_0
    sget-object v0, La/a/a/a/e;->M:La/a/a/c/l;

    invoke-virtual {v0, p1}, La/a/a/c/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, La/a/a/a/e;->M:La/a/a/c/l;

    invoke-virtual {v1, p1, v0}, La/a/a/c/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object p2, v0, La/a/a/a/e;->h:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/a/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, La/a/a/a/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/a/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, La/a/a/a/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/a/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v0, La/a/a/a/e;->M:La/a/a/c/l;

    invoke-virtual {v0, p1}, La/a/a/c/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, La/a/a/a/e;->M:La/a/a/c/l;

    invoke-virtual {v1, p1, v0}, La/a/a/c/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, La/a/a/a/e;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 0

    return-void
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method public static h()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static i()V
    .locals 0

    return-void
.end method

.method public static l()V
    .locals 0

    return-void
.end method


# virtual methods
.method final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->e()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(ILa/a/a/a/e;)V
    .locals 2

    iput p1, p0, La/a/a/a/e;->f:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, La/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/e;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, La/a/a/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/e;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, La/a/a/a/e;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0, p1}, La/a/a/a/p;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->I:Landroid/view/View;

    iget-object v1, p0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->y:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->r:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->A:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/e;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, La/a/a/a/e;->s:La/a/a/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->s:La/a/a/a/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, La/a/a/a/e;->v:La/a/a/a/e;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->v:La/a/a/a/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, La/a/a/a/e;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->h:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, La/a/a/a/e;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, La/a/a/a/e;->i:La/a/a/a/e;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->i:La/a/a/a/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    iget v0, p0, La/a/a/a/e;->F:I

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->F:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, La/a/a/a/e;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->G:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, La/a/a/a/e;->H:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, La/a/a/a/e;->I:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->H:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, La/a/a/a/e;->b:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->b:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/e;->c:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, La/a/a/a/y;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, La/a/a/a/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method final a()Z
    .locals 1

    iget v0, p0, La/a/a/a/e;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/e;->z:Z

    if-nez v1, :cond_0

    iget-object v1, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0, p1}, La/a/a/a/p;->a(Landroid/view/Menu;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_0
    return v0
.end method

.method final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, La/a/a/a/e;->z:Z

    if-nez v1, :cond_0

    iget-object v1, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0, p1, p2}, La/a/a/a/p;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_0
    return v0
.end method

.method final a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/e;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0, p1}, La/a/a/a/p;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->e()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-nez v1, :cond_2

    new-instance v1, La/a/a/a/p;

    invoke-direct {v1}, La/a/a/a/p;-><init>()V

    iput-object v1, p0, La/a/a/a/e;->u:La/a/a/a/p;

    iget-object v1, p0, La/a/a/a/e;->u:La/a/a/a/p;

    iget-object v2, p0, La/a/a/a/e;->t:La/a/a/a/h;

    new-instance v3, La/a/a/a/f;

    invoke-direct {v3, p0}, La/a/a/a/f;-><init>(La/a/a/a/e;)V

    invoke-virtual {v1, v2, v3, p0}, La/a/a/a/p;->a(La/a/a/a/h;La/a/a/a/m;La/a/a/a/e;)V

    :cond_2
    iget-object v1, p0, La/a/a/a/e;->u:La/a/a/a/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, La/a/a/a/p;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->f()V

    :cond_3
    return-void
.end method

.method final b(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, La/a/a/a/e;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0, p1}, La/a/a/a/p;->b(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method final b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/e;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0, p1}, La/a/a/a/p;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->e()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->g()V

    :cond_2
    return-void
.end method

.method final d(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->d()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final e()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method final j()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/e;->f:I

    iput-object v2, p0, La/a/a/a/e;->g:Ljava/lang/String;

    iput-boolean v1, p0, La/a/a/a/e;->l:Z

    iput-boolean v1, p0, La/a/a/a/e;->m:Z

    iput-boolean v1, p0, La/a/a/a/e;->n:Z

    iput-boolean v1, p0, La/a/a/a/e;->o:Z

    iput-boolean v1, p0, La/a/a/a/e;->p:Z

    iput-boolean v1, p0, La/a/a/a/e;->q:Z

    iput v1, p0, La/a/a/a/e;->r:I

    iput-object v2, p0, La/a/a/a/e;->s:La/a/a/a/p;

    iput-object v2, p0, La/a/a/a/e;->u:La/a/a/a/p;

    iput-object v2, p0, La/a/a/a/e;->t:La/a/a/a/h;

    iput v1, p0, La/a/a/a/e;->w:I

    iput v1, p0, La/a/a/a/e;->x:I

    iput-object v2, p0, La/a/a/a/e;->y:Ljava/lang/String;

    iput-boolean v1, p0, La/a/a/a/e;->z:Z

    iput-boolean v1, p0, La/a/a/a/e;->A:Z

    iput-boolean v1, p0, La/a/a/a/e;->C:Z

    iput-object v2, p0, La/a/a/a/e;->L:La/a/a/a/y;

    iput-boolean v1, p0, La/a/a/a/e;->N:Z

    iput-boolean v1, p0, La/a/a/a/e;->O:Z

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    return-void
.end method

.method final m()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->e()V

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->b()Z

    :cond_0
    iput-boolean v3, p0, La/a/a/a/e;->E:Z

    iput-boolean v1, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->N:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, La/a/a/a/e;->N:Z

    iget-boolean v0, p0, La/a/a/a/e;->O:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, La/a/a/a/e;->O:Z

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    iget-object v1, p0, La/a/a/a/e;->g:Ljava/lang/String;

    iget-boolean v2, p0, La/a/a/a/e;->N:Z

    invoke-virtual {v0, v1, v2, v3}, La/a/a/a/h;->a(Ljava/lang/String;ZZ)La/a/a/a/y;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    :cond_1
    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->b()V

    :cond_2
    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_3

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->h()V

    :cond_4
    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->g()V

    :cond_5
    return-void
.end method

.method final n()V
    .locals 3

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->e()V

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->b()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->i()V

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->b()Z

    :cond_2
    return-void
.end method

.method final o()V
    .locals 1

    invoke-virtual {p0}, La/a/a/a/e;->onLowMemory()V

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->o()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    invoke-virtual {v0, p1, p2, p3}, La/a/a/a/h;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    return-void
.end method

.method final p()V
    .locals 3

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->j()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method final q()V
    .locals 3

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method final r()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->l()V

    :cond_0
    iget-boolean v0, p0, La/a/a/a/e;->N:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, La/a/a/a/e;->N:Z

    iget-boolean v0, p0, La/a/a/a/e;->O:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->O:Z

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    iget-object v1, p0, La/a/a/a/e;->g:Ljava/lang/String;

    iget-boolean v2, p0, La/a/a/a/e;->N:Z

    invoke-virtual {v0, v1, v2, v3}, La/a/a/a/h;->a(Ljava/lang/String;ZZ)La/a/a/a/y;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    :cond_1
    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    iget-boolean v0, v0, La/a/a/a/h;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->c()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->d()V

    goto :goto_0
.end method

.method final s()V
    .locals 3

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->m()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->f()V

    :cond_2
    return-void
.end method

.method final t()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/e;->u:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->n()V

    :cond_0
    iput-boolean v3, p0, La/a/a/a/e;->E:Z

    iput-boolean v1, p0, La/a/a/a/e;->E:Z

    iget-boolean v0, p0, La/a/a/a/e;->O:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, La/a/a/a/e;->O:Z

    iget-object v0, p0, La/a/a/a/e;->t:La/a/a/a/h;

    iget-object v1, p0, La/a/a/a/e;->g:Ljava/lang/String;

    iget-boolean v2, p0, La/a/a/a/e;->N:Z

    invoke-virtual {v0, v1, v2, v3}, La/a/a/a/h;->a(Ljava/lang/String;ZZ)La/a/a/a/y;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    :cond_1
    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/e;->L:La/a/a/a/y;

    invoke-virtual {v0}, La/a/a/a/y;->h()V

    :cond_2
    iget-boolean v0, p0, La/a/a/a/e;->E:Z

    if-nez v0, :cond_3

    new-instance v0, La/a/a/a/E;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/E;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, La/a/a/c/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, La/a/a/a/e;->f:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, La/a/a/a/e;->w:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/e;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, La/a/a/a/e;->y:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/e;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
