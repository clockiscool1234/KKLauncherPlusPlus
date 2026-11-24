.class final Lcom/android/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/b/a/f;


# direct methods
.method constructor <init>(Lcom/android/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/b/a/g;->a:Lcom/android/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/g;->a:Lcom/android/b/a/f;

    iget-object v0, v0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v0, v0, Lcom/android/b/a/i;->g:Lcom/android/b/a/a;

    invoke-virtual {v0}, Lcom/android/b/a/a;->a()V

    return-void
.end method
