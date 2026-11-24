.class final enum Lcom/android/launcher3/A;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/android/launcher3/A;

.field private static final synthetic b:[Lcom/android/launcher3/A;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher3/A;

    const-string v1, "LoadWidgetPreviewData"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/A;->a:Lcom/android/launcher3/A;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/A;

    sget-object v1, Lcom/android/launcher3/A;->a:Lcom/android/launcher3/A;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher3/A;->b:[Lcom/android/launcher3/A;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/A;
    .locals 1

    const-class v0, Lcom/android/launcher3/A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/A;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/A;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher3/A;->b:[Lcom/android/launcher3/A;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/launcher3/A;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
