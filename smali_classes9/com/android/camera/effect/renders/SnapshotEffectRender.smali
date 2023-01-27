.class public Lcom/android/camera/effect/renders/SnapshotEffectRender;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCK_HEIGHT:I = 0x5dc

.field private static final DEFAULT_BLOCK_WIDTH:I = 0xfa0

.field private static final QUEUE_LIMIT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SnapshotEffectRender"


# instance fields
.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mCinematicRatioWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCurrentCustomWaterMarkText:Ljava/lang/String;

.field private mDualCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private mDualCameraWaterMarkPaddingXRatio:F

.field private mDualCameraWaterMarkPaddingYRatio:F

.field private mDualCameraWaterMarkSizeRatio:F

.field private mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

.field private mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mExifNeeded:Z

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

.field private mFrontCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private mFrontCameraWaterMarkPaddingXRatio:F

.field private mFrontCameraWaterMarkPaddingYRatio:F

.field private mFrontCameraWaterMarkSizeRatio:F

.field private mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

.field private mGraphicBuffer:Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mInitGraphicBuffer:Z

.field private mIsImageCaptureIntent:Z

.field private volatile mJpegQueueSize:I

.field private final mLock:Ljava/lang/Object;

.field private mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

.field private mQuality:I

.field private mRelease:Z

.field private mReleasePending:Z

.field private mRenderCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

.field private mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

.field private mSaverCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

.field private mSquareModeExtraMargin:I

.field private mTextureId:I

.field private mTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    const/16 v1, 0x61

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string v2, "SnapshotEffectRender: has been created!!!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/effect/framework/image/MemImage;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/image/MemImage;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

    :cond_0
    new-instance p1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    new-instance p1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    new-instance p1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SnapshotEffectProcessor"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/camera/effect/framework/graphics/Splitter;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/graphics/Splitter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

    const/16 p1, 0xfa0

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockWidth:I

    const/16 p1, 0x5dc

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockHeight:I

    new-instance p1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendMessageSync(I)V

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mInitGraphicBuffer:Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->loadCameraWatermark(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCurrentCustomWaterMarkText:Ljava/lang/String;

    const p1, 0x7f070239

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkSizeRatio:F

    const p1, 0x7f070237

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingXRatio:F

    const p1, 0x7f070238

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingYRatio:F

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportFrontCameraWaterMark()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->loadFrontCameraWatermark(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    const p1, 0x7f0702cd

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkSizeRatio:F

    const p1, 0x7f0702cb

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkPaddingXRatio:F

    const p1, 0x7f0702cc

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkPaddingYRatio:F

    :cond_2
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07067f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSquareModeExtraMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSaverCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/SnapshotCanvas;)Lcom/android/camera/effect/SnapshotCanvas;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mInitGraphicBuffer:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mInitGraphicBuffer:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/EglCore;)Lcom/android/camera/effect/framework/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCinematicRatioWaterMarkBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCinematicRatioWaterMarkBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->loadCinematicRatioWatermark(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCurrentCustomWaterMarkText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCurrentCustomWaterMarkText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGraphicBuffer:Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->loadCameraWatermark(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/graphics/GraphicBuffer;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGraphicBuffer:Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkSizeRatio:F

    return p0
.end method

.method static synthetic access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingXRatio:F

    return p0
.end method

.method static synthetic access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkPaddingYRatio:F

    return p0
.end method

.method static synthetic access$2400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkSizeRatio:F

    return p0
.end method

.method static synthetic access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkPaddingXRatio:F

    return p0
.end method

.method static synthetic access$2700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkPaddingYRatio:F

    return p0
.end method

.method static synthetic access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSquareModeExtraMargin:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTextureId:I

    return p0
.end method

.method static synthetic access$3102(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTextureId:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/Splitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->destroy()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$610(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockHeight:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->calEachBlockHeight(II)I

    move-result p0

    return p0
.end method

.method private calEachBlockHeight(II)I
    .locals 2

    const/4 p0, 0x1

    :goto_0
    mul-int v0, p1, p2

    const v1, 0x5b8d80

    if-le v0, v1, :cond_0

    shr-int/lit8 p2, p2, 0x1

    shl-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;->release()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglCore;->release()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDualCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrontCameraWaterMarkBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCinematicRatioWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCinematicRatioWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mCinematicRatioWaterMarkBitmap:Landroid/graphics/Bitmap;

    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string v0, "SnapshotEffectRender: has been released!!!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 1

    new-instance p0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method private loadCameraWatermark(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportOnlyAppWatermark()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportVendorWatermark()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->generateMainWatermark2File()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, p1, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string v1, "Failed to load app camera watermark "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private loadCinematicRatioWatermark(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportOnlyAppWatermark()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportVendorWatermark()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    sget-object v2, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->generateCinematicRatioWatermark2File()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string v0, "Failed to load app camera watermark "

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method private loadFrontCameraWatermark(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportOnlyAppWatermark()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportVendorWatermark()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    sget-object v2, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->generateFrontWatermark2File()Landroid/graphics/Bitmap;

    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string v0, "Failed to load front camera watermark "

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method private processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIIIZ)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIIIZ)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public getResourceFloat(IF)F
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public isRelease()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public prepareEffectRender(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 5

    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    sget-object p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueSize is full, drop it "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_4

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z

    move-result v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    move v3, v0

    :goto_1
    iget-boolean v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-boolean v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mNeedThumbnail:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/camera/ThumbnailUpdater;->updatePreviewThumbnailUri(Landroid/net/Uri;)V

    goto :goto_2

    :cond_3
    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    iput-boolean v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-static {v3, v2, v4, v0}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public releaseIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public setExifNeed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    return-void
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public setQuality(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x61

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    :cond_0
    return-void
.end method
