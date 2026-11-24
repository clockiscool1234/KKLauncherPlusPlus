.class public final Lcom/android/launcher3/dT;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:[J

.field public d:[J

.field public e:J

.field public f:I

.field private g:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 2

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/launcher3/dT;->c:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/launcher3/dT;->d:[J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/launcher3/dT;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dT;->f:I

    iput-wide p3, p0, Lcom/android/launcher3/dT;->g:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/dT;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
