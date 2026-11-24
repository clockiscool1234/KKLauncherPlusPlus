.class final La/a/a/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final c:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Landroid/os/Bundle;

.field b:La/a/a/a/e;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/v;

    invoke-direct {v0}, La/a/a/a/v;-><init>()V

    sput-object v0, La/a/a/a/u;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(La/a/a/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/u;->d:Ljava/lang/String;

    iget v0, p1, La/a/a/a/e;->f:I

    iput v0, p0, La/a/a/a/u;->e:I

    iget-boolean v0, p1, La/a/a/a/e;->o:Z

    iput-boolean v0, p0, La/a/a/a/u;->f:Z

    iget v0, p1, La/a/a/a/e;->w:I

    iput v0, p0, La/a/a/a/u;->g:I

    iget v0, p1, La/a/a/a/e;->x:I

    iput v0, p0, La/a/a/a/u;->h:I

    iget-object v0, p1, La/a/a/a/e;->y:Ljava/lang/String;

    iput-object v0, p0, La/a/a/a/u;->i:Ljava/lang/String;

    iget-boolean v0, p1, La/a/a/a/e;->B:Z

    iput-boolean v0, p0, La/a/a/a/u;->j:Z

    iget-boolean v0, p1, La/a/a/a/e;->A:Z

    iput-boolean v0, p0, La/a/a/a/u;->k:Z

    iget-object v0, p1, La/a/a/a/e;->h:Landroid/os/Bundle;

    iput-object v0, p0, La/a/a/a/u;->l:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/u;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, La/a/a/a/u;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, La/a/a/a/u;->f:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, La/a/a/a/u;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, La/a/a/a/u;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/u;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/u;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, La/a/a/a/u;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/u;->l:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/u;->a:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(La/a/a/a/h;La/a/a/a/e;)La/a/a/a/e;
    .locals 2

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/u;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/u;->l:Landroid/os/Bundle;

    invoke-virtual {p1}, La/a/a/a/h;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    iget-object v0, p0, La/a/a/a/u;->d:Ljava/lang/String;

    iget-object v1, p0, La/a/a/a/u;->l:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, La/a/a/a/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)La/a/a/a/e;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget-object v0, p0, La/a/a/a/u;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/u;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, La/a/a/a/h;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget-object v1, p0, La/a/a/a/u;->a:Landroid/os/Bundle;

    iput-object v1, v0, La/a/a/a/e;->d:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget v1, p0, La/a/a/a/u;->e:I

    invoke-virtual {v0, v1, p2}, La/a/a/a/e;->a(ILa/a/a/a/e;)V

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget-boolean v1, p0, La/a/a/a/u;->f:Z

    iput-boolean v1, v0, La/a/a/a/e;->o:Z

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/a/a/a/e;->q:Z

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget v1, p0, La/a/a/a/u;->g:I

    iput v1, v0, La/a/a/a/e;->w:I

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget v1, p0, La/a/a/a/u;->h:I

    iput v1, v0, La/a/a/a/e;->x:I

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget-object v1, p0, La/a/a/a/u;->i:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/e;->y:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget-boolean v1, p0, La/a/a/a/u;->j:Z

    iput-boolean v1, v0, La/a/a/a/e;->B:Z

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget-boolean v1, p0, La/a/a/a/u;->k:Z

    iput-boolean v1, v0, La/a/a/a/e;->A:Z

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    iget-object v1, p1, La/a/a/a/h;->b:La/a/a/a/p;

    iput-object v1, v0, La/a/a/a/e;->s:La/a/a/a/p;

    iget-object v0, p0, La/a/a/a/u;->b:La/a/a/a/e;

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/a/u;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, La/a/a/a/u;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, La/a/a/a/u;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, La/a/a/a/u;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, La/a/a/a/u;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, La/a/a/a/u;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/a/a/u;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, La/a/a/a/u;->k:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, La/a/a/a/u;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, La/a/a/a/u;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
