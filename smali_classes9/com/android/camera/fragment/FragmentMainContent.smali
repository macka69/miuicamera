.class public Lcom/android/camera/fragment/FragmentMainContent;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMainContent.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf3

.field private static final TAG:Ljava/lang/String; = "FragmentMainContent"


# instance fields
.field private lastConfirmTime:J

.field private lastFaceResult:I

.field private mActiveIndicator:I

.field private mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

.field private mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

.field private mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field private mCenterHintIcon:Landroid/widget/ImageView;

.field private mCenterHintText:Landroid/widget/TextView;

.field private mCurrentMimojiFaceResult:I

.field private mDisplayRectLeftMargin:I

.field private mDisplayRectTopMargin:I

.field private mDocumentView:Lcom/android/camera/ui/DocumentView;

.field private mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mHandler:Landroid/os/Handler;

.field private mHistogramAnimator:Landroid/animation/ValueAnimator;

.field private mIsHorizontal:Z

.field private mIsIntentAction:Z

.field private mIsMimojiCreateLowLight:Z

.field private mIsMimojiFaceDetectTip:Z

.field private mIsRecording:Z

.field private mIsShowMainLyingDirectHint:Z

.field private mIvIdPhotoBox:Landroid/widget/ImageView;

.field private mLastCameraId:I

.field private mLastFaceSuccess:Z

.field private mLastTranslateY:I

.field private mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field private mLightingView:Lcom/android/camera/ui/LightingView;

.field private mListener:Lcom/android/camera/aiwatermark/DragListener;

.field private mLocationDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mLyingDirectHint:Landroid/widget/TextView;

.field private mMimojiDetectTipType:I

.field private mMimojiFaceDetect:I

.field private mMimojiLastFaceSuccess:Z

.field private mMimojiLightingView:Lcom/android/camera/ui/LightingView;

.field private mMoreModeMaskView:Landroid/view/View;

.field private mObjectView:Lcom/android/camera/ui/ObjectView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPreviewCenterHint:Landroid/view/ViewGroup;

.field private mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field private mPreviewPage:Landroid/view/ViewGroup;

.field private mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field private mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field private mSuperMoonScaleSize:F

.field private mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

.field private mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

.field private mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

.field private mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

.field private mWatermarkDegree:I

.field private mWatermarkExtendLayout:Landroid/widget/FrameLayout;

.field private mWatermarkExtendViewStub:Landroid/view/ViewStub;

.field private mWatermarkLayout:Landroid/widget/FrameLayout;

.field private mWatermarkScaleSize:F

.field private mWatermarkViewStub:Landroid/view/ViewStub;

.field private mergeRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSuperMoonScaleSize:F

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLocationDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent$2;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/ShapeBackGroundView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentMainContent;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLocationDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/FragmentMainContent;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLocationDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->findTextView(Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentMainContent;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/FragmentMainContent;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentMainContent;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentMainContent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/camera/fragment/FragmentMainContent;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMimojiFaceResult:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/FragmentMainContent;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->mimojiFaceDetectSync(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/FragmentMainContent;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private adjustViewHeight()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    if-ne v5, v6, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectLeftMargin:I

    if-eq v5, v6, :cond_2

    :cond_1
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectLeftMargin:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setDisplaySize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private autoRelayoutUI(Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/graphics/Rect;Z)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "longitude_latitude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "location_time_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "location_time_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/high16 v0, 0x41c00000    # 24.0f

    const/16 v5, 0x18

    if-eq p1, v4, :cond_9

    const v6, 0x7f070094

    const v7, 0x7f070093

    if-eq p1, v3, :cond_6

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p4, 0x7f0a022c

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/camera/Util;->getLength2(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0a022b

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-gt p4, v5, :cond_1

    mul-int/2addr p4, v2

    int-to-float p4, p4

    div-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f07007c

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070076

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f07007d

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070077

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_2
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070096

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr v5, v4

    add-int/2addr v6, v5

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v0, v4

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v2, v1, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v1

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, v2

    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p3

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v0

    invoke-virtual {p2, p3, v0, v1, p4}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_7

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f07069d

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0706a5

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p4, v3, v3, v0, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v3, p1, p3}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const p3, 0x7f0a0054

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasAltitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentMainContent"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_5

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700af

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_5
    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700b1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_3
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700a9

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p4, v3, v3, v0, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v3, p3, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    :goto_4
    const/4 p1, 0x0

    goto/16 :goto_7

    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p4, 0x7f0a0233

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getLength(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-gt v1, v5, :cond_7

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5

    :cond_7
    iput v2, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0234

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070086

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070088

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v0, v4

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    iget p4, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v0, p4

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v2, v0, :cond_8

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v0

    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_8
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v0

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v2

    invoke-virtual {p3, v0, v2, v3, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v0, p3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, p4

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_7

    :cond_9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p4, 0x7f0a022f

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a010e

    invoke-virtual {p4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getLength(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07007b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    if-gt v2, v5, :cond_a

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_6
    invoke-virtual {p4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v3, v0

    iget v5, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v5, v2

    invoke-virtual {p4, v0, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0230

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getWidth()I

    move-result p4

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0231

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v5, v2

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070071

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v1, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    add-int/2addr v1, p4

    add-int/2addr v1, v6

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f070075

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v2, v1, :cond_b

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v1

    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_b
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v1

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p4, v2

    invoke-virtual {p3, v1, v2, v3, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, p4, v1, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    :goto_7
    if-eqz p1, :cond_c

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->reSizeTextView(Landroid/widget/TextView;)V

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_4
        0x2411709 -> :sswitch_3
        0x241170a -> :sswitch_2
        0x708f48fc -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private calculateLP(Lcom/android/camera/aiwatermark/data/WatermarkItem;ILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 16

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/camera/fragment/FragmentMainContent;->needMoveUpWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z

    move-result v2

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v6, 0xfd

    invoke-virtual {v2, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070797

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070121

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v9, 0xc2

    invoke-virtual {v8, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x31

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v11, v12, :cond_4

    const/16 v12, 0x32

    if-eq v11, v12, :cond_3

    const/16 v12, 0x37

    if-eq v11, v12, :cond_2

    const/16 v6, 0x625

    if-eq v11, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "16"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v13

    goto :goto_2

    :cond_2
    const-string v11, "7"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_3
    const-string v6, "2"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v14

    goto :goto_2

    :cond_4
    const-string v6, "1"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v15

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v10

    :goto_2
    const v9, 0x7f070102

    if-eqz v6, :cond_6

    if-eq v6, v15, :cond_6

    if-eq v6, v14, :cond_6

    if-eq v6, v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070127

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v7

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_8
    if-eqz v8, :cond_11

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_9
    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v0, v2

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x14

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    :cond_b
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_c
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x14

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_d
    invoke-direct/range {p0 .. p2}, Lcom/android/camera/fragment/FragmentMainContent;->needMoveDownWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f0700bd

    if-eq v0, v5, :cond_10

    if-eq v0, v4, :cond_f

    if-eq v0, v3, :cond_e

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_10
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_11
    :goto_4
    return-object v1
.end method

.method private consumeResult(IZ)V
    .locals 5

    if-eqz p2, :cond_0

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "faceResult:"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const/16 p2, 0xa1

    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/FragmentMainContent;->mimojiFaceDetectSync(II)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xac

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    if-ne v0, p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isContainAlertLightingTip(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/android/camera/fragment/FragmentMainContent$3;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/fragment/FragmentMainContent$3;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iget-boolean p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    if-ne p2, p1, :cond_6

    return-void

    :cond_6
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    if-eqz v0, :cond_7

    new-instance p1, Lcom/android/camera/fragment/FragmentMainContent$4;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/fragment/FragmentMainContent$4;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/ui/LightingView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private doAccessible(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$xJ43LV4aScbHL38EVnEmTno4pDA;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$xJ43LV4aScbHL38EVnEmTno4pDA;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private findTextView(Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;
    .locals 2

    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "location"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string p2, "location_time_2"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :sswitch_2
    const-string p2, "location_time_1"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const p0, 0x7f0a0233

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    const p0, 0x7f0a022f

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    const p0, 0x7f0a022c

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_2
        0x241170a -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private getLayoutByKey(Landroid/widget/FrameLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p0, "super_moon_text_4"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo p0, "super_moon_text_1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string p0, "location"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string p0, "longitude_latitude"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_4
    const-string p0, "location_time_2"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_5
    const-string p0, "location_time_1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo p0, "time"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const p0, 0x7f0a03bc

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_0
    const p0, 0x7f0a0237

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_1
    const p0, 0x7f0a0232

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_2
    const p0, 0x7f0a022d

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_3
    const p0, 0x7f0a022a

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_4
    const p0, 0x7f0a014c

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    goto :goto_2

    :pswitch_5
    const p0, 0x7f0a014b

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_6
        0x2411709 -> :sswitch_5
        0x241170a -> :sswitch_4
        0x708f48fc -> :sswitch_3
        0x714f9fb5 -> :sswitch_2
        0x7c8cb5d9 -> :sswitch_1
        0x7c8cb5dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLayoutParams(Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/Rect;Landroid/util/Size;I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    if-gez p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutParamsForExtent(Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;Landroid/util/Size;II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    if-eq p5, p0, :cond_16

    if-eqz p5, :cond_16

    const/16 p0, 0x5a

    if-eq p5, p0, :cond_f

    const/16 p0, 0xb4

    if-eq p5, p0, :cond_8

    const/16 p0, 0x10e

    if-eq p5, p0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr p5, v0

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    iget p0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    iget p0, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p0, v0

    :cond_5
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_6

    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_6
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_7

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p5

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int p5, p2, p3

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_7
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_8
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    iget p0, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    :cond_9
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_a

    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    :cond_a
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_b

    iget p0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_b
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_c

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_c
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_d

    iget p5, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_d
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_e

    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_e
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_f
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_10

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_10
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_11

    iget p0, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p0, v0

    :cond_11
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_12

    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr p5, v0

    :cond_12
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_13

    iget p0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_13
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_14

    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_14
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_15

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p5

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int p5, p2, p3

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_15
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_16
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_17

    iget p0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_17
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_18

    iget p5, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_18
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_19

    iget p0, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    :cond_19
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1a

    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    :cond_1a
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1b

    iget p5, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    :cond_1b
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_1c

    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    :cond_1c
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    return-object p1
.end method

.method private getLayoutParamsForExtent(Landroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;Landroid/util/Size;II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070275

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    const/4 v2, -0x1

    if-eq p5, v2, :cond_0

    if-eqz p5, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getLayoutParamsForExtent failed, unsupported degree:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FragmentMainContent"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-ne p4, v2, :cond_1

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p0, p4

    move v1, p0

    goto :goto_0

    :cond_1
    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p5

    add-int/2addr p0, p5

    sub-int/2addr p4, p0

    move v1, p4

    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    add-int v0, p0, p2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object p1
.end method

.method private getLocationText(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string p0, "location_time_2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :sswitch_2
    const-string p0, "location_time_1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const p0, 0x7f0a0233

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    const p0, 0x7f0a022f

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    const p0, 0x7f0a022c

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    const-string p0, ""

    :goto_3
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_2
        0x241170a -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private getMergeRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method private initAIWatermarkLayout()V
    .locals 4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAIWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentMainContent;->initAIWatermarkViews(ZZF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private initAIWatermarkViews(ZZF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isFat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isThin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentMainContent"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x442f0000    # 700.0f

    if-eqz p1, :cond_0

    cmpl-float p1, p3, v0

    if-gtz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_5

    cmpg-float p1, p3, v0

    if-gez p1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x4

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkVisible(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/android/camera/aiwatermark/DragListener;

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p1, p2, p3}, Lcom/android/camera/aiwatermark/DragListener;-><init>(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;)V

    :goto_2
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    return-void
.end method

.method private initSuperMoonWatermarkLayout()V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportSuperMoonMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    :cond_2
    return-void
.end method

.method private initWatermarkLayout(Landroid/view/ViewStub;)Landroid/widget/FrameLayout;
    .locals 1

    const-string p0, "FragmentMainContent"

    const-string v0, "initWatermarkLayout"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private initWatermarkLocation(Landroid/widget/FrameLayout$LayoutParams;Landroid/util/Size;Landroid/graphics/Rect;I)[I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p4, v1, :cond_1

    if-eqz p4, :cond_1

    const/16 v1, 0x5a

    if-eq p4, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p4, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p4, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    aput p4, v0, v3

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    aput p1, v0, v2

    goto :goto_0

    :cond_1
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    aput p4, v0, v3

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    aput p1, v0, v2

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p3, v0}, Lcom/android/camera/aiwatermark/DragListener;->reInit(Landroid/graphics/Rect;[I)V

    :cond_2
    return-object v0
.end method

.method private isMimojiFaceDetectTip()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsMimojiFaceDetectTip:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsMimojiFaceDetectTip:Z

    return v0
.end method

.method private isRectIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_0

    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_0

    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_0

    iget p0, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReferenceLineEnabled()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string v0, "pref_camera_referenceline_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$doAccessible$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$doAccessible$2(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xfd

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-interface {p2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->dismiss(II)Z

    :cond_0
    new-instance p2, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$ei_rG_fnhdop-CsGGoJcD1Gn7go;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$ei_rG_fnhdop-CsGGoJcD1Gn7go;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$hideReferenceGradienter$7()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewReferenceLine()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewGradienter()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewCenterMark()V

    return-void
.end method

.method private synthetic lambda$onResume$9(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$reSizeTextView$3(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setIdPhotoBoxVisible$6(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIvIdPhotoBox:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateMimojiFaceDetectResultTip$8(Z)V
    .locals 6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiDetectTipType:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getTipsResIdFace(I)I

    move-result v1

    if-eqz v0, :cond_2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->isMimojiFaceDetectTip()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiFaceDetect:I

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getTipsResIdFace(I)I

    move-result v1

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->isMimojiFaceDetectTip()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiFaceDetect:I

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getTipsResId(I)I

    move-result v1

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xf6

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    invoke-interface {v1, v4}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->setDetectSuccess(Z)V

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v4

    const v5, 0x7f11047d

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v3, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {v0, v2, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateSuccess()V

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLastFaceSuccess:Z

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsMimojiCreateLowLight:Z

    if-eq v0, p1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateStart()V

    :cond_9
    :goto_4
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsMimojiCreateLowLight:Z

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLastFaceSuccess:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$updateTextBitmap$5(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->isTextWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->updateTextBitmap(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    neg-int p0, p0

    invoke-virtual {p1, p3, p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->updateTextBitmap(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$updateTopAlert$4(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V
    .locals 1

    const v0, 0x7f110137

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(II)V

    return-void
.end method

.method private synthetic lambda$updateWatermarkSample$0(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "location_time_2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "location_time_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0233

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0a022f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0a022c

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/widget/TextView;

    :goto_1
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xfd

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->startDottedLineAnimation(Landroid/view/View;)V

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_2
        0x241170a -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized mimojiFaceDetectSync(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getTipsResIdFace(I)I

    move-result v0

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getTipsResId(I)I

    move-result v1

    const/16 v2, 0xa0

    const/4 v3, 0x6

    const/4 v4, -0x1

    if-ne v2, p1, :cond_0

    if-ne v1, v4, :cond_0

    if-eq p2, v3, :cond_0

    const-string p1, "FragmentMainContent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimojiFaceDetectSync 0, faceResult = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mimoji tips resId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0xa1

    if-ne v1, p1, :cond_1

    if-ne v0, v4, :cond_1

    if-eq p2, v3, :cond_1

    :try_start_1
    const-string p1, "FragmentMainContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimojiFaceDetectSync 1, faceResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", miface tips resId = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiFaceDetect:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiDetectTipType:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->setMimojiFaceDetectTip()V

    const-string v0, "FragmentMainContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimojiFaceDetectSync 2, faceResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "type:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiDetectTipType:I

    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiFaceDetect:I

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->setMimojiFaceDetectTip()V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_4

    if-ne p2, v3, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMimojiFaceResult:I

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getTipsResId(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    :cond_4
    :goto_0
    const-string v0, "mimojiFaceDetectSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "face_detect_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",is_face_location_ok:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private needMoveDownWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasMove()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needMoveUpWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasMove()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result p2

    if-nez p2, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasMove()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p0, p2

    :goto_1
    return p0
.end method

.method private needReferenceLineMode()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb6

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private reSizeTextView(Landroid/widget/TextView;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$ufORCLe0U7yIlRftsWBH90IG3do;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$ufORCLe0U7yIlRftsWBH90IG3do;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setMimojiFaceDetectTip()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsMimojiFaceDetectTip:Z

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p0, "FragmentMainContent"

    const-string/jumbo p1, "warning text is null please check"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setWatermarkText(Landroid/view/ViewGroup;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "super_moon_text_4"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "super_moon_text_1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "location"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "longitude_latitude"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "location_time_2"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "location_time_1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "time"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v0, v4

    :cond_1
    :goto_0
    const/4 p3, 0x0

    packed-switch v0, :pswitch_data_0

    const p0, 0x7f0a029f

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0a00f7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01ab

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    aget-object p3, p2, p3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object p0, p2, v4

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object p0, p2, v3

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_0
    const v0, 0x7f0a0235

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01e3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0a0053

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    aget-object p3, p2, p3

    invoke-direct {p0, v0, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    aget-object p3, p2, v4

    invoke-direct {p0, v1, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    array-length p3, p2

    if-lt p3, v2, :cond_4

    aget-object p2, p2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const v0, 0x7f0a0233

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0234

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    aget-object p3, p2, p3

    invoke-direct {p0, v0, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    aget-object p2, p2, v4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    const v0, 0x7f0a022e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0230

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a022f

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    aget-object p3, p2, p3

    invoke-direct {p0, v0, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    aget-object p3, p2, v4

    invoke-direct {p0, v1, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    aget-object p2, p2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    const v0, 0x7f0a022c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    aget-object p2, p2, p3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    :pswitch_4
    const v0, 0x7f0a0148

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a014d

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sans-serif-light"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070267

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const v2, 0x3f59999a

    mul-float/2addr p0, v2

    invoke-virtual {v0, p3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    aget-object p0, p2, p3

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object p0, p2, v4

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_5
    const v0, 0x7f0a0149

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a014a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07025f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const v1, 0x3f75c28f

    mul-float/2addr p0, v1

    invoke-virtual {v0, p3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    aget-object p0, p2, p3

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object p0, p2, v4

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p0, "FragmentMainContent"

    const-string p1, "There is no data to display"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_6
        0x2411709 -> :sswitch_5
        0x241170a -> :sswitch_4
        0x708f48fc -> :sswitch_3
        0x714f9fb5 -> :sswitch_2
        0x7c8cb5d9 -> :sswitch_1
        0x7c8cb5dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    :goto_0
    return-void
.end method

.method private showWatermarkItem(Landroid/widget/FrameLayout;Z)V
    .locals 7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showWatermarkItem visible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isDual:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " visibility:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentMainContent"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const v4, 0x7f0a04b3

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p2, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a014b

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a014c

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a03bc

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a022a

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a022d

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0232

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0237

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/view/View;

    aput-object v2, v6, v1

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    const/4 v1, 0x4

    aput-object p1, v6, v1

    invoke-direct {p0, v0, p2, v6}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(ZZ[Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private varargs showWatermarkItem(ZZ[Landroid/view/View;)V
    .locals 5

    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p3, v1

    const/16 v3, 0x8

    if-eqz p2, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showWatermarkTipsIfNeeded(Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "super_moon_reset"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    const p2, 0x7f11088b

    const-wide/16 v0, 0xbb8

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_1
    return-void
.end method

.method private updateImageWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 8

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateWatermarkItemRotation E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p6, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p6, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasMove(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWatermarkItemRotation item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getBitmapSize(Landroid/content/Context;I)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_1

    new-instance v1, Landroid/util/Size;

    iget v2, p4, Landroid/graphics/Rect;->right:I

    iget v5, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    iget v6, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-direct {v2, v5, v1}, Landroid/util/Size;-><init>(II)V

    move-object v1, v2

    :goto_0
    iget v7, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v2, p0

    move-object v5, p4

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutParams(Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/Rect;Landroid/util/Size;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v2, v1, p4, p3}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLocation(Landroid/widget/FrameLayout$LayoutParams;Landroid/util/Size;Landroid/graphics/Rect;I)[I

    move-result-object v1

    invoke-virtual {p5}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v3

    invoke-virtual {p5, v1, p4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateLocation([ILandroid/graphics/Rect;I)V

    invoke-virtual {p6, v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setCaptureCoordinate([I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p6, p3, v2}, Lcom/android/camera/fragment/FragmentMainContent;->calculateLP(Lcom/android/camera/aiwatermark/data/WatermarkItem;ILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    const p4, 0x7f0a04b3

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResId()I

    move-result v1

    invoke-static {p5, v1}, Lcom/android/camera/Util;->convertResToBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-static {p5, p3}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p6, p2}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextBitmap(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/view/View;)V

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string/jumbo p6, "string"

    invoke-virtual {p1, p3, p6, p5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_2
    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    const p1, 0x7f110406

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->doAccessible(Landroid/view/View;)V

    const-string/jumbo p0, "updateWatermarkItemRotation X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    return-void
.end method

.method private updateTextBitmap(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocationDirectly()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "super_moon_text_4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "super_moon_text_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "longitude_latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "location_time_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "location_time_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    :goto_2
    move v4, v5

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    goto :goto_3

    :pswitch_1
    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    goto :goto_3

    :pswitch_2
    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentMainContent;->updateTopAlert(Z)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_3
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;

    invoke-direct {v1, p0, p1, v4, p2}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_6
        0x2411709 -> :sswitch_5
        0x241170a -> :sswitch_4
        0x708f48fc -> :sswitch_3
        0x714f9fb5 -> :sswitch_2
        0x7c8cb5d9 -> :sswitch_1
        0x7c8cb5dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateTextWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 9

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateTextWatermarkItemRotation E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p6, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasMove(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTextWatermarkItemRotation item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutByKey(Landroid/widget/FrameLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->get24HourMode(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p6, v3, v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getWatermarkText(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkText(Landroid/view/ViewGroup;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p1, "location"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "location_time_1"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "location_time_2"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "longitude_latitude"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "time"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasAltitude()Z

    move-result p1

    invoke-direct {p0, v1, v2, p4, p1}, Lcom/android/camera/fragment/FragmentMainContent;->autoRelayoutUI(Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/graphics/Rect;Z)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in layout.getWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out watermarkLayout.getWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-direct {p1, v1, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v5

    iget v8, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v3, p0

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/fragment/FragmentMainContent;->getLayoutParams(Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/Rect;Landroid/util/Size;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1, p1, p4, p3}, Lcom/android/camera/fragment/FragmentMainContent;->initWatermarkLocation(Landroid/widget/FrameLayout$LayoutParams;Landroid/util/Size;Landroid/graphics/Rect;I)[I

    move-result-object p1

    invoke-virtual {p5}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v3

    invoke-virtual {p5, p1, p4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateLocation([ILandroid/graphics/Rect;I)V

    invoke-virtual {p6, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setCaptureCoordinate([I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p6, p3, v1}, Lcom/android/camera/fragment/FragmentMainContent;->calculateLP(Lcom/android/camera/aiwatermark/data/WatermarkItem;ILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getTimeWatermarkString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    int-to-float p1, p3

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    invoke-direct {p0, p6, v2}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextBitmap(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentMainContent;->doAccessible(Landroid/view/View;)V

    const-string/jumbo p0, "updateTextWatermarkItemRotation X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private updateWatermarkItemBackground(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Landroid/graphics/Rect;)V
    .locals 8

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateWatermarkItemBackground E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v2

    const-string/jumbo v3, "super_moon_reset"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result p1

    const v3, 0x7f0a04b1

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWatermarkItemBackground type:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "super_moon_window"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070273

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move v1, v4

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800f2

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getBitmapSize(Landroid/content/Context;I)Landroid/util/Size;

    move-result-object v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v7, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSuperMoonScaleSize:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    add-int/2addr v6, v1

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v2

    mul-float/2addr v1, v7

    float-to-int v1, v1

    add-int/2addr p2, v1

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSuperMoonScaleSize:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSuperMoonScaleSize:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string/jumbo p0, "updateWatermarkItemBackground X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private updateWatermarkRotation(ILandroid/graphics/Rect;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWatermarkRotation degree = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentMainContent"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->isTextWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateImageWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->isTextWatermark()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateTextWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/FragmentMainContent;->updateImageWatermarkItemRotation(Landroid/view/ViewStub;Landroid/widget/FrameLayout;ILandroid/graphics/Rect;Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public animBlackCover()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public clearFocusView(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->clear(I)V

    return-void
.end method

.method public clearIndicator(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->clear()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not allowed call in this method"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clear()V

    :goto_0
    return-void
.end method

.method public destroyEffectCropView()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->onDestroy()V

    return-void
.end method

.method public feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, p1}, Lcom/android/camera2/autozoom/AutoZoomView;->feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method

.method public getActiveIndicator()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return p0
.end method

.method public getFaceWaterMarkInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaceWaterMarkInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFaces()[Lcom/android/camera2/CameraHardwareFace;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object p0

    return-object p0
.end method

.method public getFocusRect(I)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": unexpected type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentMainContent"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getFocusRectInPreviewFrame()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getFocusX()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getFocusX()I

    move-result p0

    return p0
.end method

.method public getFocusY()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getFocusY()I

    move-result p0

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf3

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0081

    return p0
.end method

.method public getReferenceLine()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getReferenceLine()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public hideFaceAnimator()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FaceView;->attemptHideFaceRect(J)V

    :cond_0
    return-void
.end method

.method public hideOrShowDocument(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DocumentView;->hideOrShowPath(Z)V

    :cond_0
    return-void
.end method

.method public hideReferenceGradienter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$OVqzv3oXSsxhFSOzI9BTzTllDHQ;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$OVqzv3oXSsxhFSOzI9BTzTllDHQ;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public hideReviewViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public initEffectCropView()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCreate()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/Display;->getDisplayWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40311173

    mul-float/2addr v0, v1

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/android/camera/Display;->getPixelDensity()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView mWatermarkScaleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkScaleSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "FragmentMainContent"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a01ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a032c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a03d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a02a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    const v0, 0x7f0a0421

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Landroid/view/ViewGroup;

    const v2, 0x7f0a0422

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a041d

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a00a8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    const v2, 0x7f0a00a7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    const v2, 0x7f0a00a9

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a041a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a041b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a0112

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DocumentView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a041c

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const v0, 0x7f0a041f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIvIdPhotoBox:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a0078

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/autozoom/AutoZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a01f3

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/LightingView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a02c4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a03dc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/trackfocus/TrackFocusView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a0045

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AfRegionsView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v2, 0x7f0a0275

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/LightingView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    const v2, 0x3f970a3d

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/LightingView;->setCircleRatio(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    const v2, 0x3f8f5c29

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/LightingView;->setCircleHeightRatio(F)V

    const v0, 0x7f0a04b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkViewStub:Landroid/view/ViewStub;

    const v0, 0x7f0a04ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendViewStub:Landroid/view/ViewStub;

    const v0, 0x7f0a04ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundViewStub:Landroid/view/ViewStub;

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/LightingView;->setRotation(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setGravity(I)V

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent$1;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    return-void
.end method

.method public initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0
.end method

.method public initializeObjectView(Landroid/graphics/RectF;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0
.end method

.method public isAdjustingObjectView()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result p0

    return p0
.end method

.method public isAutoZoomActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewActive()Z

    move-result p0

    return p0
.end method

.method public isAutoZoomEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutoZoomViewEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result p0

    return p0
.end method

.method public isEffectViewMoved()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result p0

    return p0
.end method

.method public isEffectViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isEvAdjusted(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result p0

    return p0
.end method

.method public isFaceExists(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->faceExists()Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result p0

    return p0
.end method

.method public isFaceLocationOK()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    return p0
.end method

.method public isFaceStable(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FrameView;->isFaceStable()Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result p0

    return p0
.end method

.method public isFocusViewMoving()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isFocusViewMoving()Z

    move-result p0

    return p0
.end method

.method public isFocusViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isIndicatorVisible(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method public isNeedExposure(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result p0

    return p0
.end method

.method public isObjectTrackFailed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result p0

    return p0
.end method

.method public isShowReviewViews()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitFocusExposureDown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isSplitFocusExposureDown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$doAccessible$1$FragmentMainContent(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$doAccessible$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$doAccessible$2$FragmentMainContent(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$doAccessible$2(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$hideReferenceGradienter$7$FragmentMainContent()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$hideReferenceGradienter$7()V

    return-void
.end method

.method public synthetic lambda$onResume$9$FragmentMainContent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$onResume$9(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setIdPhotoBoxVisible$6$FragmentMainContent(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$setIdPhotoBoxVisible$6(Z)V

    return-void
.end method

.method public synthetic lambda$updateMimojiFaceDetectResultTip$8$FragmentMainContent(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$updateMimojiFaceDetectResultTip$8(Z)V

    return-void
.end method

.method public synthetic lambda$updateTextBitmap$5$FragmentMainContent(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$updateTextBitmap$5(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateWatermarkSample$0$FragmentMainContent(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$updateWatermarkSample$0(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    return-void
.end method

.method public lightingCancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateExit()V

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setLightingOn(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AfRegionsView;->setLightingOn(Z)V

    return-void
.end method

.method public lightingDetectFace([Lcom/android/camera2/CameraHardwareFace;Z)V
    .locals 7

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    if-eqz p1, :cond_a

    array-length v2, p1

    if-eqz v2, :cond_a

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-wide v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->getFaceViewRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->getFaceViewRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->getFocusRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentMainContent;->isRectIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentMainContent;->getMergeRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr v2, p1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz p2, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    if-eqz p2, :cond_5

    const/high16 v0, 0x3fc00000    # 1.5f

    :cond_5
    const v6, 0x3e4ccccd

    mul-float/2addr v6, v3

    mul-float/2addr v6, v5

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    mul-float/2addr v4, v2

    cmpg-float v0, p1, v4

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    cmpg-float v0, p1, v6

    if-gez v0, :cond_7

    const/4 p1, 0x4

    :goto_2
    move v1, p1

    goto :goto_3

    :cond_7
    cmpg-float p1, p1, v3

    if-gez p1, :cond_8

    cmpg-float p1, v2, v3

    if-gez p1, :cond_8

    const/4 p1, 0x6

    goto :goto_2

    :cond_8
    const/4 p1, 0x3

    goto :goto_2

    :cond_9
    :goto_3
    invoke-direct {p0, v1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->consumeResult(IZ)V

    return-void

    :cond_a
    :goto_4
    invoke-direct {p0, v1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->consumeResult(IZ)V

    return-void
.end method

.method public lightingFocused()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/LightingView;->triggerAnimateSuccess()V

    :cond_0
    return-void
.end method

.method public lightingStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LightingView;->setCinematicAspectRatio(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateStart()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setLightingOn(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AfRegionsView;->setLightingOn(Z)V

    return-void
.end method

.method public mimojiEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {p0}, Lcom/android/camera/ui/LightingView;->triggerAnimateExit()V

    return-void
.end method

.method public mimojiFaceDetect(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    new-instance v1, Lcom/android/camera/fragment/FragmentMainContent$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentMainContent$5;-><init>(Lcom/android/camera/fragment/FragmentMainContent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public mimojiStart()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setLightingOn(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AfRegionsView;->setLightingOn(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {p0}, Lcom/android/camera/ui/LightingView;->triggerAnimateStart()V

    return-void
.end method

.method public moveWatermarkLayout(II)V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->needMoveUpWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eq p1, v2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, v1, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, p2

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_6
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p1

    add-int/2addr p2, p1

    :cond_7
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_b

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    if-gt p1, p2, :cond_b

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, v1, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, v1

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0xc8

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_c
    :goto_1
    return-void
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xfe

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6PreviewFrame;->updateReferenceLineAccordSquare()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateReferenceGradienterSwitched()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->updateCenterMarkSwitched()V

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->reInit()V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd5

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->updateFocusMode(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->animBlackCover()V

    :cond_5
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p2

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->hideReviewViews()V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f1100a4

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f11006d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f110024

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcc

    const/4 v2, 0x2

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    if-eq p1, v2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    :goto_2
    return-void
.end method

.method public onAutoZoomStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onAutoZoomStopped()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged mode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentMainContent"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initAIWatermarkLayout()V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initSuperMoonWatermarkLayout()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    return-void
.end method

.method public onEffectViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastFaceSuccess:Z

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$JAhl-8CA1IDQe79wjWiW7x9i7Z4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$JAhl-8CA1IDQe79wjWiW7x9i7Z4;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/LightingView;->clear()V

    :cond_0
    return-void
.end method

.method public onStopObjectTrack()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTrackingStarted(Landroid/graphics/RectF;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd7

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;->startTracking(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public onTrackingStopped(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    :cond_0
    return-void
.end method

.method public onViewTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, p2}, Lcom/android/camera2/autozoom/AutoZoomView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method public processingFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->processingFinish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    return-void
.end method

.method public processingStart(Ljava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsRecording:Z

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->processingStart()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p3, 0xfe

    const/4 v1, 0x1

    if-ne p1, p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMoreModeMaskView:Landroid/view/View;

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setIdPhotoBoxVisible(Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedLocation()Z

    move-result v2

    const/16 v3, 0xa3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3

    const/16 v3, 0xbc

    if-eq p1, v3, :cond_2

    const/16 v3, 0xcd

    if-eq p1, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initAIWatermarkLayout()V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initSuperMoonWatermarkLayout()V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_4

    :goto_1
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v4

    :goto_3
    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    const/4 v3, 0x4

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkVisible(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    new-instance v2, Lcom/android/camera/aiwatermark/DragListener;

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v5}, Lcom/android/camera/aiwatermark/DragListener;-><init>(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;)V

    :goto_5
    iput-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mListener:Lcom/android/camera/aiwatermark/DragListener;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewReferenceLine()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewGradienter()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewCenterMark()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->clear()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v2}, Lcom/android/camera/ui/DocumentView;->clear()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->clearFaceFlags()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->clear()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/camera/ui/LightingView;->clear()V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v2}, Lcom/android/camera/ui/AfRegionsView;->clear()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-virtual {v2}, Lcom/android/camera/trackfocus/TrackFocusView;->clear()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v2}, Lcom/android/camera/ui/LightingView;->clear()V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->releaseListener()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getLeftMaskWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_d

    :cond_9
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v5

    if-le v3, v5, :cond_a

    move v5, v1

    goto :goto_6

    :cond_a
    move v5, v4

    :goto_6
    if-nez v5, :cond_b

    if-ne p1, p3, :cond_d

    :cond_b
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLeftCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_c

    move v6, v1

    goto :goto_7

    :cond_c
    move v6, v4

    :goto_7
    invoke-virtual {v5, v3, p2, v6}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    :cond_d
    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getRightMaskWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_12

    :cond_e
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentWidth()I

    move-result v5

    if-le v3, v5, :cond_f

    move v5, v1

    goto :goto_8

    :cond_f
    move v5, v4

    :goto_8
    if-nez v5, :cond_10

    if-ne p1, p3, :cond_12

    :cond_10
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mRightCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_11

    move v6, v1

    goto :goto_9

    :cond_11
    move v6, v4

    :goto_9
    invoke-virtual {v5, v3, p2, v6}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V

    :cond_12
    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_17

    :cond_13
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v5

    if-le v3, v5, :cond_14

    move v5, v1

    goto :goto_a

    :cond_14
    move v5, v4

    :goto_a
    if-nez v5, :cond_15

    if-ne p1, p3, :cond_17

    :cond_15
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_16

    move v6, v1

    goto :goto_b

    :cond_16
    move v6, v4

    :goto_b
    invoke-virtual {v5, v3, p2, v6}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_17
    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getBottomMaskTargetHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_1d

    :cond_18
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_19

    if-ne v0, v3, :cond_19

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0, v2, p2, v4}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    if-le v2, v0, :cond_1a

    move v0, v1

    goto :goto_c

    :cond_1a
    move v0, v4

    :goto_c
    if-nez v0, :cond_1b

    if-ne p1, p3, :cond_1d

    :cond_1b
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_1c

    goto :goto_d

    :cond_1c
    move v1, v4

    :goto_d
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_1d
    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    if-eq p1, p3, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedOrientation()Z

    move-result p1

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    iget p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "provideOrientationChanged newDegree: %d mWatermarkDegree: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentMainContent"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    const/4 v1, 0x0

    if-eq v0, p2, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "provideRotateItem newDegree: %d mWatermarkDegree: %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentMainContent"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    rsub-int v2, p2, 0x168

    rem-int/lit16 v2, v2, 0x168

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/AfRegionsView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/trackfocus/TrackFocusView;->setOrientation(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/LightingView;->setOrientation(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reShowFaceRect()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->reShowFaceRect()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xd6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public removeTiltShiftMask()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    return-void
.end method

.method public setActiveIndicator(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return-void
.end method

.method public setAfRegionView([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/AfRegionsView;->setAfRegionRect([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;F)V

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AfRegionsView;->setCameraDisplayOrientation(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->setCameraDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public setCenterHint(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const-string v1, ""

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    if-lez p4, :cond_4

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/camera/fragment/FragmentMainContent$6;

    invoke-direct {p3, p0}, Lcom/android/camera/fragment/FragmentMainContent$6;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p4

    add-long/2addr v1, v3

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setDisplaySize(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    return-void
.end method

.method public setEffectViewVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    :goto_0
    return-void
.end method

.method public setEvAdjustVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->setEVVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1, p1}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    return-void
.end method

.method public setFaces(I[Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera2/CameraHardwareFace;)V

    :cond_1
    return v0

    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa6

    if-eq p1, v0, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->isFocusViewVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const-string p0, "FragmentMainContent"

    const-string p1, "panorama mode or isIntentIDPhoto or isFocusViewVisible, return false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setFocusViewPosition(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->forceHideRect()V

    return-void
.end method

.method public setFocusViewType(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    return-void
.end method

.method public setIdPhotoBoxVisible(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$je366umGpMXa1VydR6QGeX6OGuM;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$je366umGpMXa1VydR6QGeX6OGuM;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMimojiDetectTipType(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiDetectTipType:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiDetectTipType:I

    :cond_0
    return-void
.end method

.method public setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    :cond_0
    return-void
.end method

.method public setPreviewAspectRatio(F)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ui/DocumentView;->setDisplaySize(II)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setPreviewSize(Landroid/util/Size;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/DocumentView;->setPreviewSize(II)V

    :cond_1
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Z)V

    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->setShowMagicMirror(Z)V

    return-void
.end method

.method public setSkipDrawFace(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    :cond_0
    return-void
.end method

.method public setVideoCastLayoutType(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p0, p1}, Lcom/android/camera2/autozoom/AutoZoomView;->setVideoCastLayoutType(I)V

    return-void
.end method

.method public setWatermarkVisible(I)V
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public showIndicator(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    :goto_0
    return-void
.end method

.method public showReviewViews(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method public startEvShowAgainAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->startEvShowAgainAnimation()V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xd6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateCenterMarkSwitched()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->updateCenterMarkSwitched(Z)V

    :cond_0
    return-void
.end method

.method public updateContentDescription()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v1, 0x7f11006d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateDocument(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
            "[F>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    array-length v1, v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DocumentView;->updateDocument(Landroid/util/Pair;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Lcom/android/camera/ui/DocumentView;->clear()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateEffectViewVisible()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    return-void
.end method

.method public updateEffectViewVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    return-void
.end method

.method public updateFaceView(ZZZZI)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p2}, Lcom/android/camera/ui/FaceView;->clear()V

    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    if-lez p5, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p5}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    if-eqz p4, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->resume()V

    :cond_3
    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FocusView;->updateFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateMimojiFaceDetectResultTip(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$w9VJXZrj1RM00hMdTqQVZggHxQc;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$w9VJXZrj1RM00hMdTqQVZggHxQc;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateReferenceGradienterSwitched()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isScanQRCodeIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->needReferenceLineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->updateReferenceGradienterSwitched(ZZZ)V

    :cond_1
    return-void
.end method

.method public updateTopAlert(Z)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "updateTopAlert for AI watermark show = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v4, "FragmentMainContent"

    invoke-static {v2, v4, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xac

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "longitude_latitude"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v6, "location_time_2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v7

    goto :goto_0

    :sswitch_3
    const-string v6, "location_time_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v0

    :cond_0
    :goto_0
    const/4 v4, 0x4

    if-eqz v5, :cond_2

    if-eq v5, v0, :cond_2

    if-eq v5, v7, :cond_2

    if-eq v5, v2, :cond_2

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_1

    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$AxtgRyYT2hNO03sFpwf8FFja-ww;

    invoke-direct {p1, v1, v3}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$AxtgRyYT2hNO03sFpwf8FFja-ww;-><init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2411709 -> :sswitch_3
        0x241170a -> :sswitch_2
        0x708f48fc -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/trackfocus/TrackFocusView;->setTrackResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "updateWatermarkSample Item Key = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentMainContent"

    invoke-static {v2, v4, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkTipsIfNeeded(Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateWatermarkItem(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isDualWatermark()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSuperMoonScaleSize:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/aiwatermark/util/WatermarkConstant;->calcSuperMoonScale(Landroid/content/Context;)F

    move-result v4

    iput v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSuperMoonScaleSize:F

    :cond_1
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/android/camera/fragment/FragmentMainContent;->showWatermarkItem(Landroid/widget/FrameLayout;Z)V

    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkItemBackground(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedOrientation()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->clearCaptureCoordinate()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mWatermarkDegree:I

    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/FragmentMainContent;->updateWatermarkRotation(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setWatermarkVisible(I)V

    :cond_7
    return-void
.end method

.method public updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 2

    const-string v0, "FragmentMainContent"

    const-string/jumbo v1, "updateWatermarkSample"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "updateWatermarkSample item is null"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;-><init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
