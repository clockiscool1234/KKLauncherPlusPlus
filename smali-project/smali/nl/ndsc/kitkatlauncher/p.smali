.class public final Lnl/ndsc/kitkatlauncher/p;
.super Landroid/app/DialogFragment;


# instance fields
.field a:Landroid/widget/NumberPicker;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Lnl/ndsc/kitkatlauncher/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a(I)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private a()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->b:Landroid/view/View;

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/p;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v0, 0x7f10002a

    invoke-direct {p0, v0}, Lnl/ndsc/kitkatlauncher/p;->a(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/c/d;->e(Landroid/content/Context;I)V

    iget v1, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/p;->d:Lnl/ndsc/kitkatlauncher/f;

    iget v2, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lnl/ndsc/kitkatlauncher/f;->a(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lnl/ndsc/kitkatlauncher/p;->d:Lnl/ndsc/kitkatlauncher/f;

    iget v1, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    sub-int v8, v1, v0

    iget-object v0, v7, Lnl/ndsc/kitkatlauncher/f;->a:Landroid/content/ContentResolver;

    iget-object v1, v7, Lnl/ndsc/kitkatlauncher/f;->b:Landroid/net/Uri;

    const-string v5, "screenRank"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v3, v8

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v7, Lnl/ndsc/kitkatlauncher/f;->a:Landroid/content/ContentResolver;

    iget-object v5, v7, Lnl/ndsc/kitkatlauncher/f;->b:Landroid/net/Uri;

    const-string v8, "_id=?"

    new-array v9, v10, [Ljava/lang/String;

    aput-object v0, v9, v6

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v4, v7, Lnl/ndsc/kitkatlauncher/f;->a:Landroid/content/ContentResolver;

    iget-object v5, v7, Lnl/ndsc/kitkatlauncher/f;->c:Landroid/net/Uri;

    const-string v8, "screen=?"

    new-array v9, v10, [Ljava/lang/String;

    aput-object v0, v9, v6

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/p;Landroid/widget/NumberPicker;II)V
    .locals 3

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/p;->a()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    if-ge p3, v1, :cond_1

    iget v1, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    sub-int/2addr v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "1 screen will be deleted"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " screens will be deleted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lnl/ndsc/kitkatlauncher/p;)Landroid/widget/TextView;
    .locals 1

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/p;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const v9, 0x7f100029

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnl/ndsc/kitkatlauncher/f;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lnl/ndsc/kitkatlauncher/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->d:Lnl/ndsc/kitkatlauncher/f;

    new-instance v1, Lnl/ndsc/kitkatlauncher/f;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lnl/ndsc/kitkatlauncher/f;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lnl/ndsc/kitkatlauncher/f;->a:Landroid/content/ContentResolver;

    iget-object v1, v1, Lnl/ndsc/kitkatlauncher/f;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput v1, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040016

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->b:Landroid/view/View;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Number of Screens"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Save"

    new-instance v3, Lnl/ndsc/kitkatlauncher/q;

    invoke-direct {v3, p0}, Lnl/ndsc/kitkatlauncher/q;-><init>(Lnl/ndsc/kitkatlauncher/p;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    new-instance v3, Lnl/ndsc/kitkatlauncher/r;

    invoke-direct {v3, p0}, Lnl/ndsc/kitkatlauncher/r;-><init>(Lnl/ndsc/kitkatlauncher/p;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->b:Landroid/view/View;

    const v2, 0x7f10002b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    iget v2, p0, Lnl/ndsc/kitkatlauncher/p;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    new-instance v2, Lnl/ndsc/kitkatlauncher/u;

    invoke-direct {v2, p0}, Lnl/ndsc/kitkatlauncher/u;-><init>(Lnl/ndsc/kitkatlauncher/p;)V

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->l(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v9}, Lnl/ndsc/kitkatlauncher/p;->a(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v8}, Landroid/widget/NumberPicker;->setVisibility(I)V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/p;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, v9}, Lnl/ndsc/kitkatlauncher/p;->a(I)Landroid/widget/RadioButton;

    move-result-object v0

    new-instance v2, Lnl/ndsc/kitkatlauncher/s;

    invoke-direct {v2, p0}, Lnl/ndsc/kitkatlauncher/s;-><init>(Lnl/ndsc/kitkatlauncher/p;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f10002a

    invoke-direct {p0, v0}, Lnl/ndsc/kitkatlauncher/p;->a(I)Landroid/widget/RadioButton;

    move-result-object v0

    new-instance v2, Lnl/ndsc/kitkatlauncher/t;

    invoke-direct {v2, p0}, Lnl/ndsc/kitkatlauncher/t;-><init>(Lnl/ndsc/kitkatlauncher/p;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f10002a

    invoke-direct {p0, v0}, Lnl/ndsc/kitkatlauncher/p;->a(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v7}, Landroid/widget/NumberPicker;->setVisibility(I)V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/p;->a()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
