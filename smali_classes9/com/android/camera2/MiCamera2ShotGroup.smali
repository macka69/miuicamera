.class public Lcom/android/camera2/MiCamera2ShotGroup;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCamera2ShotGroup"


# instance fields
.field private final MAX_GROUP_FACE_NUM:I

.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mContext:Landroid/content/Context;

.field private mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field private mGroupShot:Lcom/android/camera/groupshot/GroupShot;

.field private mGroupShotFolderName:Ljava/lang/String;

.field private mReceivedJpegCallbackNum:I

.field private mTotalJpegCallbackNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;ILandroid/content/Context;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->MAX_GROUP_FACE_NUM:I

    iput p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    iput-object p3, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera2/MiCamera2ShotGroup;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera2/MiCamera2ShotGroup;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera2/MiCamera2ShotGroup;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    return p0
.end method

.method private getGroupShotMaxImage()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/Face;

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private getGroupShotNum()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->getGroupShotMaxImage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private initGroupShot(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/groupshot/GroupShot;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/android/camera/groupshot/GroupShot;

    invoke-direct {v1}, Lcom/android/camera/groupshot/GroupShot;-><init>()V

    iput-object v1, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    :cond_1
    iget-object v1, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    invoke-static {}, Lcom/mi/config/Device;->isISPRotated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/16 v6, 0xa

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    goto :goto_0

    :cond_3
    iget-object v11, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/16 v13, 0xa

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v14

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v16

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v17

    move/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    :goto_0
    return-void
.end method

.method private prepareGroupShot()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->getGroupShotNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2ShotGroup;->initGroupShot(I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/camera/groupshot/GroupShot;->attach_start(I)I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    new-instance v0, Lcom/android/camera2/MiCamera2ShotGroup$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotGroup$1;-><init>(Lcom/android/camera2/MiCamera2ShotGroup;)V

    return-object v0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPhotoImageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isInQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotGroup;->notifyResultData([B)V

    return-void
.end method

.method protected notifyResultData([B)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v1, "notifyResultData: null parallel callback"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    :cond_1
    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5, v1}, Lcom/android/camera/groupshot/GroupShot;->attach([B)I

    move-result v5

    sget-boolean v6, Lcom/android/camera/Util;->sIsDumpOrigJpg:Z

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    iget-object v7, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    invoke-static {v1, v6, v7}, Lcom/android/camera/storage/Storage;->saveOriginalPic([BILjava/lang/String;)V

    :cond_2
    sget-object v6, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v3

    const-string v5, "groupShot attach() = 0x%08x index=%d"

    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    iget v6, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    if-ge v5, v6, :cond_3

    if-ne v5, v3, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSaveGroushotPrimitiveOn()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3, v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3, v1, v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1, v1}, Lcom/xiaomi/camera/core/ParallelCallback;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v17

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v1

    add-int v1, v1, v17

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_4

    move v15, v2

    move/from16 v16, v5

    goto :goto_0

    :cond_4
    move/from16 v16, v2

    move v15, v5

    :goto_0
    new-instance v1, Lcom/android/camera/module/SaveOutputImageTask;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/camera/storage/SaverCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v14

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    move-object v10, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-direct/range {v10 .. v19}, Lcom/android/camera/module/SaveOutputImageTask;-><init>(Lcom/android/camera/storage/SaverCallback;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(Z)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v1, "notifyResultData: null picture callback"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method protected onImageReceived(Landroid/media/Image;I)V
    .locals 6

    sget-object p2, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v4, v2

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "onImageReceived: image arrived first"

    invoke-static {p2, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    :cond_0
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2ShotGroup;->notifyResultData([B)V

    iget p1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    iget p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    if-ge p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mDeparted:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->startSessionCapture()V

    :cond_1
    return-void
.end method

.method protected prepare()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->prepareGroupShot()V

    return-void
.end method

.method protected startSessionCapture()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/MiCamera2Shot;->generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSessionCapture: null task data"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "Failed to capture a still picture, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    sget-object v1, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "Cannot capture a still picture"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method
