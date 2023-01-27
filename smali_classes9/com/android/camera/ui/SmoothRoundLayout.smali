.class public Lcom/android/camera/ui/SmoothRoundLayout;
.super Landroid/widget/FrameLayout;
.source "SmoothRoundLayout.java"

# interfaces
.implements Lcom/android/camera/ui/IModeProgress;


# static fields
.field protected static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

.field protected static final XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field protected mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

.field protected mLayer:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field protected mSavedLayer:Landroid/graphics/RectF;

.field private mSmooth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-direct {v0}, Lcom/android/camera/ui/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    sget-object v0, Lcom/android/camera/R$styleable;->SmoothRoundLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SmoothRoundLayout;->setCornerRadius(F)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SmoothRoundLayout;->setStrokeWidth(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SmoothRoundLayout;->setStrokeColor(I)V

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSmooth:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    const p2, 0x7f0602c2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateBackground()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBounds()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getProgress()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float v6, v3, v2

    iget-object v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    iget-object v9, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getDispatchXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getStorkeXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/ui/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getStorkeXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/ui/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    return-void
.end method

.method public getCornerRadius()F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothDrawHelper;->getRadius()F

    move-result p0

    return p0
.end method

.method protected getDispatchXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 0

    sget-object p0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mProgress:I

    return p0
.end method

.method protected getStorkeXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeColor()I

    move-result p0

    return p0
.end method

.method public getStrokeWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeWidth()I

    move-result p0

    return p0
.end method

.method protected getXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 0

    sget-object p0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-object p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBounds()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SmoothDrawHelper;->setRadius(F)V

    iget-object p1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SmoothDrawHelper;->setRadii([F)V

    invoke-direct {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBackground()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mProgress:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SmoothDrawHelper;->setStrokeColor(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SmoothDrawHelper;->setStrokeWidth(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method protected updateBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    iget-object v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSmooth:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;Z)V

    return-void
.end method
