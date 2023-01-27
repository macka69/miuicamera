.class public Lcom/android/camera/module/Panorama3Module;
.super Lcom/android/camera/module/BaseModule;
.source "Panorama3Module.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Panorama3Module$SensorListener;,
        Lcom/android/camera/module/Panorama3Module$MySensorEventListener;,
        Lcom/android/camera/module/Panorama3Module$PanoramaPreview;,
        Lcom/android/camera/module/Panorama3Module$DecideDirection;,
        Lcom/android/camera/module/Panorama3Module$PanoramaFirst;,
        Lcom/android/camera/module/Panorama3Module$PanoramaInit;,
        Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;,
        Lcom/android/camera/module/Panorama3Module$MainHandler;
    }
.end annotation


# static fields
.field private static final DUMP_YUV:Z

.field private static final MIN_SHOOTING_TIME:I = 0x258

.field private static final SENSOR_LIST:I = 0xba

.field private static final TAG:Ljava/lang/String; = "Panorama3Module"

.field public static final mEngineLock:Ljava/lang/Object;

.field private static final mPreviewImageLock:Ljava/lang/Object;

.field private static final sAttachExit:Lcom/android/camera/panorama/CaptureImage;


# instance fields
.field private final mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/android/camera/panorama/CaptureImage;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachPosOffsetX:I

.field private mAttachPosOffsetY:I

.field private mCameraOrientation:I

.field private volatile mCanSavePanorama:Z

.field private mCaptureDirectionDecided:Z

.field private mCurrentSensorInfoManager:Lcom/android/camera/panorama/SensorInfoManager;

.field private mDirection:I

.field private mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

.field private mDispPreviewImage:Landroid/graphics/Bitmap;

.field private mDispPreviewImageCanvas:Landroid/graphics/Canvas;

.field private mDispPreviewImagePaint:Landroid/graphics/Paint;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mGoalAngle:I

.field private mGoalAngleVertical:I

.field private mGravities:[F

.field private mImageFormat:Ljava/lang/String;

.field private mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

.field private mIsRegisterSensorListener:Z

.field private mIsSensorAverage:Z

.field private volatile mIsShooting:Z

.field private mIsVertical:Z

.field private mLocation:Landroid/location/Location;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

.field private mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

.field private mPanoramaShootingStartTime:J

.field private mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPreviewImage:Landroid/graphics/Bitmap;

.field private mPreviewRefY:I

.field private volatile mRequestStop:Z

.field private mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

.field private mSaveOutputImageTask:Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

.field private mSensorCnt:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

.field private mSensorFusionMode:I

.field private mSensorInfoManagerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/panorama/SensorInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mShutterEndTime:Ljava/lang/String;

.field private mShutterStartTime:Ljava/lang/String;

.field private mSmallPreviewHeight:I

.field private mSmallPreviewHeightVertical:I

.field private mSnapshotFocusMode:I

.field private mTargetFocusMode:I

.field private mThumbnailViewSize:Landroid/util/Size;

.field private mTimeTaken:J

.field private mViewAngleH:F

.field private mViewAngleV:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "camera.debug.panorama"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/Panorama3Module;->DUMP_YUV:Z

    new-instance v0, Lcom/android/camera/panorama/Camera1Image;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/android/camera/panorama/Camera1Image;-><init>([BII)V

    sput-object v0, Lcom/android/camera/module/Panorama3Module;->sAttachExit:Lcom/android/camera/panorama/CaptureImage;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/module/Panorama3Module;->mPreviewImageLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/16 v0, 0x118

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    const/16 v0, 0x14a

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngleVertical:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mSnapshotFocusMode:I

    new-instance v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-direct {v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    const-string v1, "YVU420_SEMIPLANAR"

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    new-instance v1, Lcom/android/camera/module/Panorama3Module$MySensorEventListener;

    new-instance v2, Lcom/android/camera/module/Panorama3Module$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/Panorama3Module$1;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    invoke-direct {v1, v2}, Lcom/android/camera/module/Panorama3Module$MySensorEventListener;-><init>(Lcom/android/camera/module/Panorama3Module$SensorListener;)V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/camera/module/Panorama3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/Panorama3Module$2;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    const v1, 0x428e7684

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    const v1, 0x4261fa7e

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/android/camera/module/Panorama3Module$3;

    invoke-direct {v9, p0}, Lcom/android/camera/module/Panorama3Module$3;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    new-instance v10, Lcom/android/camera/module/Panorama3Module$4;

    invoke-direct {v10, p0}, Lcom/android/camera/module/Panorama3Module$4;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mIsSensorAverage:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/module/Panorama3Module;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/Panorama3Module;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Panorama3Module;->createNameString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/Panorama3Module;->savePanoramaFile(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/camera/module/Panorama3Module;->addImageAsApplication(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->finishEngine()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/camera/module/Panorama3Module;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mThumbnailViewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/Panorama3Module;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/Panorama3Module;D)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Panorama3Module;->createEngine(D)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/camera/module/Panorama3Module;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->configMorphoPanoramaGP3()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    return p0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeightVertical:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeight:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$2702(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/android/camera/panorama/CaptureImage;
    .locals 1

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->sAttachExit:Lcom/android/camera/panorama/CaptureImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/SensorFusion;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module;->setSensorFusionValue(Lcom/android/camera/panorama/CaptureImage;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/SensorInfoManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mCurrentSensorInfoManager:Lcom/android/camera/panorama/SensorInfoManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$3302(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mMaxWidth:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    return p0
.end method

.method static synthetic access$3402(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/DirectionFunction;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/DirectionFunction;)Lcom/android/camera/panorama/DirectionFunction;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    return p0
.end method

.method static synthetic access$3700(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->reInitGravitySensorData()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module;->addAttachQueue(Lcom/android/camera/panorama/CaptureImage;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/camera/module/Panorama3Module;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    return p0
.end method

.method static synthetic access$4300(Lcom/android/camera/module/Panorama3Module;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    return p0
.end method

.method static synthetic access$4400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->mPreviewImageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    return p0
.end method

.method static synthetic access$4702(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImageCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImageCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImagePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImagePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->initPreviewLayout()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->initAttachQueue()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/module/Panorama3Module;->DUMP_YUV:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/android/camera/module/Panorama3Module;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->onPreviewMoving()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->onCaptureDirectionDecided()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/PanoramaState;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/PanoramaState;)Lcom/android/camera/panorama/PanoramaState;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewRefY:I

    return p0
.end method

.method static synthetic access$6202(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewRefY:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/module/Panorama3Module;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    return-wide v0
.end method

.method private addAttachQueue(Lcom/android/camera/panorama/CaptureImage;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string p1, "addAttachQueue failed due to image is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    if-eqz v1, :cond_1

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "addAttachQueue failed due to request stop"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/panorama/CaptureImage;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/panorama/CaptureImage;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    :cond_4
    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string p1, "addAttachQueue"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    :cond_5
    throw p0
.end method

.method private addImageAsApplication(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_0

    iget-wide v4, v8, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v1, v7}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-wide v5, v8, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    invoke-static {v0, v2, v3, v5, v6}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFd(Ljava/io/FileDescriptor;ILandroid/location/Location;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open file failed, filePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 v0, 0x0

    if-eqz v3, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v12, v8, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    iget-object v14, v8, Lcom/android/camera/module/Panorama3Module;->mLocation:Landroid/location/Location;

    move-object/from16 v10, p1

    move/from16 v11, p5

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-static/range {v9 .. v16}, Lcom/android/camera/storage/Storage;->addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_4
    move-object v9, v2

    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageAsApplication uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    if-eqz v9, :cond_5

    move-object/from16 v2, p2

    invoke-virtual {v1, v9, v2}, Lcom/android/camera/ActivityBase;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v1, v9, v0}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    invoke-static {v1, v9}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_5
    return-void
.end method

.method private configMorphoPanoramaGP3()Z
    .locals 13

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "configMorphoPanoramaGP3 start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setAttachEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->disableSaveInputImages()V

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v2}, Lcom/android/camera/panorama/PanoramaSetting;->getShrink_ratio()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setShrinkRatio(D)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setShrinkRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getCalcseam_pixnum()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setCalcseamPixnum(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "setCalcseamPixnum error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->isUse_deform()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUseDeform(Z)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setUseDeform error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->isUse_luminance_correction()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUseLuminanceCorrection(Z)I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setUseLuminanceCorrection error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getSeamsearch_ratio()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setSeamsearchRatio(D)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setSeamsearchRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getZrotation_coeff()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setZrotationCoeff(D)I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setZrotationCoeff error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getDraw_threshold()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setDrawThreshold(D)I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setDrawThreshold error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getAov_gain()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setAovGain(D)I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "setAovGain error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k1()D

    move-result-wide v5

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k2()D

    move-result-wide v7

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k3()D

    move-result-wide v9

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k4()D

    move-result-wide v11

    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setDistortionCorrectionParam(DDDD)I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setDistortionCorrectionParam error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getRotation_ratio()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setRotationRatio(D)I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setRotationRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setSensorUseMode(I)I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setSensorUseMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setProjectionMode(I)I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setProjectionMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {p0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setMotionDetectionMode(I)I

    move-result p0

    if-eqz p0, :cond_c

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    const-string/jumbo p0, "setMotionDetectionMode error ret:0x%08X"

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "configMorphoPanoramaGP3 end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static createDateStringForAppSeg(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "GMT"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createEngine(D)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "finish prior Engine"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->finishEngine()V

    :cond_0
    new-instance v0, Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-direct {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    const-string v1, "YUV420_PLANAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    const-string v1, "YUV420_SEMIPLANAR"

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    iput v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    iput v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->aovx:D

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->aovy:D

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->getCurrentDirection()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iput v0, v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    :goto_1
    const/16 v0, 0xa6

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lensType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "wide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngleVertical:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    :goto_2
    int-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->goal_angle:D

    goto :goto_3

    :cond_4
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    const-wide v1, 0x406305c28f5c28f6L    # 152.18

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->goal_angle:D

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    int-to-double v1, v1

    const-wide v3, 0x3fe40c49ba5e353fL    # 0.6265

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->goal_angle:D

    :goto_3
    iget v0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    const/4 v0, 0x3

    goto :goto_4

    :cond_7
    const/4 v0, 0x2

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v1, v0}, Lcom/android/camera/panorama/SensorFusion;->setRotation(I)I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "SensorFusion.setRotation error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/module/Panorama3Module;->initializeEngine(Lcom/android/camera/panorama/MorphoPanoramaGP3;Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;D)Z

    return v3
.end method

.method private createNameString(J)Ljava/lang/String;
    .locals 1

    const v0, 0x7f110548

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doLaterReleaseIfNeed()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/Camera;->releaseAll(ZZ)V

    :cond_1
    return-void
.end method

.method private finishEngine()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "finishEngine start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->deleteNativeOutputInfo()I

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->finish(Z)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "finish error ret:0x%08X"

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "finishEngine end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    return-void
.end method

.method private getThumbnailViewSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->getCurrentDirection()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v2, 0x7f0705e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f0705e3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0705e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    :goto_1
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private initAttachQueue()V
    .locals 1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/panorama/CaptureImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/panorama/CaptureImage;->close()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "initAttachQueue"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initPreviewLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v2, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->initPreviewLayout(Lcom/android/camera/CameraSize;)V

    return-void
.end method

.method private initializeEngine(Lcom/android/camera/panorama/MorphoPanoramaGP3;Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;D)Z
    .locals 6

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeEngine start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->createNativeOutputInfo()I

    move-result p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v0

    const-string p0, "createNativeOutputInfo error ret:0x%08X"

    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->initialize(Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;D)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    const-string p0, "initialize error ret:0x%08X"

    invoke-static {p2, p0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initializeEngine end "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isProcessingFinishTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mSaveOutputImageTask:Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isShootingTooShort()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaShootingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onCaptureDirectionDecided()V
    .locals 5

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCaptureDirectionDecided %s %s"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetX:I

    iget v4, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    invoke-interface {v0, v1, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->onCaptureDirectionDecided(III)V

    iput-boolean v3, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    return-void
.end method

.method private onPreviewMoving()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->onPreviewMoving()V

    return-void
.end method

.method private onSaveFinish()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->startPreview()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onStopShooting(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopShooting recordState is null, succeed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->onSaveFinish()V

    return-void
.end method

.method private reInitGravitySensorData()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    return-void
.end method

.method private registerSensorListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsSensorAverage:Z

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    new-instance v0, Lcom/android/camera/panorama/GyroscopeRoundDetector;

    invoke-direct {v0}, Lcom/android/camera/panorama/GyroscopeRoundDetector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/16 v0, 0xba

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isNeedFullGyroscope()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->register(IZ)V

    return-void
.end method

.method private requestStopShoot()V
    .locals 1

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->sAttachExit:Lcom/android/camera/panorama/CaptureImage;

    invoke-direct {p0, v0}, Lcom/android/camera/module/Panorama3Module;->addAttachQueue(Lcom/android/camera/panorama/CaptureImage;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    return-void
.end method

.method private savePanoramaFile(Ljava/lang/String;II)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    new-instance v14, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;

    invoke-direct {v14}, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;-><init>()V

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    div-int/lit8 v8, v1, 0x64

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v3, v2}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    iget-object v9, v0, Lcom/android/camera/module/Panorama3Module;->mShutterStartTime:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/camera/module/Panorama3Module;->mShutterEndTime:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v12, v14

    invoke-virtual/range {v4 .. v13}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->savePanorama360(IILjava/io/FileDescriptor;ILjava/lang/String;Ljava/lang/String;ZLcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;Z)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v16, :cond_0

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open file failed, filePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    move v10, v2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v5, v0, Lcom/android/camera/module/Panorama3Module;->mShutterStartTime:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/camera/module/Panorama3Module;->mShutterEndTime:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v1

    move/from16 v1, p2

    move v10, v2

    move/from16 v2, p3

    move-object/from16 v3, p1

    move v4, v8

    move-object v8, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->savePanorama360(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;Z)I

    move-result v1

    :goto_2
    if-nez v1, :cond_3

    const/4 v0, 0x3

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_3
    const/4 v0, 0x6

    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v15

    const-string v1, "savePanorama360() -> 0x%x"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v15
.end method

.method private setInitialRotationByGravity()V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v1, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    const/4 v6, 0x2

    aget v1, v1, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget v9, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v6, "Gravity Sensor Value X=%f Y=%f Z=%f cnt=%d"

    invoke-static {v7, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    float-to-double v8, v3

    float-to-double v10, v5

    float-to-double v12, v1

    invoke-virtual/range {v7 .. v13}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setInitialRotationByGravity(DDD)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const-string/jumbo p0, "setInitialRotationByGravity error ret:0x%08X"

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setSensorFusionValue(Lcom/android/camera/panorama/CaptureImage;)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Lcom/android/camera/panorama/SensorFusion;->getSensorMatrix([D[D[D[I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "SensorFusion.getSensorMatrix error ret:0x%08X"

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v0}, Lcom/android/camera/panorama/SensorFusion;->getStockData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Lcom/android/camera/panorama/SensorInfoManager;

    invoke-direct {v5, v1}, Lcom/android/camera/panorama/SensorInfoManager;-><init>(I)V

    aget v1, v2, v3

    iput v1, v5, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    const/4 v1, 0x3

    aget v6, v2, v1

    iput v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    aget v2, v2, v4

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->img_ix:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->timeMillis:J

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getTimestamp()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->imageTimeStamp:J

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getSensitivity()I

    move-result v2

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensitivity:I

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getExposureTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->exposureTime:J

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getRollingShutterSkew()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->rollingShutterSkew:J

    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getSensorTimeStamp()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorTimeStamp:J

    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, p1, v3

    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, p1, v1

    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, p1, v4

    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    sub-int/2addr p1, v4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/panorama/SensorInfoManager;

    iget v2, p1, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    iget-object v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    :cond_1
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    sub-int/2addr p1, v4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/panorama/SensorInfoManager;

    iget v2, p1, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    iget-object v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v1

    aput-object p1, v2, v1

    :cond_2
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/panorama/SensorInfoManager;

    iget v1, p1, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    iput v1, v5, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    iget-object v1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v4

    aput-object p1, v1, v4

    :cond_3
    iput-object v5, p0, Lcom/android/camera/module/Panorama3Module;->mCurrentSensorInfoManager:Lcom/android/camera/panorama/SensorInfoManager;

    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-array p1, p1, [Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;

    invoke-virtual {v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setGyroscopeData([Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;)I

    move-result p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string/jumbo p1, "setGyroscopeData error ret:0x%08X"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p0}, Lcom/android/camera/panorama/SensorFusion;->clearStockData()V

    :cond_5
    return-void
.end method

.method private setupCaptureParams()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "camera device is not ready"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFlashMode(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setAntiBanding(I)V

    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "antiBanding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isZslPreferred()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setHHT(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setTimeWaterMarkEnable(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    return-void
.end method

.method private stopPanoramaShooting(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    return-void
.end method

.method private stopPanoramaShooting(ZZLjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopPanoramaShooting while not shooting"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPanoramaShooting: saveImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRelease="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->requestStopShoot()V

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    invoke-virtual {v0}, Lcom/android/camera/panorama/RoundDetector;->stop()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v3, "onPause setDisplayPreviewBitmap null"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, p2}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    move p1, p2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/camera/module/Panorama3Module;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mShutterEndTime:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;-><init>(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mSaveOutputImageTask:Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module;->onStopShooting(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private unRegisterSensorListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/16 v0, 0xba

    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getPanoramaMaxSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/Panorama3Module;->getBestPanoPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    iget v4, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v3

    float-to-double v3, v3

    const/4 v5, 0x0

    invoke-static {v5, v2, v1, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    iget v1, v0, Lcom/android/camera/CameraSize;->height:I

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pictureSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previewSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "closeCamera: end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public varargs consumePreference([I)V
    .locals 6
    .param p1    # [I
        .annotation build Lcom/android/camera/constant/UpdateConstant$UpdateType;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    aget v2, p1, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    const/16 v3, 0xb

    if-eq v2, v3, :cond_7

    const/16 v3, 0x14

    if-eq v2, v3, :cond_7

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_7

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x22

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_7

    const/16 v3, 0x37

    if-eq v2, v3, :cond_4

    const/16 v3, 0x42

    if-eq v2, v3, :cond_3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    sget-boolean v3, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    const-string v4, "no consumer for this updateType: "

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->applyZoomRatio()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->setupCaptureParams()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->updatePictureAndPreviewSize()V

    :cond_7
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V

    iget p0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportWideSelfie()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->getFeatureDetail()Lcom/android/camera/module/loader/StartControlFeatureDetail;

    move-result-object p0

    const p1, 0x7f0a04b6

    const/16 v0, 0xffe

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->addFragmentInfo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getBestPanoPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;I)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPanoPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method protected getOperatingMode()I
    .locals 0

    const p0, 0x8008

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public isDoingAction()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    return p0
.end method

.method public isUnInterruptable()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "shooting"

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isZslPreferred()Z
    .locals 0

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected keepScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected keepScreenOnAwhile()V
    .locals 3

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x11

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const-string/jumbo v0, "stop_capture_press_back"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZLjava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onCameraOpened()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->PANORAMA_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->startSession()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "SetupCameraThread done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getViewAngle(Z)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getViewAngle(Z)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x123

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    return-void
.end method

.method public onCreate(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    new-instance p1, Lcom/android/camera/module/Panorama3Module$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/Panorama3Module$MainHandler;-><init>(Lcom/android/camera/module/Panorama3Module;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->getPanoramaGoalAngle()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->getPanoramaGoalAngleVertical()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngleVertical:I

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705e0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeight:I

    const/16 p1, 0x438

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeightVertical:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/effect/EffectController;->setAiSceneEffect(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->onCameraOpened()V

    new-instance p1, Lcom/android/camera/panorama/RoundDetector;

    invoke-direct {p1}, Lcom/android/camera/panorama/RoundDetector;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    new-instance p1, Lcom/android/camera/panorama/PanoramaSetting;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/panorama/PanoramaSetting;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    new-instance p1, Lcom/android/camera/panorama/SensorFusion;

    invoke-direct {p1, v0}, Lcom/android/camera/panorama/SensorFusion;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusionMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/panorama/SensorFusion;->setMode(I)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    const-string p1, "SensorFusion.setMode error ret:0x%08X"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p1, p2}, Lcom/android/camera/panorama/SensorFusion;->setOffsetMode(I)I

    move-result p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    const-string p1, "SensorFusion.setOffsetMode error ret:0x%08X"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p1, v0}, Lcom/android/camera/panorama/SensorFusion;->setAppState(I)I

    move-result p1

    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "SensorFusion.setAppState error ret:0x%08X"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onHostStopAndNotifyActionStop()V
    .locals 5

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 v0, 0x1

    const-string/jumbo v1, "stop_capture_press_back"

    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->mPreviewImageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause recycle bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->doLaterReleaseIfNeed()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1b

    const v3, 0x7f110741

    if-eq p1, v0, :cond_7

    const/16 v0, 0x42

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    const/16 v4, 0x58

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    const/16 p1, 0x32

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/Panorama3Module;->performKeyClicked(ILjava/lang/String;IZ)V

    return v1

    :cond_2
    :pswitch_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    :cond_5
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "stop_capture_press_back"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZLjava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1e

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/Panorama3Module;->performKeyClicked(ILjava/lang/String;IZ)V

    goto :goto_2

    :cond_8
    const/16 p1, 0x28

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/Panorama3Module;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_9
    :goto_2
    return v1

    :cond_a
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->unRegisterSensorListener()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->closeCamera()V

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->resetScreenOn()V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->retryOnceIfCameraError(Landroid/os/Handler;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string p1, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    sget-object p1, Lcom/android/camera/constant/UpdateConstant;->PANORAMA_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->registerSensorListener()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 0

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string p1, "onShutterButtonClick return, isDoingAction"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onShutterButtonClick mode = %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    iget-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xd4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->getThumbnailViewSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mThumbnailViewSize:Landroid/util/Size;

    if-nez p1, :cond_4

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string p1, "onShutterButtonClick return, thumbnailViewSize is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance p1, Lcom/android/camera/module/Panorama3Module$PanoramaInit;

    invoke-direct {p1, p0}, Lcom/android/camera/module/Panorama3Module$PanoramaInit;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->initAttachQueue()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick startPanoramaShooting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->startPanoramaShooting()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isShootingTooShort()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string p1, "panorama shooting is too short, ignore this click"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick stopPanoramaShooting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "stop_capture_press_stop"

    invoke-direct {p0, v1, v4, p1}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/Panorama3Module;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0

    iget-boolean p3, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p3}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string p1, "onSingleTapUp: frame not available"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p3, 0xab

    invoke-virtual {p0, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result p0

    if-eqz p0, :cond_2

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    return-void
.end method

.method protected onThermalConstrained()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isShootingTooShort()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "panorama shooting is too short, ignore this click"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "stop_capture_thermal"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method protected performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Panorama3Module;->onShutterButtonClick(I)V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    :array_0
    .array-data 4
        0xae
        0xa4
        0xd4
    .end array-data
.end method

.method public requestRender()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->requestRender()V

    :cond_0
    return-void
.end method

.method protected resetScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resumePreview()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :cond_0
    return-void
.end method

.method public setNullDirectionFunction()V
    .locals 8

    new-instance v7, Lcom/android/camera/panorama/DirectionFunction;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/panorama/DirectionFunction;-><init>(IIIIFI)V

    iput-object v7, p0, Lcom/android/camera/module/Panorama3Module;->mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isRecording()Z

    move-result p0

    return p0
.end method

.method public startPanoramaShooting()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "previous save task is on going"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startPanoramaShooting"

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    iput v2, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/camera/module/Panorama3Module;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mShutterStartTime:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mShutterEndTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isEnableAWBLockInPanorama()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    :cond_2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mLocation:Landroid/location/Location;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4, v2}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v4, p0, Lcom/android/camera/module/Panorama3Module;->mSnapshotFocusMode:I

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->setJpegQuality(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getJpegThumbnailSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4, v2}, Lcom/android/camera2/Camera2Proxy;->setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isZslPreferred()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v1}, Lcom/android/camera2/Camera2Proxy;->setNeedPausePreview(Z)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, -0x1

    new-instance v4, Lcom/android/camera/module/Panorama3Module$5;

    invoke-direct {v4, p0}, Lcom/android/camera/module/Panorama3Module$5;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/camera2/Camera2Proxy;->captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaShootingStartTime:J

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOn()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public startPreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setDisplayOrientation(I)V

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startSession()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startPreview: camera has been closed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureMaxImages(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    :cond_0
    return-void
.end method
