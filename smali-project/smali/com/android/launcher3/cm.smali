.class final Lcom/android/launcher3/cm;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Lcom/android/launcher3/cs;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cm;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/cm;->b:Lcom/android/launcher3/cs;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cm;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/cm;->b:Lcom/android/launcher3/cs;

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->b(Landroid/content/Context;Lcom/android/launcher3/cs;)V

    const/4 v0, 0x0

    return-object v0
.end method
