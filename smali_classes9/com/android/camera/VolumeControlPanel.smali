.class public Lcom/android/camera/VolumeControlPanel;
.super Landroid/view/View;
.source "VolumeControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;,
        Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;
    }
.end annotation


# static fields
.field private static final GAIN_MAX_VALUE:F = 100.0f

.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultGainValue:F = 50.0f


# instance fields
.field private antiAlias:Z

.field private lastY:F

.field private mDialColor:I

.field private mDialPaint:Landroid/graphics/Paint;

.field private mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

.field private mOnVolumePressAnimatorListener:Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;

.field private mRectBottom:F

.field private mRectLeft:F

.field private mRectRight:F

.field private mRectTop:F

.field private mSwitchAnimator:Z

.field private mTemporaryValue:F

.field private mUnitLength:F

.field private offsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/VolumeControlPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/VolumeControlPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    invoke-direct {p0, p1, p2}, Lcom/android/camera/VolumeControlPanel;->Init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private Init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/VolumeControlPanel;->initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/VolumeControlPanel;->initPaint()V

    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, p0, Lcom/android/camera/VolumeControlPanel;->mRectLeft:F

    iget v3, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    iget v4, p0, Lcom/android/camera/VolumeControlPanel;->mRectRight:F

    iget v5, p0, Lcom/android/camera/VolumeControlPanel;->mRectBottom:F

    iget-object v6, p0, Lcom/android/camera/VolumeControlPanel;->mDialPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/android/camera/R$styleable;->VolumeControl:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/VolumeControlPanel;->antiAlias:Z

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mDialColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070717

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mRectLeft:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070718

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mRectRight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070716

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mRectBottom:F

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mUnitLength:F

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    return-void
.end method

.method private initPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mDialPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/camera/VolumeControlPanel;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mDialPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/VolumeControlPanel;->mDialColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public gainValueReset(F)V
    .locals 2

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectBottom:F

    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->mUnitLength:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    iget p1, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setSilenceUpSwitchTarget(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/VolumeControlPanel;->drawRect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->lastY:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/camera/VolumeControlPanel;->offsetY:F

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->lastY:F

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->mRectBottom:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {v0, v2}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setSilenceUpSwitchTarget(Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    iget v3, p0, Lcom/android/camera/VolumeControlPanel;->offsetY:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/VolumeControlPanel;->mRectBottom:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {v0, v1}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setSilenceUpSwitchTarget(Z)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->offsetY:F

    invoke-virtual {p0, v0}, Lcom/android/camera/VolumeControlPanel;->setValue(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {v0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setPostDelayedTime()V

    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    const-string p1, "VolumeControlPanel"

    const-string v1, "onTouchEvent:ACTION_DOWN"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->lastY:F

    iget-object p0, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {p0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->removePostDelayedTime()V

    return v2
.end method

.method public setOnVolumeControlListener(Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;)V
    .locals 2

    sget-object v0, Lcom/android/camera/VolumeControlPanel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnVolumeListener()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    return-void
.end method

.method public setOnVolumePressAnimatorListener(Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;)V
    .locals 2

    sget-object v0, Lcom/android/camera/VolumeControlPanel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnVolumePressAnimatorListener()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumePressAnimatorListener:Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;

    return-void
.end method

.method public setValue(F)V
    .locals 5

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    iget-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {p1, v0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->putVolumeControlValue(F)V

    iget p1, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectBottom:F

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    iput v2, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    :cond_1
    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mRectTop:F

    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->mUnitLength:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    float-to-double v0, p1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_2

    iput v2, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a7

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ChangeGainProtocol;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ChangeGainProtocol;->setGainValue(F)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVolumeControlBackGround()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/xiaomi/camera/ui/drawable/RoundRectDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0700da

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/camera/ui/drawable/RoundRectDrawable;-><init>(IF)V

    return-object v0
.end method
