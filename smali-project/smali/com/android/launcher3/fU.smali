.class final enum Lcom/android/launcher3/fU;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/android/launcher3/fU;

.field public static final enum b:Lcom/android/launcher3/fU;

.field public static final enum c:Lcom/android/launcher3/fU;

.field public static final enum d:Lcom/android/launcher3/fU;

.field private static final synthetic e:[Lcom/android/launcher3/fU;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher3/fU;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/fU;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    new-instance v0, Lcom/android/launcher3/fU;

    const-string v1, "SPRING_LOADED"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/fU;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    new-instance v0, Lcom/android/launcher3/fU;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/fU;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    new-instance v0, Lcom/android/launcher3/fU;

    const-string v1, "OVERVIEW"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/fU;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/fU;

    sget-object v1, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher3/fU;->e:[Lcom/android/launcher3/fU;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/fU;
    .locals 1

    const-class v0, Lcom/android/launcher3/fU;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/fU;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/fU;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher3/fU;->e:[Lcom/android/launcher3/fU;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/launcher3/fU;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
