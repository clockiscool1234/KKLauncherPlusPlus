.class final Lcom/android/launcher3/fs;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/android/launcher3/fr;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/fr;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fs;->a:Lcom/android/launcher3/fr;

    iput-object p2, p0, Lcom/android/launcher3/fs;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/fs;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/fs;->a:Lcom/android/launcher3/fr;

    iget-object v1, p0, Lcom/android/launcher3/fs;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/fs;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/fr;->a(Lcom/android/launcher3/fr;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method
