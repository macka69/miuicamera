.class public Lcom/android/camera/fragment/FragmentPanorama;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPanorama.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;
.implements Lcom/android/camera/CameraScreenNail$RequestRenderListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xff0

.field public static final PREVIEW_CROP_RATIO:F = 0.8f

.field public static final TAG:Ljava/lang/String; = "FragmentPanorama"

.field public static final VERTICAL_PREVIEW_CROP_RATIO:F = 0.9f


# instance fields
.field private mArrowMargin:I

.field private mArrowTranslation:I

.field private mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

.field private mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mHintFrame:Landroid/view/ViewGroup;

.field private mIndicator:Landroid/widget/ImageView;

.field private mMoveDirection:I

.field private mMoveReferenceLine:Landroid/view/View;

.field private mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

.field private mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

.field private mPanoramaPreview:Landroid/widget/ImageView;

.field private mPanoramaViewRoot:Landroid/view/View;

.field protected mPreviewSize:Lcom/android/camera/CameraSize;

.field private mStillPreview:Lcom/android/camera/ui/GLTextureView;

.field private mStillPreviewHintArea:Landroid/view/View;

.field private mStillPreviewTextureHeight:I

.field private mStillPreviewTextureOffsetX:I

.field private mStillPreviewTextureOffsetY:I

.field private mStillPreviewTextureWidth:I

.field private mUseHintTextView:Landroid/widget/TextView;

.field private mUseHintTextViewTopMargin:I

.field private volatile mWaitingFirstFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    sget-object v0, Lcom/android/camera/panorama/CaptureDirection;->HORIZONTAL:Lcom/android/camera/panorama/CaptureDirection;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    new-instance v0, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-direct {v0}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetX:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetY:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentPanorama;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/FragmentPanorama;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/camera/fragment/FragmentPanorama;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentPanorama;Lcom/android/camera/fragment/FragmentPanorama$1;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    new-instance v1, Lcom/android/camera/fragment/FragmentPanorama$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentPanorama$1;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method private initViewByCaptureDirection(Lcom/android/camera/panorama/CaptureDirection;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initViewByCaptureDirection isVertical "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentPanorama"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportPanoramaSwitchOrientation()Z

    move-result v0

    const v2, 0x7f0a02e2

    if-eqz v0, :cond_2

    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextViewTopMargin:I

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    :goto_2
    const v0, 0x7f0a02d8

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0a02d9

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-direct {v3}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-direct {v3}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p1, :cond_5

    move-object v0, v2

    :cond_5
    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0705dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/FragmentPanorama;->setViewMargin(Landroid/view/View;I)V

    if-eqz p1, :cond_6

    const v0, 0x7f0a02e7

    goto :goto_3

    :cond_6
    const v0, 0x7f0a02e6

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    const v0, 0x7f0a02e9

    goto :goto_4

    :cond_7
    const v0, 0x7f0a02e8

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    if-eqz p1, :cond_8

    const v0, 0x7f0a02db

    goto :goto_5

    :cond_8
    const v0, 0x7f0a02da

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoMovingIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    if-eqz p1, :cond_9

    const v0, 0x7f0a02dd

    goto :goto_6

    :cond_9
    const v0, 0x7f0a02dc

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    if-eqz p1, :cond_a

    const v0, 0x7f0a02e1

    goto :goto_7

    :cond_a
    const v0, 0x7f0a02e0

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    if-eqz p1, :cond_b

    const v0, 0x7f0a02df

    goto :goto_8

    :cond_b
    const v0, 0x7f0a02de

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    const v2, 0x7f11008f

    goto :goto_9

    :cond_c
    const v2, 0x7f110090

    :goto_9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705e5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentPanorama;->setViewMargin(Landroid/view/View;I)V

    goto :goto_b

    :cond_d
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    goto :goto_a

    :cond_e
    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result p1

    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    :goto_a
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentPanorama;->setViewMargin(Landroid/view/View;I)V

    :goto_b
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$moveToDirection$0(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method private setViewMargin(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateIndicatorLayoutParams()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIndicatorLayoutParams "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentPanorama"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    const/16 v3, 0xc

    const/16 v5, 0xa

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowTranslation:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->setTransformationRatio(F)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDirection()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff0

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0141

    return p0
.end method

.method public getPreivewContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public initPreviewLayout(Lcom/android/camera/CameraSize;)V
    .locals 9

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/camera/panorama/CaptureDirection;->HORIZONTAL:Lcom/android/camera/panorama/CaptureDirection;

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    const-string v6, "FragmentPanorama"

    if-eq v3, v5, :cond_1

    const-string v3, "initPreviewLayout direction changed"

    invoke-static {v6, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentPanorama;->toggleCaptureDirection()V

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    if-eq v4, v3, :cond_2

    iput v4, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setPanoramaMoveDirection(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentPanorama;->updateIndicatorLayoutParams()V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    sget-object v4, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    const v5, 0x3f666666

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v4, v3

    div-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v4, v1

    int-to-float v1, v2

    div-float/2addr v4, v1

    float-to-int v1, v4

    goto :goto_2

    :cond_3
    int-to-float v1, v1

    const v3, 0x3f4ccccd

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    div-int v1, v2, v1

    move v8, v3

    move v3, v1

    move v1, v8

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPreviewLayout "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    sget-object v4, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    const/4 v6, 0x0

    if-ne v2, v4, :cond_4

    int-to-float p1, v3

    div-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    sub-int/2addr p1, v3

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetX:I

    iput v6, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetY:I

    goto :goto_3

    :cond_4
    iput v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    mul-int/2addr v3, v0

    div-int/2addr v3, p1

    iput v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    iput v6, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetX:I

    sub-int/2addr v3, v1

    neg-int p1, v3

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureOffsetY:I

    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const p1, 0x7f110547

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getMarginStart()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {}, Lcom/android/camera/Display;->getMarginEnd()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->initViewByCaptureDirection(Lcom/android/camera/panorama/CaptureDirection;)V

    const p1, 0x7f0a02e8

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/GLTextureView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V

    const p1, 0x7f0a02e9

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/GLTextureView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V

    return-void
.end method

.method public isShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0
.end method

.method public moveToDirection(I)V
    .locals 11

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705e4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->getTransformationRatio()F

    move-result v2

    iget v3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr p1, v0

    int-to-float v0, p1

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_0
    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureWidth:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p1, v0

    int-to-float v0, p1

    :goto_1
    move v2, v6

    goto :goto_2

    :cond_1
    const/4 v8, 0x5

    if-ne v3, v8, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowTranslation:I

    sub-int/2addr p1, v1

    neg-int p1, p1

    int-to-float v1, p1

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewTextureHeight:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowMargin:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowTranslation:I

    sub-int/2addr p1, v1

    neg-int p1, p1

    int-to-float v1, p1

    goto :goto_1

    :cond_3
    :goto_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const-wide/16 v3, 0x1f4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eq p1, v7, :cond_5

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    new-array v0, v10, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v5

    aput v5, v0, v9

    aput v1, v0, v8

    const-string/jumbo v1, "translationY"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    new-array v1, v10, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v5

    aput v5, v1, v9

    aput v0, v1, v8

    const-string/jumbo v0, "translationX"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaArrowAnimateDrawable:Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;

    new-array v1, v10, [F

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/PanoramaArrowAnimateDrawable;->getTransformationRatio()F

    move-result v3

    aput v3, v1, v9

    aput v2, v1, v8

    const-string/jumbo v2, "transformationRatio"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-array v2, v10, [F

    invoke-virtual {v1}, Landroid/view/TextureView;->getAlpha()F

    move-result v3

    aput v3, v2, v9

    aput v6, v2, v8

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/camera/fragment/FragmentPanorama$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentPanorama$2;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v1, v4, v9

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Lcom/android/camera/fragment/-$$Lambda$FragmentPanorama$G649QOOhWcKoqki0QAcKcBNei9c;->INSTANCE:Lcom/android/camera/fragment/-$$Lambda$FragmentPanorama$G649QOOhWcKoqki0QAcKcBNei9c;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p0, v7, [Landroid/animation/Animator;

    aput-object p1, p0, v9

    aput-object v0, p0, v8

    aput-object v3, p0, v10

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->showSmallPreview(Z)V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    return-void
.end method

.method public onCaptureDirectionDecided(III)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const v1, 0x7f11054a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setDisplayCenterY(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setMovingAttribute(III)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const v3, 0x7f110090

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    move p1, v4

    goto :goto_0

    :cond_1
    const v6, 0x7f11008f

    if-ne v0, v4, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    move p1, v5

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    move p1, v1

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    move p1, v2

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pano_preview_hint_frame direction from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentPanorama"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDirectionChanged(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama;->moveToDirection(I)V

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setPanoramaMoveDirection(I)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02de
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0705de

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mArrowTranslation:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/panorama/CaptureDirection;->HORIZONTAL:Lcom/android/camera/panorama/CaptureDirection;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    :goto_1
    return-void
.end method

.method public onPreviewMoving()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isTooFast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const v0, 0x7f11054d

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isFar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const v0, 0x7f11054b

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const v0, 0x7f11054a

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const-string v0, "FragmentPanorama"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a02dd

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a02dc

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentPanorama;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p3, 0xa6

    if-eq p1, p3, :cond_1

    const/4 p1, -0x1

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x10e

    const/16 p2, 0xb4

    if-eqz p3, :cond_2

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_1

    :cond_1
    if-ne p3, p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eq p3, p2, :cond_5

    if-ne p3, p1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextViewTopMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result p1

    iget p2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextViewTopMargin:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetShootUI()V
    .locals 2

    const-string v0, "FragmentPanorama"

    const-string v1, "resetShootUI"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const v0, 0x7f110547

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setDirectionPosition(Landroid/graphics/Point;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setPosition(Landroid/graphics/Point;I)V

    return-void
.end method

.method public setDirectionTooFast(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setTooFast(ZI)V

    return-void
.end method

.method public setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public setShootUI()V
    .locals 3

    const-string v0, "FragmentPanorama"

    const-string/jumbo v1, "setShootUI"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSmallPreview(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSmallPreview mMoveDirection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentPanorama"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentPanorama;->updateIndicatorLayoutParams()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mWaitingFirstFrame:Z

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPanoramaViewRoot:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method public toggleCaptureDirection()V
    .locals 4

    const-string v0, "FragmentPanorama"

    const-string/jumbo v1, "toggleCaptureDirection E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    sget-object v2, Lcom/android/camera/panorama/CaptureDirection;->HORIZONTAL:Lcom/android/camera/panorama/CaptureDirection;

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    :cond_0
    iput-object v2, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    sget-object v1, Lcom/android/camera/panorama/CaptureDirection;->HORIZONTAL:Lcom/android/camera/panorama/CaptureDirection;

    const/4 v3, 0x4

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    :goto_1
    iget v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mMoveDirection:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setPanoramaMoveDirection(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentPanorama;->initViewByCaptureDirection(Lcom/android/camera/panorama/CaptureDirection;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentPanorama;->initPreviewLayout(Lcom/android/camera/CameraSize;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mUseHintTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mHintFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentPanorama;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentPanorama;->updateIndicatorLayoutParams()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentPanorama;->mCaptureDirection:Lcom/android/camera/panorama/CaptureDirection;

    sget-object v1, Lcom/android/camera/panorama/CaptureDirection;->VERTICAL:Lcom/android/camera/panorama/CaptureDirection;

    if-ne p0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackDirectionToggle(Z)V

    const-string/jumbo p0, "toggleCaptureDirection X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
