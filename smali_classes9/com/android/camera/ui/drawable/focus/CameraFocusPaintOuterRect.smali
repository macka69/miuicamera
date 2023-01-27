.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintOuterRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;
    }
.end annotation


# static fields
.field private static final I_ROUND_RADIUS:I

.field private static final I_STICK_LENGTH:I

.field public static final STROKE_WIDTH:F = 1.33f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3f3a1cac

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_ROUND_RADIUS:I

    const v0, 0x4151999a

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_STICK_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 14

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_STICK_LENGTH:I

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_ROUND_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    neg-float v3, v2

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v3, v4

    neg-float v2, v2

    mul-float/2addr v2, v4

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    add-float v6, v2, v0

    const/4 v7, 0x1

    aput v6, v4, v7

    const/4 v6, 0x2

    aput v3, v4, v6

    add-float v6, v2, v1

    const/4 v7, 0x3

    aput v6, v4, v7

    add-float v6, v3, v1

    const/4 v7, 0x4

    aput v6, v4, v7

    const/4 v6, 0x5

    aput v2, v4, v6

    add-float/2addr v0, v3

    const/4 v6, 0x6

    aput v0, v4, v6

    const/4 v0, 0x7

    aput v2, v4, v0

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    add-float v6, v3, v1

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v2, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    if-ge v5, v7, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->getPaintColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    move-object v9, v0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getPaintColor(I)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    return p0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const v0, 0x3faa3d71

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
