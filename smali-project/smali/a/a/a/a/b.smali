.class final La/a/a/a/b;
.super La/a/a/a/w;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:La/a/a/a/a;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:Ljava/lang/CharSequence;

.field j:I

.field k:Ljava/lang/CharSequence;

.field private l:La/a/a/a/p;

.field private m:La/a/a/a/a;


# direct methods
.method public constructor <init>(La/a/a/a/p;)V
    .locals 1

    invoke-direct {p0}, La/a/a/a/w;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b;->g:I

    iput-object p1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 4

    iget-boolean v0, p0, La/a/a/a/b;->e:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/a/a/b;->a:La/a/a/a/a;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, v2, La/a/a/a/a;->d:La/a/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, v2, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v0, La/a/a/a/e;->r:I

    add-int/2addr v1, p1

    iput v1, v0, La/a/a/a/e;->r:I

    :cond_2
    iget-object v0, v2, La/a/a/a/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, v2, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, v2, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    iget v3, v0, La/a/a/a/e;->r:I

    add-int/2addr v3, p1

    iput v3, v0, La/a/a/a/e;->r:I

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, v2, La/a/a/a/a;->a:La/a/a/a/a;

    move-object v2, v0

    goto :goto_0
.end method

.method final a(La/a/a/a/a;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/b;->a:La/a/a/a/a;

    if-nez v0, :cond_0

    iput-object p1, p0, La/a/a/a/b;->m:La/a/a/a/a;

    iput-object p1, p0, La/a/a/a/b;->a:La/a/a/a/a;

    :goto_0
    iput v1, p1, La/a/a/a/a;->e:I

    iput v1, p1, La/a/a/a/a;->f:I

    iput v1, p1, La/a/a/a/a;->g:I

    iput v1, p1, La/a/a/a/a;->h:I

    iget v0, p0, La/a/a/a/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b;->b:I

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/a/b;->m:La/a/a/a/a;

    iput-object v0, p1, La/a/a/a/a;->b:La/a/a/a/a;

    iget-object v0, p0, La/a/a/a/b;->m:La/a/a/a/a;

    iput-object p1, v0, La/a/a/a/a;->a:La/a/a/a/a;

    iput-object p1, p0, La/a/a/a/b;->m:La/a/a/a/a;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/b;->g:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, La/a/a/a/b;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, La/a/a/a/b;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/b;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/b;->i:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, La/a/a/a/b;->j:I

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/b;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/b;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, La/a/a/a/b;->a:La/a/a/a/a;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, La/a/a/a/b;->a:La/a/a/a/a;

    move v2, v1

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_c

    iget v0, v3, La/a/a/a/a;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, La/a/a/a/a;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v0, v3, La/a/a/a/a;->e:I

    if-nez v0, :cond_5

    iget v0, v3, La/a/a/a/a;->f:I

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, La/a/a/a/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, La/a/a/a/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget v0, v3, La/a/a/a/a;->g:I

    if-nez v0, :cond_7

    iget v0, v3, La/a/a/a/a;->h:I

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, La/a/a/a/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, La/a/a/a/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_2
    iget-object v5, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v5, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    :cond_9
    if-nez v0, :cond_a

    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v3, v3, La/a/a/a/a;->a:La/a/a/a/a;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v6}, La/a/a/a/b;->a(I)V

    iget-object v0, p0, La/a/a/a/b;->m:La/a/a/a/a;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    iget v0, v3, La/a/a/a/a;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, La/a/a/a/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v3, La/a/a/a/a;->h:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v4, p0, La/a/a/a/b;->c:I

    invoke-static {v4}, La/a/a/a/p;->c(I)I

    move-result v4

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v4, v5}, La/a/a/a/p;->a(La/a/a/a/e;II)V

    :cond_0
    :goto_1
    iget-object v0, v3, La/a/a/a/a;->b:La/a/a/a/a;

    move-object v3, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    if-eqz v0, :cond_1

    iget v1, v3, La/a/a/a/a;->h:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v4, p0, La/a/a/a/b;->c:I

    invoke-static {v4}, La/a/a/a/p;->c(I)I

    move-result v4

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v4, v5}, La/a/a/a/p;->a(La/a/a/a/e;II)V

    :cond_1
    iget-object v0, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_2
    iget-object v0, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, v3, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    iget v4, v3, La/a/a/a/a;->g:I

    iput v4, v0, La/a/a/a/e;->F:I

    iget-object v4, p0, La/a/a/a/b;->l:La/a/a/a/p;

    invoke-virtual {v4, v0, v2}, La/a/a/a/p;->a(La/a/a/a/e;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_2
    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v3, La/a/a/a/a;->g:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    invoke-virtual {v1, v0, v2}, La/a/a/a/p;->a(La/a/a/a/e;Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v3, La/a/a/a/a;->g:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v4, p0, La/a/a/a/b;->c:I

    invoke-static {v4}, La/a/a/a/p;->c(I)I

    move-result v4

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v4, v5}, La/a/a/a/p;->c(La/a/a/a/e;II)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v3, La/a/a/a/a;->h:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v4, p0, La/a/a/a/b;->c:I

    invoke-static {v4}, La/a/a/a/p;->c(I)I

    move-result v4

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v4, v5}, La/a/a/a/p;->b(La/a/a/a/e;II)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v3, La/a/a/a/a;->g:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v4, p0, La/a/a/a/b;->c:I

    invoke-static {v4}, La/a/a/a/p;->c(I)I

    move-result v4

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v4, v5}, La/a/a/a/p;->e(La/a/a/a/e;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, v3, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v3, La/a/a/a/a;->g:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v4, p0, La/a/a/a/b;->c:I

    invoke-static {v4}, La/a/a/a/p;->c(I)I

    move-result v4

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v4, v5}, La/a/a/a/p;->d(La/a/a/a/e;II)V

    goto/16 :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v1, v1, La/a/a/a/p;->d:I

    iget v2, p0, La/a/a/a/b;->c:I

    invoke-static {v2}, La/a/a/a/p;->c(I)I

    move-result v2

    iget v3, p0, La/a/a/a/b;->d:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, La/a/a/a/p;->a(IIIZ)V

    :cond_3
    iget v0, p0, La/a/a/a/b;->g:I

    if-ltz v0, :cond_4

    iget-object v0, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v1, p0, La/a/a/a/b;->g:I

    invoke-virtual {v0, v1}, La/a/a/a/p;->b(I)V

    iput v6, p0, La/a/a/a/b;->g:I

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, La/a/a/a/b;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, La/a/a/a/b;->g:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v8}, La/a/a/a/b;->a(I)V

    iget-object v0, p0, La/a/a/a/b;->a:La/a/a/a/a;

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_9

    iget v0, v4, La/a/a/a/a;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, La/a/a/a/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v4, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v4, La/a/a/a/a;->e:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    invoke-virtual {v1, v0, v2}, La/a/a/a/p;->a(La/a/a/a/e;Z)V

    :cond_1
    :goto_1
    iget-object v0, v4, La/a/a/a/a;->a:La/a/a/a/a;

    move-object v4, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v4, La/a/a/a/a;->d:La/a/a/a/e;

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget-object v1, v1, La/a/a/a/p;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    move v1, v2

    move-object v3, v0

    :goto_2
    iget-object v0, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget-object v0, v0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget-object v0, v0, La/a/a/a/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/e;

    if-eqz v3, :cond_2

    iget v5, v0, La/a/a/a/e;->x:I

    iget v6, v3, La/a/a/a/e;->x:I

    if-ne v5, v6, :cond_3

    :cond_2
    if-ne v0, v3, :cond_4

    const/4 v3, 0x0

    iput-object v3, v4, La/a/a/a/a;->d:La/a/a/a/e;

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v5, v4, La/a/a/a/a;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, La/a/a/a/a;->i:Ljava/util/ArrayList;

    :cond_5
    iget-object v5, v4, La/a/a/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v4, La/a/a/a/a;->f:I

    iput v5, v0, La/a/a/a/e;->F:I

    iget-boolean v5, p0, La/a/a/a/b;->e:Z

    if-eqz v5, :cond_6

    iget v5, v0, La/a/a/a/e;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, La/a/a/a/e;->r:I

    :cond_6
    iget-object v5, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v6, p0, La/a/a/a/b;->c:I

    iget v7, p0, La/a/a/a/b;->d:I

    invoke-virtual {v5, v0, v6, v7}, La/a/a/a/p;->a(La/a/a/a/e;II)V

    goto :goto_3

    :cond_7
    move-object v3, v0

    :cond_8
    if-eqz v3, :cond_1

    iget v0, v4, La/a/a/a/a;->e:I

    iput v0, v3, La/a/a/a/e;->F:I

    iget-object v0, p0, La/a/a/a/b;->l:La/a/a/a/p;

    invoke-virtual {v0, v3, v2}, La/a/a/a/p;->a(La/a/a/a/e;Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v4, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v4, La/a/a/a/a;->f:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v3, p0, La/a/a/a/b;->c:I

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v3, v5}, La/a/a/a/p;->a(La/a/a/a/e;II)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v4, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v4, La/a/a/a/a;->f:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v3, p0, La/a/a/a/b;->c:I

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v3, v5}, La/a/a/a/p;->b(La/a/a/a/e;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v4, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v4, La/a/a/a/a;->e:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v3, p0, La/a/a/a/b;->c:I

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v3, v5}, La/a/a/a/p;->c(La/a/a/a/e;II)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, v4, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v4, La/a/a/a/a;->f:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v3, p0, La/a/a/a/b;->c:I

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v3, v5}, La/a/a/a/p;->d(La/a/a/a/e;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, v4, La/a/a/a/a;->d:La/a/a/a/e;

    iget v1, v4, La/a/a/a/a;->e:I

    iput v1, v0, La/a/a/a/e;->F:I

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v3, p0, La/a/a/a/b;->c:I

    iget v5, p0, La/a/a/a/b;->d:I

    invoke-virtual {v1, v0, v3, v5}, La/a/a/a/p;->e(La/a/a/a/e;II)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget-object v1, p0, La/a/a/a/b;->l:La/a/a/a/p;

    iget v1, v1, La/a/a/a/p;->d:I

    iget v2, p0, La/a/a/a/b;->c:I

    iget v3, p0, La/a/a/a/b;->d:I

    invoke-virtual {v0, v1, v2, v3, v8}, La/a/a/a/p;->a(IIIZ)V

    iget-boolean v0, p0, La/a/a/a/b;->e:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, La/a/a/a/b;->l:La/a/a/a/p;

    invoke-virtual {v0, p0}, La/a/a/a/p;->a(La/a/a/a/b;)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/b;->g:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, La/a/a/a/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
