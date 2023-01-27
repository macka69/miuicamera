.class public Lmiuix/smooth/internal/SmoothDrawHelper;
.super Ljava/lang/Object;
.source "SmoothDrawHelper.java"


# static fields
.field private static final EXTRA_PADDING:F = 0.5f


# instance fields
.field private mClipPaint:Landroid/graphics/Paint;

.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mOutterPath:Landroid/graphics/Path;

.field private mPathProvider:Lmiuix/smooth/SmoothPathProvider;

.field private mRadii:[F

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    iput v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    new-instance v0, Lmiuix/smooth/SmoothPathProvider;

    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    return-void
.end method

.method private getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider;

    invoke-virtual {p3, p2, p4, p5, p6}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;FFF)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider;

    invoke-virtual {p4, p2, p3, p5, p6}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    :goto_0
    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider;

    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->getSmoothPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V
    .locals 1

    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p2, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getRadii()[F
    .locals 0

    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    return-object p0
.end method

.method public getRadius()F
    .locals 0

    iget p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    return p0
.end method

.method public getStrokeWidth()I
    .locals 0

    iget p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    :cond_1
    move v9, v2

    iget-object v4, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object v5, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    iget-object v6, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    iget v7, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    move-object v3, p0

    move v8, v9

    invoke-direct/range {v3 .. v9}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    :goto_1
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public setRadii([F)V
    .locals 0

    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    return-void
.end method
