.class final Lcom/android/launcher3/er;
.super Landroid/os/AsyncTask;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/LauncherProvider;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/PreloadReceiver;Lcom/android/launcher3/LauncherProvider;I)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/er;->a:Lcom/android/launcher3/LauncherProvider;

    iput p3, p0, Lcom/android/launcher3/er;->b:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/er;->a:Lcom/android/launcher3/LauncherProvider;

    iget v1, p0, Lcom/android/launcher3/er;->b:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider;->a(I)V

    const/4 v0, 0x0

    return-object v0
.end method
