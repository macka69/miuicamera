.class public Lcom/android/camera/ui/ReferenceLineDrawer;
.super Landroid/view/View;
.source "ReferenceLineDrawer.java"


# static fields
.field private static final BORDER:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static reference_line_width:F

.field public static reference_line_width_end:F

.field public static reference_line_width_start:F


# instance fields
.field private isGradienterEnabled:Z

.field private mAuxiliaryLineColor:I

.field private mAuxiliaryLinePaint:Landroid/graphics/Paint;

.field private mBottomVisible:Z

.field private mColumnCount:I

.field private mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field private mDeviceRotation:F

.field private mFrameColor:I

.field private mFramePaint:Landroid/graphics/Paint;

.field private mFrameSpiralColor:I

.field private mGoldenSpiralPaint:Landroid/graphics/Paint;

.field private mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

.field private mLineColor:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mRowCount:I

.field private mTopVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ReferenceLineDrawer;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const v0, 0x70ffffff

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const v0, 0x4dffffff    # 5.3687088E8f

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 v0, 0x26000000

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const v0, -0x66000001

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07063e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070640

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07063f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x70ffffff

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const p2, 0x4dffffff    # 5.3687088E8f

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 p2, 0x26000000

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const p2, -0x66000001

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07063e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070640

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07063f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x70ffffff

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const p2, 0x4dffffff    # 5.3687088E8f

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 p2, 0x26000000

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const p2, -0x66000001

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07063e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070640

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07063f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method private GoldenSection(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    const v1, 0x3f41cac1

    mul-float/2addr v1, v2

    const v5, 0x3df8d4fe

    mul-float/2addr v2, v5

    move/from16 v26, v2

    move v2, v1

    move/from16 v1, v26

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v3

    :goto_1
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v7, 0x2

    const v8, 0x3f1e353f

    const v9, 0x3ec39581

    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v5, v6, :cond_5

    iget-boolean v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v6, v11, :cond_1

    if-ne v5, v3, :cond_1

    mul-float v6, v2, v9

    add-float v7, v6, v1

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v7, v11

    const/high16 v14, 0x3f800000    # 1.0f

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v11, v6

    add-float v15, v11, v1

    mul-float v16, v4, v9

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v7, v9

    mul-float/2addr v8, v4

    add-float v13, v8, v10

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v6, v7

    add-float v14, v6, v1

    sub-float v15, v4, v10

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_1
    iget-boolean v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v6, v11, :cond_2

    if-ne v5, v7, :cond_2

    mul-float v6, v2, v8

    add-float v7, v6, v1

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v7, v11

    const/high16 v14, 0x3f800000    # 1.0f

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v11, v6

    add-float v15, v11, v1

    mul-float v16, v4, v9

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v7, v9

    mul-float/2addr v8, v4

    add-float v13, v8, v10

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v6, v7

    add-float v14, v6, v1

    sub-float v15, v4, v10

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    if-ne v5, v3, :cond_3

    mul-float/2addr v9, v2

    add-float v6, v9, v1

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v6, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v6

    add-float v14, v9, v1

    sub-float v15, v4, v10

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    if-ne v5, v7, :cond_4

    mul-float/2addr v8, v2

    add-float v6, v8, v1

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v6, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v8, v6

    add-float v14, v8, v1

    sub-float v15, v4, v10

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_5
    iget-boolean v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v5, v3

    const/4 v6, 0x0

    move v11, v6

    :goto_3
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v11, v12, :cond_d

    if-eqz v11, :cond_6

    if-ne v11, v12, :cond_8

    :cond_6
    if-nez v11, :cond_7

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v12, :cond_8

    :cond_7
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v11, v12, :cond_c

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v12, :cond_c

    :cond_8
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_9

    if-ne v11, v3, :cond_9

    int-to-float v12, v5

    add-float v14, v12, v1

    mul-float v19, v4, v9

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v19, v13

    sub-float v15, v13, v10

    mul-float v13, v2, v9

    add-float v16, v13, v1

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v19, v13

    sub-float v17, v13, v10

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v2, v8

    add-float/2addr v13, v12

    add-float v21, v13, v1

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v19, v13

    sub-float v22, v13, v10

    sub-float v12, v2, v12

    add-float v23, v12, v1

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v19, v19, v12

    sub-float v24, v19, v10

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v20, p1

    move-object/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_9
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_a

    if-ne v11, v7, :cond_a

    int-to-float v12, v5

    add-float v14, v12, v1

    mul-float v19, v4, v8

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v19, v13

    mul-float v13, v2, v9

    add-float v16, v13, v1

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v17, v19, v13

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v2, v8

    add-float/2addr v13, v12

    add-float v21, v13, v1

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v22, v19, v13

    sub-float v12, v2, v12

    add-float v23, v12, v1

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v24, v19, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v20, p1

    move-object/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_a
    if-ne v11, v3, :cond_b

    int-to-float v12, v5

    add-float v14, v12, v1

    mul-float v13, v4, v9

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v13, v15

    sub-float/2addr v15, v10

    sub-float v12, v2, v12

    add-float v16, v12, v1

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v13, v12

    sub-float v17, v13, v10

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_b
    if-ne v11, v7, :cond_c

    int-to-float v12, v5

    add-float v14, v12, v1

    mul-float v13, v4, v8

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v13, v15

    sub-float v12, v2, v12

    add-float v16, v12, v1

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v17, v13, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_d
    move v11, v3

    :goto_5
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v11, v12, :cond_12

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_e

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_e

    if-ne v11, v3, :cond_e

    mul-float v12, v2, v9

    add-float v19, v12, v1

    const/high16 v15, 0x3f800000    # 1.0f

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v12

    add-float v16, v13, v1

    mul-float v17, v4, v9

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v14

    move/from16 v14, v19

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v4, v8

    add-float v15, v13, v10

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v13

    add-float v16, v12, v1

    sub-float v17, v4, v10

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_e
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_f

    if-ne v11, v7, :cond_f

    mul-float v12, v2, v8

    add-float v19, v12, v1

    const/high16 v15, 0x3f800000    # 1.0f

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v12

    add-float v16, v13, v1

    mul-float v17, v4, v9

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v14

    move/from16 v14, v19

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v4, v8

    add-float v15, v13, v10

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v13

    add-float v16, v12, v1

    sub-float v17, v4, v10

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_f
    if-ne v11, v3, :cond_10

    mul-float v12, v2, v9

    add-float v14, v12, v1

    const/high16 v15, 0x3f800000    # 1.0f

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v13

    add-float v16, v12, v1

    sub-float v17, v4, v10

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_10
    if-ne v11, v7, :cond_11

    mul-float v12, v2, v8

    add-float v14, v12, v1

    const/high16 v15, 0x3f800000    # 1.0f

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v13

    add-float v16, v12, v1

    sub-float v17, v4, v10

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_11
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :cond_12
    :goto_7
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v6, v11, :cond_1a

    if-eqz v6, :cond_13

    if-ne v6, v11, :cond_15

    :cond_13
    if-nez v6, :cond_14

    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v11, :cond_15

    :cond_14
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v6, v11, :cond_19

    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v11, :cond_19

    :cond_15
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_16

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_16

    if-ne v6, v3, :cond_16

    int-to-float v11, v5

    add-float v13, v11, v1

    mul-float v18, v4, v9

    sub-float v21, v18, v10

    mul-float v12, v2, v9

    add-float v15, v12, v1

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v12, v18, v12

    sub-float v16, v12, v10

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v14

    move/from16 v14, v21

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v12, v2, v8

    add-float/2addr v12, v1

    add-float v20, v12, v11

    sub-float v11, v2, v11

    add-float v22, v11, v1

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v18, v18, v11

    sub-float v23, v18, v10

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_16
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_17

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_17

    if-ne v6, v7, :cond_17

    int-to-float v11, v5

    add-float v13, v11, v1

    mul-float v18, v4, v8

    mul-float v12, v2, v9

    add-float v15, v12, v1

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v18, v12

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v14

    move/from16 v14, v18

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v12, v2, v8

    add-float/2addr v12, v11

    add-float v15, v12, v1

    sub-float v11, v2, v11

    add-float v17, v11, v1

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v11, v18, v11

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v16, v18

    move/from16 v18, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_17
    if-ne v6, v3, :cond_18

    int-to-float v11, v5

    add-float v13, v11, v1

    mul-float v12, v4, v9

    sub-float v14, v12, v10

    sub-float v11, v2, v11

    add-float v15, v11, v1

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v11

    sub-float v16, v12, v10

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_18
    if-ne v6, v7, :cond_19

    int-to-float v11, v5

    add-float v13, v11, v1

    mul-float v14, v4, v8

    sub-float v11, v2, v11

    add-float v15, v11, v1

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v14, v11

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_19
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_1a
    return-void
.end method

.method public static IsGoldenSection()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "golden_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static IsGoldenSpiral()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "left_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "right_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private Jiugongge(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    const v4, 0x3f41cac1

    mul-float/2addr v4, v1

    const v5, 0x3df95810

    mul-float/2addr v1, v5

    move/from16 v23, v4

    move v4, v1

    move/from16 v1, v23

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v5, v2

    :goto_1
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v7, 0x2

    if-ge v5, v6, :cond_3

    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v8, v9, :cond_1

    if-ne v5, v7, :cond_1

    int-to-float v7, v5

    mul-float/2addr v7, v1

    int-to-float v8, v6

    div-float v8, v7, v8

    add-float/2addr v8, v4

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v8, v9

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v6, v6

    div-float v6, v7, v6

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v6, v8

    add-float v13, v6, v4

    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v6, v3, v6

    int-to-float v14, v6

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v8, v6

    div-float v8, v7, v8

    add-float/2addr v8, v4

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v8, v9

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v3, v8

    sub-int/2addr v8, v2

    mul-int/2addr v9, v8

    add-int/2addr v9, v2

    int-to-float v12, v9

    int-to-float v6, v6

    div-float/2addr v7, v6

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v6

    add-float v13, v7, v4

    add-int/lit8 v6, v3, -0x1

    int-to-float v14, v6

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    iget-boolean v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v7, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v6, v7, :cond_2

    if-ne v5, v2, :cond_2

    int-to-float v6, v5

    mul-float/2addr v6, v1

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v8, v7

    div-float v8, v6, v8

    add-float/2addr v8, v4

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v8, v9

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v7, v7

    div-float v7, v6, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v13, v7, v4

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v7, v3, v7

    int-to-float v14, v7

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v8, v7

    div-float v8, v6, v8

    add-float/2addr v8, v4

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v8, v9

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v3, v8

    sub-int/2addr v8, v2

    mul-int/2addr v9, v8

    add-int/2addr v9, v2

    int-to-float v12, v9

    int-to-float v7, v7

    div-float/2addr v6, v7

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v6, v7

    add-float v13, v6, v4

    add-int/lit8 v6, v3, -0x1

    int-to-float v14, v6

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    int-to-float v6, v5

    mul-float/2addr v6, v1

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v8, v7

    div-float v8, v6, v8

    add-float/2addr v8, v4

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v8, v9

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v7, v7

    div-float/2addr v6, v7

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v6, v7

    add-float v13, v6, v4

    add-int/lit8 v6, v3, -0x1

    int-to-float v14, v6

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    iget-boolean v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v5, v2

    const/4 v6, 0x0

    move v8, v6

    :goto_3
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v8, v9, :cond_a

    if-eqz v8, :cond_4

    if-ne v8, v9, :cond_6

    :cond_4
    if-nez v8, :cond_5

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v9, :cond_6

    :cond_5
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v8, v9, :cond_9

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v9, :cond_9

    :cond_6
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_7

    if-ne v8, v2, :cond_7

    int-to-float v9, v5

    add-float v11, v9, v4

    mul-int v16, v8, v3

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v16, v10

    int-to-float v12, v12

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v13

    div-float v13, v1, v13

    add-float/2addr v13, v4

    div-int v10, v16, v10

    int-to-float v10, v10

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v14, v10

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v1, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float v18, v11, v4

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v16, v10

    int-to-float v11, v11

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v19, v11, v12

    sub-float v9, v1, v9

    add-float v20, v9, v4

    div-int v9, v16, v10

    int-to-float v9, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v21, v9, v10

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v22, v9

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_7
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_8

    if-ne v8, v7, :cond_8

    int-to-float v9, v5

    add-float v11, v9, v4

    mul-int v16, v8, v3

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v16, v10

    int-to-float v12, v12

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v13

    div-float v13, v1, v13

    add-float/2addr v13, v4

    div-int v10, v16, v10

    int-to-float v10, v10

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v14, v10

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v1, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float v18, v11, v4

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v16, v10

    int-to-float v11, v11

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v19, v11, v12

    sub-float v9, v1, v9

    add-float v20, v9, v4

    div-int v9, v16, v10

    int-to-float v9, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v21, v9, v10

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v22, v9

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    int-to-float v9, v5

    add-float v11, v9, v4

    mul-int v10, v8, v3

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v13, v10, v12

    int-to-float v13, v13

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v13, v14

    sub-float v9, v1, v9

    add-float/2addr v9, v4

    div-int/2addr v10, v12

    int-to-float v10, v10

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v10, v12

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v12, v13

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_a
    move v8, v2

    :goto_5
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v8, v9, :cond_d

    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v11, :cond_b

    if-ne v8, v2, :cond_b

    int-to-float v10, v8

    mul-float/2addr v10, v1

    int-to-float v11, v9

    div-float v11, v10, v11

    add-float v13, v11, v4

    const/high16 v14, 0x3f800000    # 1.0f

    int-to-float v9, v9

    div-float v9, v10, v9

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v9, v11

    add-float v15, v9, v4

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v3, v9

    int-to-float v9, v9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v9

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v9

    div-float v11, v10, v11

    add-float v13, v11, v4

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v3, v11

    sub-int/2addr v11, v2

    mul-int/2addr v12, v11

    add-int/2addr v12, v2

    int-to-float v14, v12

    int-to-float v9, v9

    div-float/2addr v10, v9

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v10, v9

    add-float v15, v10, v4

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_b
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_c

    if-ne v8, v7, :cond_c

    int-to-float v9, v8

    mul-float/2addr v9, v1

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v9, v11

    add-float v13, v11, v4

    const/high16 v14, 0x3f800000    # 1.0f

    int-to-float v10, v10

    div-float v10, v9, v10

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v10, v11

    add-float v15, v10, v4

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v3, v10

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v9, v11

    add-float v13, v11, v4

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v3, v11

    sub-int/2addr v11, v2

    mul-int/2addr v12, v11

    add-int/2addr v12, v2

    int-to-float v14, v12

    int-to-float v10, v10

    div-float/2addr v9, v10

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v9, v10

    add-float v15, v9, v4

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_c
    int-to-float v9, v8

    mul-float/2addr v9, v1

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v9, v11

    add-float v13, v11, v4

    const/high16 v14, 0x3f800000    # 1.0f

    int-to-float v10, v10

    div-float/2addr v9, v10

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v9, v10

    add-float v15, v9, v4

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_d
    :goto_7
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v6, v8, :cond_14

    if-eqz v6, :cond_e

    if-ne v6, v8, :cond_10

    :cond_e
    if-nez v6, :cond_f

    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v8, :cond_10

    :cond_f
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v6, v8, :cond_13

    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v8, :cond_13

    :cond_10
    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v8, :cond_11

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v8, v9, :cond_11

    if-ne v6, v2, :cond_11

    int-to-float v8, v5

    add-float v10, v8, v4

    mul-int v15, v6, v3

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v15, v9

    int-to-float v11, v11

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v12, v12

    div-float v12, v1, v12

    add-float/2addr v12, v4

    div-int v9, v15, v9

    int-to-float v9, v9

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v9

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v9

    div-float v10, v1, v10

    sub-int/2addr v9, v2

    int-to-float v9, v9

    mul-float/2addr v10, v9

    add-float/2addr v10, v8

    add-float v17, v10, v4

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v15, v9

    int-to-float v10, v10

    sub-float v8, v1, v8

    add-float v19, v8, v4

    div-int/2addr v15, v9

    int-to-float v8, v15

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v20, v8, v9

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v18, v10

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_11
    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v8, :cond_12

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v8, v9, :cond_12

    if-ne v6, v7, :cond_12

    int-to-float v8, v5

    add-float v10, v8, v4

    mul-int v15, v6, v3

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v15, v9

    int-to-float v11, v11

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v12, v12

    div-float v12, v1, v12

    add-float/2addr v12, v4

    div-int v9, v15, v9

    int-to-float v9, v9

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v9

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v9

    div-float v10, v1, v10

    sub-int/2addr v9, v2

    int-to-float v9, v9

    mul-float/2addr v10, v9

    add-float/2addr v10, v8

    add-float v17, v10, v4

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v15, v9

    int-to-float v10, v10

    sub-float v8, v1, v8

    add-float v19, v8, v4

    div-int/2addr v15, v9

    int-to-float v8, v15

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v20, v8, v9

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v18, v10

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_12
    int-to-float v8, v5

    add-float v10, v8, v4

    mul-int v9, v6, v3

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v9, v11

    int-to-float v12, v12

    sub-float v8, v1, v8

    add-float/2addr v8, v4

    div-int/2addr v9, v11

    int-to-float v9, v9

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v13, v9, v11

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v12

    move v12, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_13
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_14
    return-void
.end method

.method private LeftGoldenSpiral(Landroid/graphics/Canvas;)V
    .locals 62

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const v7, 0x3f3eb852

    int-to-float v1, v1

    mul-float/2addr v7, v1

    const v8, 0x3e03126f

    mul-float/2addr v1, v8

    move v8, v7

    move v7, v1

    move v1, v6

    goto :goto_0

    :cond_0
    int-to-float v7, v1

    const v1, 0x3e99999a

    move v8, v7

    move v7, v6

    :goto_0
    const/4 v9, 0x3

    const v13, 0x3f271759

    const v14, 0x3d6425af

    const v15, 0x3f4c63f1

    const v16, 0x3e954c98

    const v17, 0x3f1e425b

    const v18, 0x3ef1a9fc

    const v19, 0x3f92b021

    const v20, 0x3e71a9fc

    const v21, 0x3dff2e49

    const v22, 0x3e718fc5

    const v23, 0x3f68e8a7

    const v24, 0x3f072b02

    const v25, 0x3f9e353f

    const v26, 0x3f1e353f

    const/high16 v27, 0x40000000    # 2.0f

    if-ne v4, v9, :cond_1

    const v1, 0x3dcccccd

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    add-float v29, v2, v6

    mul-float/2addr v1, v8

    sub-float v2, v6, v1

    mul-float v3, v8, v27

    sub-float v4, v3, v1

    const/high16 v33, 0x42b40000    # 90.0f

    const/high16 v34, 0x42b40000    # 90.0f

    const/16 v35, 0x0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move-object/from16 v36, v5

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v7, v5, v27

    add-float v29, v7, v6

    mul-float v26, v26, v8

    sub-float v7, v8, v26

    sub-float/2addr v7, v1

    mul-float v25, v25, v8

    div-float v5, v5, v27

    sub-float v31, v25, v5

    add-float v26, v8, v26

    sub-float v5, v26, v1

    const/high16 v33, 0x43340000    # 180.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v7

    move/from16 v32, v5

    move-object/from16 v36, v9

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v20, v20, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v31, v20, v9

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v27

    sub-float v33, v8, v9

    mul-float v19, v19, v8

    sub-float v9, v19, v1

    const/high16 v35, 0x43870000    # 270.0f

    const/high16 v36, 0x42b40000    # 90.0f

    const/16 v37, 0x0

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v7

    move/from16 v34, v9

    move-object/from16 v38, v6

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v6, v8, v24

    mul-float v18, v18, v8

    sub-float v18, v8, v18

    sub-float v18, v18, v1

    sget v19, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v19, v19, v27

    sub-float v41, v8, v19

    sub-float v19, v8, v1

    const/16 v43, 0x0

    const/high16 v44, 0x42b40000    # 90.0f

    const/16 v45, 0x0

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v38, p1

    move/from16 v39, v6

    move/from16 v40, v18

    move/from16 v42, v19

    move-object/from16 v46, v10

    invoke-virtual/range {v38 .. v46}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v10, v8, v17

    mul-float v16, v16, v8

    sub-float v16, v8, v16

    sub-float v16, v16, v1

    mul-float v17, v8, v23

    const/high16 v34, 0x42b40000    # 90.0f

    const/high16 v35, 0x42b40000    # 90.0f

    const/16 v36, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v30, v10

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v19

    move-object/from16 v37, v11

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v22, v22, v8

    sub-float v11, v8, v22

    sub-float/2addr v11, v1

    mul-float/2addr v15, v8

    mul-float/2addr v14, v8

    sub-float v14, v8, v14

    sub-float/2addr v14, v1

    const/high16 v34, 0x43340000    # 180.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v31, v11

    move/from16 v32, v15

    move/from16 v33, v14

    move-object/from16 v37, v12

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v12, v8, v13

    const v13, 0x3f439581

    mul-float/2addr v13, v8

    mul-float v21, v21, v8

    sub-float v21, v8, v21

    sub-float v21, v21, v1

    const/high16 v34, 0x43870000    # 270.0f

    move/from16 v22, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v12

    move/from16 v32, v13

    move/from16 v33, v21

    move-object/from16 v37, v14

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3f31f8a1

    mul-float/2addr v14, v8

    const v23, 0x3f490ff9

    mul-float v23, v23, v8

    sub-float v23, v23, v1

    const v24, 0x3f5aacda

    mul-float v24, v24, v8

    sub-float v24, v24, v1

    const/16 v34, 0x0

    move/from16 v26, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v14

    move/from16 v31, v23

    move/from16 v33, v24

    move-object/from16 v37, v12

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v12, 0x3f3559b4

    mul-float/2addr v12, v8

    const v29, 0x3f4fcb92

    mul-float v29, v29, v8

    sub-float v1, v29, v1

    const v29, 0x3f403afb

    mul-float v47, v8, v29

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v32, v47, v29

    const/high16 v34, 0x42b40000    # 90.0f

    move/from16 v48, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v30, v12

    move/from16 v31, v1

    move-object/from16 v37, v14

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    const/16 v28, 0x0

    add-float v31, v29, v28

    div-float v29, v14, v27

    sub-float v32, v19, v29

    add-float v33, v13, v14

    div-float v14, v14, v27

    sub-float v14, v19, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v34, v14, v29

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move-object/from16 v35, v14

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    sub-float v29, v10, v29

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v31, v29, v30

    div-float v14, v14, v27

    sub-float v14, v10, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v14, v29

    sub-float v33, v14, v30

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v7

    move/from16 v34, v19

    move-object/from16 v35, v14

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v30, v10, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v31, v29, v27

    sub-float v31, v11, v31

    sub-float v31, v31, v14

    div-float v32, v29, v27

    sub-float v32, v8, v32

    sub-float v32, v32, v14

    div-float v29, v29, v27

    sub-float v29, v11, v29

    sget v33, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v29, v29, v33

    sub-float v33, v29, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move-object/from16 v34, v14

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    sub-float v30, v13, v29

    div-float v14, v14, v27

    sub-float v14, v13, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v32, v14, v29

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v31, v11

    move/from16 v33, v19

    move-object/from16 v34, v14

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    sub-float v31, v24, v29

    div-float v14, v14, v27

    sub-float v14, v24, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v33, v14, v29

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v30, v10

    move/from16 v32, v13

    move-object/from16 v34, v14

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v14, v14, v27

    const/16 v28, 0x0

    add-float v31, v14, v28

    const/high16 v35, 0x42b40000    # 90.0f

    const/high16 v36, 0x42b40000    # 90.0f

    const/16 v37, 0x0

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v4

    move-object/from16 v38, v14

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v27

    const/4 v4, 0x0

    add-float v31, v3, v4

    div-float v2, v2, v27

    sub-float v33, v25, v2

    const/high16 v35, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v7

    move/from16 v34, v5

    move-object/from16 v38, v2

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v31, v20, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    sub-float v33, v8, v2

    const/high16 v35, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v34, v9

    move-object/from16 v38, v2

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    sub-float v41, v8, v2

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v38, p1

    move-object/from16 v46, v2

    invoke-virtual/range {v38 .. v46}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v34, 0x42b40000    # 90.0f

    const/high16 v35, 0x42b40000    # 90.0f

    const/16 v36, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v10

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v19

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v34, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v31, v11

    move/from16 v32, v15

    move/from16 v33, v22

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v34, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v26

    move/from16 v32, v13

    move/from16 v33, v21

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v34, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v48

    move/from16 v31, v23

    move/from16 v33, v24

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v34, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v12

    move/from16 v31, v1

    move/from16 v32, v47

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    const/4 v3, 0x0

    add-float v29, v2, v3

    div-float v2, v1, v27

    sub-float v30, v19, v2

    add-float v31, v13, v1

    div-float v1, v1, v27

    add-float v32, v19, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move-object/from16 v33, v1

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v31, v10, v2

    div-float v1, v1, v27

    add-float v33, v10, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v7

    move/from16 v34, v19

    move-object/from16 v35, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v3, v10, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v2, v27

    sub-float v4, v11, v4

    div-float v5, v2, v27

    sub-float/2addr v8, v5

    sub-float v5, v8, v1

    div-float v2, v2, v27

    add-float v6, v11, v2

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v30, v13, v2

    div-float v1, v1, v27

    add-float v32, v13, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v31, v11

    move/from16 v33, v19

    move-object/from16 v34, v1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v31, v24, v2

    div-float v2, v1, v27

    sub-float v32, v13, v2

    div-float v1, v1, v27

    add-float v33, v24, v1

    iget-object v0, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v30, v10

    move-object/from16 v34, v0

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_1
    if-eq v4, v2, :cond_6

    if-ne v4, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v4, :cond_3

    const/4 v2, 0x4

    if-ne v4, v2, :cond_7

    :cond_3
    if-nez v4, :cond_4

    const v1, 0x3db43958

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    if-ne v4, v2, :cond_5

    const v1, 0x3e439581

    :cond_5
    :goto_1
    mul-float/2addr v1, v8

    int-to-float v2, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x3fcf1aa0

    div-float v5, v3, v4

    sub-float v6, v2, v5

    add-float v7, v5, v1

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v8, v27

    sub-float v13, v2, v8

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v1

    move v11, v6

    move v12, v7

    move-object/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v8, v27

    const/4 v9, 0x0

    add-float v11, v8, v9

    sub-float/2addr v3, v5

    add-float/2addr v3, v1

    div-float v5, v2, v4

    sub-float v5, v2, v5

    mul-float v8, v5, v27

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v12, v3

    move-object/from16 v17, v13

    move v13, v8

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v25, v25, v2

    div-float v9, v25, v4

    mul-float v26, v26, v2

    sub-float v10, v9, v26

    add-float v29, v10, v1

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v10, v27

    const/4 v11, 0x0

    add-float v13, v10, v11

    add-float v30, v26, v1

    sub-float v25, v25, v9

    const/high16 v16, 0x43870000    # 270.0f

    const/high16 v17, 0x42b40000    # 90.0f

    const/16 v18, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v29

    move/from16 v14, v30

    move/from16 v15, v25

    move-object/from16 v19, v9

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3f435a86

    mul-float/2addr v9, v2

    div-float/2addr v9, v4

    const v10, 0x3e149518

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    add-float v31, v9, v1

    const v9, 0x3e71c433

    mul-float/2addr v9, v2

    div-float v10, v9, v4

    sub-float v32, v9, v10

    const/16 v17, 0x0

    const/high16 v18, 0x42b40000    # 90.0f

    const/16 v19, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v13, v31

    move/from16 v14, v32

    move/from16 v15, v30

    move/from16 v16, v5

    move-object/from16 v20, v9

    invoke-virtual/range {v12 .. v20}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    div-float v26, v26, v4

    add-float v26, v26, v1

    mul-float v24, v24, v2

    div-float v9, v24, v4

    sub-float v24, v24, v9

    const v9, 0x3ef1c433

    mul-float/2addr v9, v2

    const v10, 0x3e154c98

    mul-float v33, v2, v10

    div-float v10, v33, v4

    add-float/2addr v9, v10

    add-float v34, v9, v1

    const/high16 v17, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v13, v26

    move/from16 v14, v24

    move/from16 v15, v34

    move-object/from16 v20, v9

    invoke-virtual/range {v12 .. v20}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3f1e3bcd

    mul-float/2addr v9, v2

    div-float v10, v9, v4

    sub-float v35, v9, v10

    const v9, 0x3ea710cb

    mul-float/2addr v9, v2

    div-float/2addr v9, v4

    const v10, 0x3e9559b4

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    add-float v36, v9, v1

    mul-float v23, v23, v2

    div-float v9, v23, v4

    sub-float v23, v23, v9

    const/high16 v14, 0x43340000    # 180.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v26

    move/from16 v11, v35

    move/from16 v12, v36

    move-object/from16 v17, v13

    move/from16 v13, v23

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3f0fec57

    mul-float/2addr v9, v2

    div-float/2addr v9, v4

    const v10, 0x3d648e8a

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    add-float v37, v9, v1

    const v9, 0x3ec3a29c

    mul-float/2addr v9, v2

    div-float/2addr v9, v4

    mul-float v22, v22, v2

    add-float v9, v9, v22

    add-float v22, v9, v1

    const v9, 0x3f4c56d6

    mul-float/2addr v9, v2

    div-float v10, v9, v4

    sub-float v38, v9, v10

    const/high16 v16, 0x43870000    # 270.0f

    const/high16 v17, 0x42b40000    # 90.0f

    const/16 v18, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v37

    move/from16 v13, v35

    move/from16 v14, v22

    move/from16 v15, v38

    move-object/from16 v19, v9

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3efc9eed

    mul-float/2addr v9, v2

    div-float/2addr v9, v4

    mul-float v21, v21, v2

    add-float v9, v9, v21

    add-float v21, v9, v1

    const v9, 0x3f270a3d

    mul-float/2addr v9, v2

    div-float v10, v9, v4

    sub-float v39, v9, v10

    const v9, 0x3f438866

    mul-float/2addr v9, v2

    div-float v10, v9, v4

    sub-float v40, v9, v10

    const/4 v15, 0x0

    const/high16 v16, 0x42b40000    # 90.0f

    const/16 v17, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v11, v21

    move/from16 v12, v39

    move/from16 v13, v22

    move/from16 v14, v40

    move-object/from16 v18, v9

    invoke-virtual/range {v10 .. v18}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3ef1b717

    mul-float/2addr v9, v2

    div-float/2addr v9, v4

    add-float v9, v9, v33

    add-float v33, v9, v1

    const v9, 0x3f31eb85

    mul-float/2addr v9, v2

    div-float v10, v9, v4

    sub-float v41, v9, v10

    const v9, 0x3ece7d56

    mul-float/2addr v9, v2

    div-float/2addr v9, v4

    const v4, 0x3e5bc01a

    mul-float/2addr v4, v2

    add-float/2addr v9, v4

    add-float v4, v9, v1

    const/high16 v17, 0x42b40000    # 90.0f

    const/16 v18, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v33

    move/from16 v13, v41

    move v14, v4

    move/from16 v15, v40

    move-object/from16 v19, v9

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v9, v27

    sub-float v11, v5, v10

    add-float v12, v22, v9

    div-float v9, v9, v27

    sub-float v9, v5, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v9, v10

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v9, v27

    sub-float v10, v26, v10

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v10, v11

    div-float v10, v9, v27

    const/4 v12, 0x0

    add-float v14, v10, v12

    div-float v9, v9, v27

    sub-float v9, v26, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v10

    sub-float v15, v9, v11

    sub-float v16, v5, v11

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v15, v26, v9

    div-float v10, v9, v27

    sub-float v16, v35, v10

    div-float v9, v9, v27

    sub-float v9, v35, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v18, v9, v10

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v17, v30

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v9, v27

    sub-float v13, v22, v10

    add-float v14, v35, v9

    div-float v9, v9, v27

    sub-float v9, v22, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v15, v9, v10

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move/from16 v16, v5

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v11, v26, v9

    div-float v10, v9, v27

    sub-float v12, v40, v10

    div-float v9, v9, v27

    sub-float v9, v40, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v9, v10

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v13, v22

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v27

    sub-float/2addr v2, v9

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v13, v2, v9

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v1

    move v11, v6

    move v12, v7

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    const/4 v6, 0x0

    add-float v11, v2, v6

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v8, v2

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v12, v3

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    const/4 v3, 0x0

    add-float v13, v2, v3

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v25, v2

    const/high16 v16, 0x43870000    # 270.0f

    const/high16 v17, 0x42b40000    # 90.0f

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v29

    move/from16 v14, v30

    move-object/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v17, 0x0

    const/high16 v18, 0x42b40000    # 90.0f

    const/16 v19, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v13, v31

    move/from16 v14, v32

    move/from16 v15, v30

    move/from16 v16, v5

    move-object/from16 v20, v2

    invoke-virtual/range {v12 .. v20}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v17, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v13, v26

    move/from16 v14, v24

    move/from16 v15, v34

    move-object/from16 v20, v2

    invoke-virtual/range {v12 .. v20}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v14, 0x43340000    # 180.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v10, v26

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v23

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v16, 0x43870000    # 270.0f

    const/high16 v17, 0x42b40000    # 90.0f

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v37

    move/from16 v13, v35

    move/from16 v14, v22

    move/from16 v15, v38

    move-object/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    const/high16 v16, 0x42b40000    # 90.0f

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v11, v21

    move/from16 v12, v39

    move/from16 v13, v22

    move/from16 v14, v40

    move-object/from16 v18, v2

    invoke-virtual/range {v10 .. v18}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v17, 0x42b40000    # 90.0f

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v33

    move/from16 v13, v41

    move v14, v4

    move/from16 v15, v40

    move-object/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v27

    sub-float v11, v5, v3

    add-float v12, v22, v2

    div-float v2, v2, v27

    add-float v13, v5, v2

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move v10, v1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v7, v26, v2

    div-float v2, v1, v27

    const/4 v3, 0x0

    add-float/2addr v2, v3

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v8, v2, v3

    div-float v2, v1, v27

    add-float v9, v26, v2

    div-float v1, v1, v27

    sub-float v1, v5, v1

    add-float v10, v1, v3

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    add-float v7, v26, v2

    div-float v2, v1, v27

    sub-float v8, v35, v2

    div-float v2, v1, v27

    sub-float v9, v30, v2

    div-float v1, v1, v27

    add-float v10, v35, v1

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v13, v22, v2

    div-float v2, v1, v27

    add-float v14, v35, v2

    div-float v1, v1, v27

    add-float v15, v22, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    add-float v4, v26, v2

    div-float v2, v1, v27

    sub-float v5, v40, v2

    div-float v2, v1, v27

    sub-float v6, v22, v2

    div-float v1, v1, v27

    add-float v7, v40, v1

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_6
    :goto_2
    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    const/4 v3, 0x0

    add-float/2addr v2, v3

    add-float v30, v2, v7

    mul-float/2addr v1, v8

    sub-float v50, v3, v1

    mul-float v2, v8, v27

    add-float v51, v2, v7

    sub-float v52, v2, v1

    const/high16 v34, 0x42b40000    # 90.0f

    const/high16 v35, 0x42b40000    # 90.0f

    const/16 v36, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v31, v50

    move/from16 v32, v51

    move/from16 v33, v52

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v27

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float v30, v3, v7

    mul-float v26, v26, v8

    sub-float v3, v8, v26

    sub-float/2addr v3, v1

    mul-float v25, v25, v8

    add-float v25, v25, v7

    div-float v2, v2, v27

    sub-float v32, v25, v2

    add-float v26, v8, v26

    sub-float v2, v26, v1

    const/high16 v34, 0x43340000    # 180.0f

    iget-object v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v31, v3

    move/from16 v33, v2

    move-object/from16 v37, v4

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v20, v20, v8

    add-float v20, v20, v7

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v54, v20, v4

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v4, v27

    sub-float v4, v8, v4

    add-float v56, v4, v7

    mul-float v19, v19, v8

    sub-float v4, v19, v1

    const/high16 v58, 0x43870000    # 270.0f

    const/high16 v59, 0x42b40000    # 90.0f

    const/16 v60, 0x0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v53, p1

    move/from16 v55, v3

    move/from16 v57, v4

    move-object/from16 v61, v5

    invoke-virtual/range {v53 .. v61}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v24, v24, v8

    add-float v5, v24, v7

    mul-float v18, v18, v8

    sub-float v6, v8, v18

    sub-float/2addr v6, v1

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v27

    sub-float v9, v8, v9

    add-float v32, v9, v7

    sub-float v9, v8, v1

    const/16 v34, 0x0

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v33, v9

    move-object/from16 v37, v10

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v17, v17, v8

    add-float v10, v17, v7

    mul-float v16, v16, v8

    sub-float v11, v8, v16

    sub-float/2addr v11, v1

    mul-float v23, v23, v8

    add-float v12, v23, v7

    const/high16 v58, 0x42b40000    # 90.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v54, v10

    move/from16 v55, v11

    move/from16 v56, v12

    move/from16 v57, v9

    move-object/from16 v61, v13

    invoke-virtual/range {v53 .. v61}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v22, v22, v8

    sub-float v13, v8, v22

    sub-float/2addr v13, v1

    mul-float/2addr v15, v8

    add-float/2addr v15, v7

    mul-float/2addr v14, v8

    sub-float v14, v8, v14

    sub-float/2addr v14, v1

    const/high16 v34, 0x43340000    # 180.0f

    move/from16 v17, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v10

    move/from16 v31, v13

    move/from16 v32, v15

    move/from16 v33, v14

    move-object/from16 v37, v12

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v12, 0x3f271759

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    const v16, 0x3f439581

    mul-float v16, v16, v8

    add-float v16, v16, v7

    mul-float v21, v21, v8

    sub-float v18, v8, v21

    sub-float v18, v18, v1

    const/high16 v34, 0x43870000    # 270.0f

    move/from16 v19, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v12

    move/from16 v32, v16

    move/from16 v33, v18

    move-object/from16 v37, v14

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3f31f8a1

    mul-float/2addr v14, v8

    add-float/2addr v14, v7

    const v21, 0x3f490ff9

    mul-float v21, v21, v8

    sub-float v21, v21, v1

    const v22, 0x3f5aacda

    mul-float v22, v22, v8

    sub-float v22, v22, v1

    const/16 v34, 0x0

    move/from16 v23, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v14

    move/from16 v31, v21

    move/from16 v33, v22

    move-object/from16 v37, v12

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v12, 0x3f3559b4

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    const v24, 0x3f4fcb92

    mul-float v24, v24, v8

    sub-float v1, v24, v1

    const v24, 0x3f403afb

    mul-float v24, v24, v8

    add-float v24, v24, v7

    const/high16 v34, 0x42b40000    # 90.0f

    move/from16 v26, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v12

    move/from16 v31, v1

    move/from16 v32, v24

    move-object/from16 v37, v14

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    add-float v29, v7, v14

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v14, v27

    add-float v32, v29, v30

    div-float v29, v14, v27

    sub-float v29, v9, v29

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v33, v29, v30

    add-float v34, v16, v14

    div-float v14, v14, v27

    sub-float v14, v9, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v14, v29

    sub-float v35, v14, v30

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move-object/from16 v36, v14

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    sub-float v29, v10, v29

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v32, v29, v30

    div-float v14, v14, v27

    sub-float v14, v10, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v14, v29

    sub-float v34, v14, v30

    sub-float v35, v9, v30

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move/from16 v33, v3

    move-object/from16 v36, v14

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v30, v10, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v31, v29, v27

    sub-float v31, v13, v31

    sub-float v31, v31, v14

    add-float v38, v8, v7

    div-float v32, v29, v27

    sub-float v32, v38, v32

    sub-float v32, v32, v14

    div-float v29, v29, v27

    sub-float v29, v13, v29

    sget v33, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v29, v29, v33

    sub-float v33, v29, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move-object/from16 v34, v14

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    sub-float v41, v16, v29

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v42, v13, v29

    div-float v14, v14, v27

    sub-float v14, v16, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v43, v14, v29

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v40, p1

    move/from16 v44, v9

    move-object/from16 v45, v14

    invoke-virtual/range {v40 .. v45}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    sub-float v31, v22, v29

    div-float v14, v14, v27

    sub-float v14, v22, v14

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v33, v14, v29

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v30, v10

    move/from16 v32, v16

    move-object/from16 v34, v14

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v14, v14, v27

    const/16 v28, 0x0

    add-float v14, v14, v28

    add-float v49, v14, v7

    const/high16 v53, 0x42b40000    # 90.0f

    const/high16 v54, 0x42b40000    # 90.0f

    const/16 v55, 0x0

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v48, p1

    move-object/from16 v56, v14

    invoke-virtual/range {v48 .. v56}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v29, v14, v27

    const/16 v28, 0x0

    add-float v29, v29, v28

    add-float v54, v29, v7

    div-float v14, v14, v27

    sub-float v56, v25, v14

    const/high16 v58, 0x43340000    # 180.0f

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v53, p1

    move/from16 v55, v3

    move/from16 v57, v2

    move-object/from16 v61, v14

    invoke-virtual/range {v53 .. v61}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v54, v20, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    sub-float v2, v8, v2

    add-float v56, v2, v7

    const/high16 v58, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v57, v4

    move-object/from16 v61, v2

    invoke-virtual/range {v53 .. v61}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v27

    sub-float/2addr v8, v2

    add-float v32, v8, v7

    const/16 v34, 0x0

    const/high16 v35, 0x42b40000    # 90.0f

    const/16 v36, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v33, v9

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v58, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v54, v10

    move/from16 v55, v11

    move/from16 v56, v17

    move/from16 v57, v9

    move-object/from16 v61, v2

    invoke-virtual/range {v53 .. v61}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v34, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v10

    move/from16 v31, v13

    move/from16 v32, v15

    move/from16 v33, v19

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v34, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v23

    move/from16 v32, v16

    move/from16 v33, v18

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v34, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v26

    move/from16 v31, v21

    move/from16 v33, v22

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v34, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v12

    move/from16 v31, v1

    move/from16 v32, v24

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    const/4 v4, 0x0

    add-float/2addr v2, v4

    add-float v29, v2, v7

    div-float v2, v1, v27

    sub-float v30, v9, v2

    add-float v31, v16, v1

    div-float v1, v1, v27

    add-float v32, v9, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move-object/from16 v33, v1

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v29, v10, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v30, v3, v2

    div-float v1, v1, v27

    add-float v31, v10, v1

    sub-float v32, v9, v2

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v33, v1

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v3, v10, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v2, v27

    sub-float v4, v13, v4

    div-float v5, v2, v27

    sub-float v38, v38, v5

    sub-float v5, v38, v1

    div-float v2, v2, v27

    add-float v6, v13, v2

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v41, v16, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v42, v13, v2

    div-float v1, v1, v27

    add-float v43, v16, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v45, v1

    invoke-virtual/range {v40 .. v45}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v27

    sub-float v31, v22, v2

    div-float v2, v1, v27

    sub-float v32, v16, v2

    div-float v1, v1, v27

    add-float v33, v22, v1

    iget-object v0, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v30, v10

    move-object/from16 v34, v0

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private RightGoldenSpiral(Landroid/graphics/Canvas;)V
    .locals 52

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    const v7, 0x3f3eb852

    int-to-float v2, v2

    mul-float/2addr v7, v2

    const v8, 0x3e03126f

    mul-float/2addr v2, v8

    move v8, v7

    move v7, v6

    goto :goto_0

    :cond_0
    int-to-float v7, v2

    const v2, 0x3e99999a

    move v8, v7

    move v7, v2

    move v2, v6

    :goto_0
    const v12, 0x3e71a9fc

    const v13, 0x3d6425af

    const v14, 0x3e718fc5

    const v15, 0x3e4e703b

    const v16, 0x3ec37b4a

    const v17, 0x3e954c98

    const v18, 0x3db8bac7

    const v19, 0x3ef1a9fc

    const v20, 0x3f92b021

    const v21, 0x3f439581

    const v22, -0x418e5604

    const/4 v5, 0x3

    const v24, 0x3f5aacda

    const v25, 0x3f1e353f

    const/high16 v26, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_1

    const v1, 0x3dcccccd

    sub-float v2, v6, v8

    mul-float/2addr v1, v8

    sub-float v3, v6, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v4, v26

    sub-float v30, v8, v4

    mul-float v4, v8, v26

    sub-float/2addr v4, v1

    const/16 v32, 0x0

    const/high16 v33, 0x42b40000    # 90.0f

    const/16 v34, 0x0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v27, p1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v31, v4

    move-object/from16 v35, v5

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v22, v22, v8

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v7, v5, v26

    add-float v28, v22, v7

    mul-float v25, v25, v8

    sub-float v7, v8, v25

    sub-float/2addr v7, v1

    div-float v5, v5, v26

    sub-float v30, v8, v5

    add-float v25, v8, v25

    sub-float v5, v25, v1

    const/high16 v32, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v7

    move/from16 v31, v5

    move-object/from16 v35, v9

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v26

    add-float v30, v9, v6

    mul-float v21, v21, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v32, v21, v9

    mul-float v20, v20, v8

    sub-float v9, v20, v1

    const/high16 v34, 0x43340000    # 180.0f

    const/high16 v35, 0x42b40000    # 90.0f

    const/16 v36, 0x0

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v37, v10

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v10, v26

    add-float v29, v10, v6

    mul-float v42, v8, v19

    sub-float v10, v8, v42

    sub-float v41, v10, v1

    sub-float v10, v8, v1

    const/high16 v33, 0x42b40000    # 90.0f

    const/high16 v34, 0x42b40000    # 90.0f

    const/16 v35, 0x0

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v30, v41

    move/from16 v31, v42

    move/from16 v32, v10

    move-object/from16 v36, v6

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v6, v8, v18

    mul-float v17, v17, v8

    sub-float v18, v8, v17

    sub-float v18, v18, v1

    mul-float v16, v16, v8

    const/16 v48, 0x0

    const/high16 v49, 0x42b40000    # 90.0f

    const/16 v50, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v43, p1

    move/from16 v44, v6

    move/from16 v45, v18

    move/from16 v46, v16

    move/from16 v47, v10

    move-object/from16 v51, v11

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v11, v8, v15

    mul-float/2addr v14, v8

    sub-float v14, v8, v14

    sub-float/2addr v14, v1

    mul-float/2addr v13, v8

    sub-float v13, v8, v13

    sub-float/2addr v13, v1

    const/high16 v33, 0x43870000    # 270.0f

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v11

    move/from16 v30, v14

    move/from16 v31, v16

    move/from16 v32, v13

    move-object/from16 v36, v15

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v12, v8

    const v15, 0x3eb1de6a

    mul-float/2addr v15, v8

    const v19, 0x3f6020c5

    mul-float v19, v19, v8

    sub-float v19, v19, v1

    const/high16 v33, 0x43340000    # 180.0f

    move/from16 v20, v13

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v12

    move/from16 v31, v15

    move/from16 v32, v19

    move-object/from16 v36, v13

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v13, 0x3f490ff9

    mul-float/2addr v13, v8

    sub-float/2addr v13, v1

    const v22, 0x3e9c0ebf

    mul-float v22, v22, v8

    mul-float v24, v24, v8

    sub-float v24, v24, v1

    const/high16 v48, 0x42b40000    # 90.0f

    move/from16 v23, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v44, v12

    move/from16 v45, v13

    move/from16 v46, v22

    move/from16 v47, v24

    move-object/from16 v51, v15

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v15, 0x3e7f1412

    mul-float/2addr v15, v8

    const v25, 0x3f4fcb92

    mul-float v25, v25, v8

    sub-float v1, v25, v1

    const/16 v33, 0x0

    move/from16 v25, v13

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v15

    move/from16 v30, v1

    move/from16 v31, v17

    move/from16 v32, v24

    move-object/from16 v36, v13

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v13, v26

    sub-float v27, v10, v27

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v45, v27, v28

    div-float v27, v13, v26

    sub-float v46, v8, v27

    div-float v13, v13, v26

    add-float/2addr v13, v10

    add-float v47, v13, v28

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v48, v13

    invoke-virtual/range {v43 .. v48}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v13, v26

    sub-float v30, v16, v27

    div-float v13, v13, v26

    sub-float v13, v16, v13

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v32, v13, v27

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v31, v7

    move/from16 v33, v10

    move-object/from16 v34, v13

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    const/16 v27, 0x0

    add-float v29, v13, v27

    div-float v27, v13, v26

    sub-float v27, v14, v27

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v30, v27, v28

    div-float v13, v13, v26

    sub-float v13, v14, v13

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v13, v27

    sub-float v32, v13, v28

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v31, v16

    move-object/from16 v33, v13

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v13, v26

    sub-float v27, v12, v27

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v31, v27, v28

    div-float v13, v13, v26

    sub-float v13, v12, v13

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v13, v27

    sub-float v33, v13, v28

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v14

    move/from16 v34, v10

    move-object/from16 v35, v13

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v13, v26

    sub-float v30, v24, v27

    div-float v13, v13, v26

    sub-float v13, v24, v13

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v32, v13, v27

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v29, v12

    move/from16 v31, v16

    move-object/from16 v33, v13

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v13, v13, v26

    sub-float v30, v8, v13

    const/16 v32, 0x0

    const/high16 v33, 0x42b40000    # 90.0f

    const/16 v34, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v27, p1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v31, v4

    move-object/from16 v35, v13

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    sub-float v3, v2, v12

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v2, v26

    add-float v30, v3, v4

    div-float v2, v2, v26

    sub-float v32, v8, v2

    const/high16 v34, 0x43870000    # 270.0f

    const/high16 v35, 0x42b40000    # 90.0f

    const/16 v36, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v31, v7

    move/from16 v33, v5

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v26

    const/4 v3, 0x0

    add-float v30, v2, v3

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v32, v21, v2

    const/high16 v34, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v33, v9

    move-object/from16 v37, v2

    invoke-virtual/range {v29 .. v37}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v26

    const/4 v3, 0x0

    add-float v40, v2, v3

    const/high16 v44, 0x42b40000    # 90.0f

    const/high16 v45, 0x42b40000    # 90.0f

    const/16 v46, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v39, p1

    move/from16 v43, v10

    move-object/from16 v47, v2

    invoke-virtual/range {v39 .. v47}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v48, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v43, p1

    move/from16 v44, v6

    move/from16 v45, v18

    move/from16 v46, v16

    move/from16 v47, v10

    move-object/from16 v51, v2

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v33, 0x43870000    # 270.0f

    const/high16 v34, 0x42b40000    # 90.0f

    const/16 v35, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v29, v11

    move/from16 v30, v14

    move/from16 v31, v16

    move/from16 v32, v20

    move-object/from16 v36, v2

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v33, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v12

    move/from16 v31, v23

    move/from16 v32, v19

    move-object/from16 v36, v2

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v48, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v44, v12

    move/from16 v45, v25

    move/from16 v46, v22

    move/from16 v47, v24

    move-object/from16 v51, v2

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v33, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v15

    move/from16 v30, v1

    move/from16 v31, v17

    move/from16 v32, v24

    move-object/from16 v36, v2

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v45, v10, v2

    div-float v2, v1, v26

    sub-float v46, v8, v2

    div-float v1, v1, v26

    add-float v47, v10, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v48, v1

    invoke-virtual/range {v43 .. v48}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v30, v16, v2

    div-float v1, v1, v26

    add-float v32, v16, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v29, p1

    move/from16 v31, v7

    move/from16 v33, v10

    move-object/from16 v34, v1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    const/4 v3, 0x0

    add-float v29, v2, v3

    div-float v2, v1, v26

    sub-float v30, v14, v2

    div-float v1, v1, v26

    add-float v32, v14, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v31, v16

    move-object/from16 v33, v1

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v31, v12, v2

    div-float v2, v1, v26

    add-float v32, v14, v2

    div-float v1, v1, v26

    add-float v33, v12, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v34, v10

    move-object/from16 v35, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    add-float v29, v12, v2

    div-float v2, v1, v26

    sub-float v30, v24, v2

    div-float v1, v1, v26

    add-float v32, v24, v1

    iget-object v0, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v31, v16

    move-object/from16 v33, v0

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_1
    if-eq v1, v3, :cond_6

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    :cond_3
    if-nez v1, :cond_4

    const v7, 0x3db43958

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const v7, 0x3e439581

    :cond_5
    :goto_1
    neg-int v1, v4

    int-to-float v1, v1

    const v2, 0x3fcf1aa0

    div-float/2addr v1, v2

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    int-to-float v3, v4

    mul-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-float v17, v6, v2

    sub-float v18, v3, v17

    div-float v19, v3, v2

    add-float v20, v19, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v8, v26

    sub-float v12, v3, v8

    const/4 v13, 0x0

    const/high16 v14, 0x42b40000    # 90.0f

    const/4 v15, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v1

    move/from16 v10, v18

    move-object/from16 v16, v11

    move/from16 v11, v20

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v4, v6

    add-float/2addr v4, v7

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v5, v26

    const/4 v6, 0x0

    add-float v10, v5, v6

    sub-float v5, v3, v19

    mul-float v6, v5, v26

    const/high16 v13, 0x43870000    # 270.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move v9, v4

    move-object/from16 v16, v12

    move v12, v6

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x40278d50

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    mul-float v9, v3, v2

    sub-float/2addr v8, v9

    add-float v19, v8, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v8, v26

    const/4 v9, 0x0

    add-float v29, v8, v9

    const v8, 0x3fb0e560

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v9, 0x3ec39581

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float v21, v8, v7

    mul-float v25, v25, v3

    div-float v8, v25, v2

    sub-float v25, v25, v8

    mul-float v25, v25, v26

    const/high16 v32, 0x43340000    # 180.0f

    const/high16 v33, 0x42b40000    # 90.0f

    const/16 v34, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v27, p1

    move/from16 v28, v19

    move/from16 v30, v21

    move/from16 v31, v25

    move-object/from16 v35, v8

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x3e71c433

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v22, v8, v9

    const v8, 0x3fed566d

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    mul-float v24, v24, v3

    sub-float v8, v8, v24

    add-float v23, v8, v7

    const/high16 v32, 0x42b40000    # 90.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v22

    move/from16 v30, v23

    move/from16 v31, v5

    move-object/from16 v35, v8

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x401e36e3

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v9, 0x3fbc6dc6

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float v24, v8, v7

    const v8, 0x3f072b02

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v36, v8, v9

    sub-float v17, v17, v3

    add-float v17, v17, v7

    const/16 v32, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v28, v24

    move/from16 v29, v36

    move/from16 v30, v17

    move-object/from16 v35, v8

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x4012ab36

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v9, 0x3fa5566d

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float v37, v8, v7

    const v8, 0x3f1e3bcd

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v38, v8, v9

    const v8, 0x3f68e8a7

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v39, v8, v9

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v9, v37

    move/from16 v10, v38

    move/from16 v11, v17

    move-object/from16 v16, v12

    move/from16 v12, v39

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x400f1aa0

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v9, 0x3f9e353f

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float v40, v8, v7

    const v8, 0x400393de

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v9, 0x3f8727bb

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float v41, v8, v7

    const v8, 0x3f4c56d6

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v42, v8, v9

    const/high16 v32, 0x43340000    # 180.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v28, v40

    move/from16 v29, v38

    move/from16 v30, v41

    move/from16 v31, v42

    move-object/from16 v35, v8

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x3f270a3d

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v43, v8, v9

    const v8, 0x4007fb16

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v9, 0x3f8ff62b

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float v44, v8, v7

    const v8, 0x3f438866

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v45, v8, v9

    const/high16 v32, 0x42b40000    # 90.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v43

    move/from16 v30, v44

    move/from16 v31, v45

    move-object/from16 v35, v8

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x400dbda5

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v9, 0x3f9b7b4a

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float v46, v8, v7

    const v8, 0x3f31eb85

    mul-float/2addr v8, v3

    div-float v9, v8, v2

    sub-float v47, v8, v9

    const v8, 0x4009566d

    mul-float/2addr v8, v3

    div-float/2addr v8, v2

    const v2, 0x3f92acda

    mul-float/2addr v2, v3

    sub-float/2addr v8, v2

    add-float v2, v8, v7

    const/16 v32, 0x0

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v28, v46

    move/from16 v29, v47

    move/from16 v30, v2

    move-object/from16 v35, v7

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v7, v26

    sub-float v8, v5, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v10, v8, v9

    div-float v7, v7, v26

    sub-float v7, v5, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    sub-float v12, v7, v9

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v9, v40

    move/from16 v11, v20

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v7, v26

    sub-float v8, v17, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v11, v8, v9

    const/4 v8, 0x0

    add-float v12, v7, v8

    div-float v7, v7, v26

    sub-float v7, v17, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    sub-float v13, v7, v9

    sub-float v14, v5, v9

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v7, v26

    add-float v10, v19, v8

    div-float v8, v7, v26

    sub-float v11, v38, v8

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v17, v8

    div-float v7, v7, v26

    sub-float v7, v38, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v13, v7, v8

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v8, v7, v26

    sub-float v8, v40, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v8, v9

    add-float v13, v38, v7

    div-float v7, v7, v26

    sub-float v7, v40, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    sub-float v14, v7, v9

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v15, v5

    move-object/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v9, v40, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v8, v26

    sub-float v10, v45, v10

    sub-float/2addr v10, v7

    div-float v8, v8, v26

    sub-float v8, v45, v8

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v8, v11

    sub-float v12, v8, v7

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v11, v17

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v7, v7, v26

    sub-float/2addr v3, v7

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v12, v3, v7

    const/4 v13, 0x0

    const/high16 v14, 0x42b40000    # 90.0f

    const/4 v15, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v9, v1

    move/from16 v10, v18

    move/from16 v11, v20

    move-object/from16 v16, v3

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v26

    const/4 v3, 0x0

    add-float v10, v1, v3

    const/high16 v13, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v9, v4

    move v12, v6

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v26

    const/4 v3, 0x0

    add-float v29, v1, v3

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v31, v25, v1

    const/high16 v32, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v28, v19

    move/from16 v30, v21

    move-object/from16 v35, v1

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v32, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v22

    move/from16 v30, v23

    move/from16 v31, v5

    move-object/from16 v35, v1

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v32, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v28, v24

    move/from16 v29, v36

    move/from16 v30, v17

    move-object/from16 v35, v1

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v9, v37

    move/from16 v10, v38

    move/from16 v11, v17

    move/from16 v12, v39

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v32, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v28, v40

    move/from16 v29, v38

    move/from16 v30, v41

    move/from16 v31, v42

    move-object/from16 v35, v1

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v32, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v43

    move/from16 v30, v44

    move/from16 v31, v45

    move-object/from16 v35, v1

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v32, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v28, v46

    move/from16 v29, v47

    move/from16 v30, v2

    move-object/from16 v35, v1

    invoke-virtual/range {v27 .. v35}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v11, v5, v2

    div-float v2, v1, v26

    sub-float v12, v20, v2

    div-float v1, v1, v26

    add-float v13, v5, v1

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v40

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v7, v17, v2

    const/4 v2, 0x0

    add-float v8, v1, v2

    div-float v2, v1, v26

    add-float v9, v17, v2

    div-float v1, v1, v26

    sub-float v10, v5, v1

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    add-float v7, v19, v2

    div-float v2, v1, v26

    sub-float v8, v38, v2

    div-float v2, v1, v26

    sub-float v9, v17, v2

    div-float v1, v1, v26

    add-float v10, v38, v1

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v12, v40, v2

    div-float v2, v1, v26

    add-float v13, v38, v2

    div-float v1, v1, v26

    add-float v14, v40, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v15, v5

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    add-float v9, v40, v2

    div-float v2, v1, v26

    sub-float v10, v45, v2

    div-float v1, v1, v26

    add-float v12, v45, v1

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v11, v17

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    sub-float v6, v1, v8

    add-float v3, v6, v2

    mul-float/2addr v7, v8

    sub-float v4, v1, v7

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v26

    sub-float v1, v8, v1

    add-float v31, v1, v2

    mul-float v1, v8, v26

    sub-float/2addr v1, v7

    const/16 v33, 0x0

    const/high16 v34, 0x42b40000    # 90.0f

    const/16 v35, 0x0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v32, v1

    move-object/from16 v36, v5

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v22, v22, v8

    add-float v22, v22, v2

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v6, v5, v26

    add-float v29, v22, v6

    mul-float v25, v25, v8

    sub-float v6, v8, v25

    sub-float/2addr v6, v7

    div-float v5, v5, v26

    sub-float v5, v8, v5

    add-float v31, v5, v2

    add-float v25, v8, v25

    sub-float v5, v25, v7

    const/high16 v33, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v6

    move/from16 v32, v5

    move-object/from16 v36, v9

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v26

    const/4 v10, 0x0

    add-float/2addr v9, v10

    add-float v40, v9, v2

    mul-float v21, v21, v8

    add-float v21, v21, v2

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v42, v21, v9

    mul-float v20, v20, v8

    sub-float v9, v20, v7

    const/high16 v44, 0x43340000    # 180.0f

    const/high16 v45, 0x42b40000    # 90.0f

    const/16 v46, 0x0

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v39, p1

    move/from16 v41, v6

    move/from16 v43, v9

    move-object/from16 v47, v10

    invoke-virtual/range {v39 .. v47}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v10, v26

    const/4 v11, 0x0

    add-float/2addr v10, v11

    add-float v29, v10, v2

    mul-float v19, v19, v8

    sub-float v10, v8, v19

    sub-float/2addr v10, v7

    add-float v11, v19, v2

    sub-float v19, v8, v7

    const/high16 v33, 0x42b40000    # 90.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v19

    move-object/from16 v36, v12

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v8

    add-float v12, v18, v2

    mul-float v17, v17, v8

    sub-float v18, v8, v17

    sub-float v18, v18, v7

    mul-float v16, v16, v8

    add-float v16, v16, v2

    const/16 v44, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v40, v12

    move/from16 v41, v18

    move/from16 v42, v16

    move/from16 v43, v19

    move-object/from16 v47, v13

    invoke-virtual/range {v39 .. v47}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v15, v8

    add-float v13, v15, v2

    mul-float/2addr v14, v8

    sub-float v14, v8, v14

    sub-float/2addr v14, v7

    const v15, 0x3d6425af

    mul-float/2addr v15, v8

    sub-float v15, v8, v15

    sub-float/2addr v15, v7

    const/high16 v33, 0x43870000    # 270.0f

    move/from16 v22, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v16

    move/from16 v32, v15

    move-object/from16 v36, v12

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v12, 0x3e71a9fc

    mul-float/2addr v12, v8

    add-float v20, v12, v2

    const v23, 0x3eb1de6a

    mul-float v23, v23, v8

    add-float v23, v23, v2

    const v25, 0x3f6020c5

    mul-float v25, v25, v8

    sub-float v25, v25, v7

    const/high16 v33, 0x43340000    # 180.0f

    move/from16 v27, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v29, v20

    move/from16 v31, v23

    move/from16 v32, v25

    move-object/from16 v36, v15

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v15, 0x3f490ff9

    mul-float/2addr v15, v8

    sub-float/2addr v15, v7

    const v28, 0x3e9c0ebf

    mul-float v28, v28, v8

    add-float v37, v28, v2

    mul-float v24, v24, v8

    sub-float v24, v24, v7

    const/high16 v33, 0x42b40000    # 90.0f

    move/from16 v38, v13

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v30, v15

    move/from16 v31, v37

    move/from16 v32, v24

    move-object/from16 v36, v13

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v13, 0x3e7f1412

    mul-float/2addr v13, v8

    add-float/2addr v13, v2

    const v28, 0x3f4fcb92

    mul-float v28, v28, v8

    sub-float v7, v28, v7

    add-float v17, v17, v2

    const/16 v33, 0x0

    move/from16 v48, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v29, v13

    move/from16 v30, v7

    move/from16 v31, v17

    move-object/from16 v36, v15

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v28, v15, v26

    sub-float v28, v19, v28

    sget v29, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v30, v28, v29

    add-float v49, v8, v2

    div-float v28, v15, v26

    sub-float v31, v49, v28

    div-float v15, v15, v26

    sub-float v15, v19, v15

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v15, v15, v28

    sub-float v32, v15, v29

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v29, v20

    move-object/from16 v33, v15

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v28, v15, v26

    sub-float v31, v16, v28

    div-float v15, v15, v26

    sub-float v15, v16, v15

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v33, v15, v28

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v6

    move/from16 v34, v19

    move-object/from16 v35, v15

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    add-float v50, v2, v15

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v29, v50, v15

    div-float v28, v15, v26

    sub-float v28, v14, v28

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v31, v28, v30

    div-float v15, v15, v26

    sub-float v15, v14, v15

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v15, v15, v28

    sub-float v32, v15, v30

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v30, v31

    move/from16 v31, v16

    move-object/from16 v33, v15

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v28, v15, v26

    sub-float v31, v20, v28

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v32, v14, v28

    div-float v15, v15, v26

    sub-float v15, v20, v15

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v33, v15, v28

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move-object/from16 v35, v15

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v29, v20, v15

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v28, v15, v26

    sub-float v30, v24, v28

    div-float v15, v15, v26

    sub-float v15, v24, v15

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v32, v15, v28

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v31, v16

    move-object/from16 v33, v15

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v15, v15, v26

    sub-float v15, v8, v15

    add-float v31, v15, v2

    const/16 v33, 0x0

    const/high16 v34, 0x42b40000    # 90.0f

    const/16 v35, 0x0

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v32, v1

    move-object/from16 v36, v15

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    sub-float v3, v1, v12

    add-float/2addr v3, v2

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v1, v26

    add-float v40, v3, v4

    div-float v1, v1, v26

    sub-float/2addr v8, v1

    add-float v42, v8, v2

    const/high16 v44, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v41, v6

    move/from16 v43, v5

    move-object/from16 v47, v1

    invoke-virtual/range {v39 .. v47}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v26

    const/4 v3, 0x0

    add-float/2addr v1, v3

    add-float v40, v1, v2

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v42, v21, v1

    const/high16 v44, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v43, v9

    move-object/from16 v47, v1

    invoke-virtual/range {v39 .. v47}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v26

    const/4 v3, 0x0

    add-float/2addr v1, v3

    add-float v40, v1, v2

    const/high16 v44, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v41, v10

    move/from16 v42, v11

    move/from16 v43, v19

    move-object/from16 v47, v1

    invoke-virtual/range {v39 .. v47}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v44, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v40, v22

    move/from16 v41, v18

    move/from16 v42, v16

    move-object/from16 v47, v1

    invoke-virtual/range {v39 .. v47}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v33, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v38

    move/from16 v30, v14

    move/from16 v31, v16

    move/from16 v32, v27

    move-object/from16 v36, v1

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v33, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v20

    move/from16 v31, v23

    move/from16 v32, v25

    move-object/from16 v36, v1

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v33, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v30, v48

    move/from16 v31, v37

    move/from16 v32, v24

    move-object/from16 v36, v1

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v33, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v29, v13

    move/from16 v30, v7

    move/from16 v31, v17

    move-object/from16 v36, v1

    invoke-virtual/range {v28 .. v36}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v30, v19, v2

    div-float v2, v1, v26

    sub-float v31, v49, v2

    div-float v1, v1, v26

    add-float v32, v19, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v29, v20

    move-object/from16 v33, v1

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v8, v16, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v9, v6, v2

    div-float v1, v1, v26

    add-float v10, v16, v1

    sub-float v11, v19, v2

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    add-float v4, v50, v2

    div-float v2, v1, v26

    sub-float v2, v14, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v5, v2, v3

    sub-float v6, v16, v3

    div-float v1, v1, v26

    add-float/2addr v1, v14

    sub-float v7, v1, v3

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    sub-float v31, v20, v2

    div-float v1, v1, v26

    add-float v33, v20, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v14

    move/from16 v34, v19

    move-object/from16 v35, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v26

    add-float v4, v20, v2

    div-float v2, v1, v26

    sub-float v5, v24, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v6, v16, v2

    div-float v1, v1, v26

    add-float v7, v24, v1

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateView(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iget v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v0, v1, :cond_3

    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "left_golden_spiral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "right_golden_spiral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "golden_section"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v6

    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->RightGoldenSpiral(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->LeftGoldenSpiral(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->GoldenSection(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->Jiugongge(Landroid/graphics/Canvas;)V

    :goto_2
    iget-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x344bfe51 -> :sswitch_3
        -0x1d02a42b -> :sswitch_2
        -0x124245fc -> :sswitch_1
        0x411c60af -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public initialize(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    sget p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->updateView(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGradienterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    return-void
.end method
