.class public final Lcom/android/launcher3/aI;
.super Ljava/lang/Object;


# static fields
.field static a:F

.field private static e:F


# instance fields
.field private b:Lcom/android/launcher3/al;

.field private c:F

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/android/launcher3/aI;->e:F

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/aI;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIII)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    sget v1, Lcom/android/launcher3/aI;->e:F

    invoke-static {v1, v11}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/launcher3/aI;->a:F

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Super Short Stubby"

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42400000    # 48.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Shorter Stubby"

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42400000    # 48.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Short Stubby"

    const v3, 0x43898000    # 275.0f

    const/high16 v4, 0x43d20000    # 420.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42400000    # 48.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Stubby"

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x43e10000    # 450.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42400000    # 48.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Nexus S"

    const/high16 v3, 0x43940000    # 296.0f

    const v4, 0x43f5aa3d

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42400000    # 48.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Nexus 4"

    const v3, 0x43a78000    # 335.0f

    const v4, 0x440dc000    # 567.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40800000    # 4.0f

    sget v7, Lcom/android/launcher3/aI;->e:F

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42600000    # 56.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Nexus 5"

    const v3, 0x43b38000    # 359.0f

    const v4, 0x440dc000    # 567.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40800000    # 4.0f

    sget v7, Lcom/android/launcher3/aI;->e:F

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42600000    # 56.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Large Phone"

    const/high16 v3, 0x43cb0000    # 406.0f

    const v4, 0x442d8000    # 694.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x42800000    # 64.0f

    const v8, 0x41666666    # 14.4f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x42600000    # 56.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Nexus 7"

    const v3, 0x440fc000    # 575.0f

    const/high16 v4, 0x44620000    # 904.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x42900000    # 72.0f

    const v8, 0x41666666    # 14.4f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v10, 0x42700000    # 60.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "Nexus 10"

    const v3, 0x4435c000    # 727.0f

    const v4, 0x4496e000    # 1207.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x42980000    # 76.0f

    const v8, 0x41666666    # 14.4f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v10, 0x42800000    # 64.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/al;

    const-string v2, "20-inch Tablet"

    const v3, 0x44bee000    # 1527.0f

    const v4, 0x451df000    # 2527.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v10, 0x42900000    # 72.0f

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Ljava/lang/String;FFFFFFFF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    invoke-static {v0, v11}, Lcom/android/launcher3/aI;->a(ILandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/aI;->c:F

    move/from16 v0, p4

    invoke-static {v0, v11}, Lcom/android/launcher3/aI;->a(ILandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/aI;->d:F

    new-instance v1, Lcom/android/launcher3/al;

    iget v4, p0, Lcom/android/launcher3/aI;->c:F

    iget v5, p0, Lcom/android/launcher3/aI;->d:F

    move-object v2, p1

    move-object v3, v12

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/al;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILandroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    return-void
.end method

.method private static a(ILandroid/util/DisplayMetrics;)F
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    int-to-float v1, p0

    div-float v0, v1, v0

    return v0
.end method

.method public static a(FLandroid/util/DisplayMetrics;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static b(FLandroid/util/DisplayMetrics;)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/android/launcher3/al;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------- DYNAMIC GRID ------- \nWd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Hd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", W: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", H: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", its: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", his: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aI;->b:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
