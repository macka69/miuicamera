.class public Lcom/android/gallery3d/ui/StringTexture;
.super Lcom/android/gallery3d/ui/CanvasTexture;
.source "StringTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StringTexture"

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_WATER_MARK:I = 0x1

.field public static final TYPE_WATER_MARK_NEW_STYLE:I = 0x2

.field public static final WATER_MARK_SHADOW_D:F = 5.0f

.field public static final WATER_MARK_SHADOW_Y:F = 3.0f

.field public static final WATER_MARK_SHADOW_Y_COLOR:I = 0x2e000000


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lcom/android/gallery3d/ui/CanvasTexture;-><init>(II)V

    iput-object p1, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static getDefaultPaint(FII)Landroid/text/TextPaint;
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 p1, -0x1000000

    const v1, 0x3dcccccd

    if-ne p2, p0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 p0, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, p0, p0, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const/4 v2, 0x0

    if-ne p2, p0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 p0, 0x40400000    # 3.0f

    const/high16 p1, 0x2e000000

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_0

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    invoke-virtual {v0, p0, v2, v2, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :goto_0
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;FIFZI)Lcom/android/gallery3d/ui/StringTexture;
    .locals 0

    invoke-static {p1, p2, p5}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FII)Landroid/text/TextPaint;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p1, p3, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0, p1, p5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;FII)Lcom/android/gallery3d/ui/StringTexture;
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportCustomWaterMarkGen2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->getTextPaintGen2(F)Landroid/text/TextPaint;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FII)Landroid/text/TextPaint;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcom/android/gallery3d/ui/StringTexture;
    .locals 6

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr v0, p2

    iget p2, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, v2

    if-gtz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-gtz p2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, p2

    :goto_2
    new-instance p2, Lcom/android/gallery3d/ui/StringTexture;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object p2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p2, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
