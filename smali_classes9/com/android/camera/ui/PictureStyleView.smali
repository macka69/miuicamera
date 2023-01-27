.class public Lcom/android/camera/ui/PictureStyleView;
.super Landroid/view/View;
.source "PictureStyleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBigRadius:I

.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentPointIndex:I

.field private mDrawBackgroundPaint:Landroid/graphics/Paint;

.field private mInnerHeight:I

.field private mInnerMarginHorizontal:I

.field private mInnerMarginVertical:I

.field private mIsRLT:Z

.field private mMiniSmallColor:I

.field private mMiniSmallRadius:I

.field private mPictureStyleListener:Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;

.field private mPointCount:I

.field private mPointsXList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsY:F

.field private mSmallColor:I

.field private mSmallRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/PictureStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/PictureStyleView;->mCurrentPointIndex:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mBigRadius:I

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mSmallRadius:I

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mMiniSmallRadius:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/PictureStyleView;->mIsRLT:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070383

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070385

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginVertical:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070384

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070382

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mBigRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070386

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mMiniSmallRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070387

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mSmallRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060314

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mMiniSmallColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060311

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PictureStyleView;->mSmallColor:I

    invoke-virtual {p0}, Lcom/android/camera/ui/PictureStyleView;->updateBackgroundColor()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private getCurrentIndex()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PictureStyleView;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/PictureStyleView;->mIsRLT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int v2, v0, v2

    :cond_0
    iput v2, p0, Lcom/android/camera/ui/PictureStyleView;->mCurrentPointIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PictureStyleView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginHorizontal:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginVertical:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginHorizontal:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginVertical:I

    iget v1, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerHeight:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    iget-object v8, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/PictureStyleView;->mCurrentPointIndex:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsY:F

    iget v3, p0, Lcom/android/camera/ui/PictureStyleView;->mBigRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/PictureStyleView;->mSmallColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsY:F

    iget v3, p0, Lcom/android/camera/ui/PictureStyleView;->mSmallRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/PictureStyleView;->mMiniSmallColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsY:F

    iget v3, p0, Lcom/android/camera/ui/PictureStyleView;->mMiniSmallRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PictureStyleView;->mDrawBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsY:F

    iget-object p1, p0, Lcom/android/camera/ui/PictureStyleView;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerHeight:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginHorizontal:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    iget p4, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerHeight:I

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    int-to-float p5, p2

    mul-float/2addr p5, p1

    add-float/2addr p4, p5

    iget p5, p0, Lcom/android/camera/ui/PictureStyleView;->mInnerMarginHorizontal:I

    int-to-float p5, p5

    add-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mPictureStyleListener:Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;->canScroll()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    const/high16 v0, 0x4f000000

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    if-ge v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/PictureStyleView;->mPointsXList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v0

    if-gez v5, :cond_3

    move v3, v2

    move v0, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/PictureStyleView;->mCurrentPointIndex:I

    if-eq v3, v0, :cond_7

    iput v3, p0, Lcom/android/camera/ui/PictureStyleView;->mCurrentPointIndex:I

    iget-object v0, p0, Lcom/android/camera/ui/PictureStyleView;->mPictureStyleListener:Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/android/camera/ui/PictureStyleView;->mIsRLT:Z

    if-eqz v2, :cond_5

    sub-int/2addr v4, v1

    sub-int v3, v4, v3

    :cond_5
    invoke-interface {v0, v3}, Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;->scrollPosition(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_8

    iget-object p0, p0, Lcom/android/camera/ui/PictureStyleView;->mPictureStyleListener:Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;->updateIcon()V

    :cond_8
    :goto_1
    return v1
.end method

.method public setData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/PictureStyleView;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/PictureStyleView;->mPointCount:I

    invoke-direct {p0}, Lcom/android/camera/ui/PictureStyleView;->getCurrentIndex()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPictureStyleListener(Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/PictureStyleView;->mPictureStyleListener:Lcom/android/camera/ui/PictureStyleView$PictureStyleListener;

    return-void
.end method

.method public updateBackgroundColor()V
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PictureStyleView;->mBackgroundColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PictureStyleView;->mBackgroundColor:I

    :goto_0
    return-void
.end method
