.class public Lcom/android/camera/timerburst/TimerBurstSeekBar;
.super Landroid/view/View;
.source "TimerBurstSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;,
        Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;
    }
.end annotation


# static fields
.field private static CIRICLE_RADIUS_MAX:F = 0.0f

.field private static CIRICLE_RADIUS_MIN:F = 0.0f

.field private static HIDE_MAX:I = 0x2

.field private static HIDE_MIN:I = 0x1

.field private static HIDE_NONE:I = 0x0

.field private static INNER_RADIUS_MAX:F = 0.0f

.field private static INNER_RADIUS_MIN:F = 0.0f

.field private static final NUM_RATE:F = 0.03f

.field private static OUT_RADIUS:F = 0.0f

.field private static final POSITION_X_RATE:F = 0.1f

.field private static final TEXT_MARGINTOP:I = 0xa

.field private static final TEXT_MARGINTOP_MAX:I


# instance fields
.field private mBackgroundRectPaint:Landroid/graphics/Paint;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCurrentCircleX:F

.field private mCurrentNum:I

.field private mCurrentScaleRate:F

.field private mCurrentTextPaint:Landroid/graphics/Paint;

.field private mHideType:I

.field private mInnerPaint:Landroid/graphics/Paint;

.field private mMax:I

.field private mMin:I

.field private mNeedRefrensh:Z

.field private mNormalTextPaint:Landroid/text/TextPaint;

.field private mRTL:Z

.field private mScaleObject:Ljava/lang/Object;

.field private mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

.field private mStep:I

.field private mUnit:Ljava/lang/String;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mXObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleObject:Ljava/lang/Object;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mXObject:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->initPaint(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    return p1
.end method

.method private numToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStep:I

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startAnimator(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleObject:Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    new-instance v3, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;

    invoke-direct {v3, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    invoke-static {v1, v2, p1, v0, v3}, Lcom/android/camera/animation/FolmeUtils;->basePhysicsAnimation(Ljava/lang/Object;FFFLcom/android/camera/animation/FolmeUtils$CustomTransitionListener;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method protected initPaint(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070673

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070671

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MIN:F

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MAX:F

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MIN:F

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MAX:F

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    const v2, 0x26d8d8d8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f060069

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public initSeekBarConfig([IIILjava/lang/String;Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    array-length v1, p1

    sub-int/2addr v1, v0

    aget p1, p1, v1

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    iput p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    iput p3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStep:I

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mUnit:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

    return-void
.end method

.method public mapNumToPosition(ILcom/android/camera/timerburst/TimerBurstSeekBar$Result;)F
    .locals 4

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_0
    sget p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    return p0

    :cond_1
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_2
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float p0, p0

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr p0, p1

    return p0

    :cond_3
    sub-int/2addr p1, v0

    int-to-float p1, p1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    const v0, 0x3cf5c28f

    cmpg-float v1, p1, v0

    const v2, 0x3dcccccd

    if-gez v1, :cond_5

    if-eqz p2, :cond_4

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_4
    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_5
    const v1, 0x3f7851ec

    cmpl-float v3, p1, v1

    if-lez v3, :cond_7

    if-eqz p2, :cond_6

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_6
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    const p2, 0x3f666666

    add-float/2addr p1, p2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_8
    sub-float/2addr p1, v0

    const p2, 0x3f70a3d7

    div-float/2addr p1, p2

    const p2, 0x3f4ccccd

    mul-float/2addr p1, p2

    add-float/2addr p1, v2

    :goto_0
    sget p2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p2, v0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    sub-float/2addr p0, v0

    invoke-static {p1, v1, p0}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I
    .locals 4

    sget v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_0
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    return p0

    :cond_1
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_2
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    return p0

    :cond_3
    sub-float/2addr p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const v0, 0x3dcccccd

    cmpg-float v1, p1, v0

    const v2, 0x3cf5c28f

    if-gez v1, :cond_5

    if-eqz p2, :cond_4

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_4
    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_5
    const v1, 0x3f666666

    cmpl-float v3, p1, v1

    if-lez v3, :cond_7

    if-eqz p2, :cond_6

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_6
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    const p2, 0x3f7851ec

    add-float/2addr p1, p2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_8
    sub-float/2addr p1, v0

    const p2, 0x3f4ccccd

    div-float/2addr p1, p2

    const p2, 0x3f70a3d7

    mul-float/2addr p1, p2

    add-float/2addr p1, v2

    :goto_0
    iget p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p2, p1, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    new-instance v1, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;

    invoke-direct {v1, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapNumToPosition(ILcom/android/camera/timerburst/TimerBurstSeekBar$Result;)F

    move-result v2

    iput v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    iget-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v1

    iput v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    iput-boolean v9, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v3, v1

    sget v7, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v4, v7, v10

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v8, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MIN:F

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MAX:F

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float v7, v1, v2

    iget-boolean v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    sub-float v2, v1, v7

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v3, v1

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v7

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    add-float/2addr v5, v7

    int-to-float v1, v1

    sub-float/2addr v1, v4

    add-float v6, v1, v7

    iget-object v8, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float v2, v1, v7

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v4, v3

    sub-float/2addr v4, v1

    sub-float/2addr v4, v7

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    add-float/2addr v5, v7

    int-to-float v3, v3

    sub-float/2addr v3, v1

    add-float v6, v3, v7

    iget-object v8, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MIN:F

    sget v2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MAX:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, -0x3ee00000    # -10.0f

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v4, v6

    div-float/2addr v6, v10

    add-float/2addr v3, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v6, v6

    sget v7, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v6, v7

    add-float/2addr v3, v5

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v4, v6

    div-float/2addr v6, v10

    add-float/2addr v3, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    add-float/2addr v3, v5

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    if-eq v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v4, v2

    div-float/2addr v2, v10

    add-float/2addr v3, v2

    sub-float/2addr v3, v4

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    add-float/2addr v3, v5

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v4, v2

    div-float/2addr v2, v10

    add-float/2addr v3, v2

    sub-float/2addr v3, v4

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v4, v4

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v4, v6

    add-float/2addr v3, v5

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v9, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v3, v2

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    add-float/2addr v1, v5

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->startAnimator(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->startAnimator(Z)V

    :goto_0
    new-instance v0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;

    invoke-direct {v0, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sget v2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-static {p1, v2, v3}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v3

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    if-ne v3, v4, :cond_2

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {v0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v3

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    if-ne v3, v4, :cond_3

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {v0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_3
    :goto_1
    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    if-eq v2, v3, :cond_4

    iput v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStep:I

    invoke-interface {v0, p0, v3, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;->currentSeekBarValue(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mXObject:Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    const/4 v3, 0x0

    new-instance v4, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;

    invoke-direct {v4, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    invoke-static {v0, v2, p1, v3, v4}, Lcom/android/camera/animation/FolmeUtils;->basePhysicsAnimation(Ljava/lang/Object;FFFLcom/android/camera/animation/FolmeUtils$CustomTransitionListener;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 p1, -0x2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-interface {p0, p1, v0}, Lmiuix/animation/IStateStyle;->setEase(I[F)Lmiuix/animation/IStateStyle;

    :cond_4
    return v1

    :array_0
    .array-data 4
        0x3f666666
        0x3e19999a
    .end array-data
.end method
