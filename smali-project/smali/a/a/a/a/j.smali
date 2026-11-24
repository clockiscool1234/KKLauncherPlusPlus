.class final La/a/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/m;


# instance fields
.field private synthetic a:La/a/a/a/h;


# direct methods
.method constructor <init>(La/a/a/a/h;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/j;->a:La/a/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, La/a/a/a/j;->a:La/a/a/a/h;

    invoke-virtual {v0, p1}, La/a/a/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
