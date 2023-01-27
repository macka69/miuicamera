.class public Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "AmbilightModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private final mCaptureTime:J

.field private mHeight:I

.field private mModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/AmbilightModule;",
            ">;"
        }
    .end annotation
.end field

.field private mNv21Data:[B

.field private mOrientation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/AmbilightModule;[BJLcom/android/camera/module/AmbilightModule$SaveStateCallback;)V
    .locals 0
    .param p1    # Lcom/android/camera/module/AmbilightModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2200(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2300(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2400(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    iput-object p5, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$300(Lcom/android/camera/module/AmbilightModule;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    iput-wide p3, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    return-void
.end method

.method private appendExif([BLcom/android/gallery3d/exif/ExifInterface;Landroid/location/Location;)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v7, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    iget v8, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    iget-wide v9, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    sub-long v9, v4, v9

    iget-object v12, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget-wide v13, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCaptureTime:J

    const/16 v16, 0x1

    move-object/from16 v11, p3

    move-object/from16 v15, p2

    invoke-static/range {v6 .. v16}, Lcom/android/camera/Util;->appendExifInfo(IIIJLandroid/location/Location;Landroid/hardware/camera2/CaptureResult;JLcom/android/gallery3d/exif/ExifInterface;Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v2, "appendExif(): Failed to append exif metadata"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v2, "appendExif(): captureResult is null."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_2

    array-length v0, v3

    array-length v2, v1

    if-ge v0, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_2
    return-object v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    iget v2, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v3, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v5

    invoke-static {v1, v2, v3, v5}, Lcom/android/camera/ImageHelper;->encodeNv21ToJpeg([BIII)[B

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mNv21Data:[B

    if-nez v1, :cond_0

    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v1, "jpegData is null, can\'t save"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {v0, v1, v3, v5}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->appendExif([BLcom/android/gallery3d/exif/ExifInterface;Landroid/location/Location;)[B

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/AmbilightModule;

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    new-instance v11, Landroid/util/Size;

    iget v5, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mWidth:I

    iget v7, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mHeight:I

    invoke-direct {v11, v5, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v12, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    new-instance v1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    const/16 v5, 0x100

    invoke-direct {v1, v11, v11, v11, v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v14

    new-instance v5, Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v20}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;-><init>(ZZZLjava/lang/String;FFF)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v1

    iget v0, v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mOrientation:I

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getTimeWatermark(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/android/camera/module/AmbilightModule;->access$2500(Lcom/android/camera/module/AmbilightModule;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v12, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)Z

    :cond_2
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->mCallback:Lcom/android/camera/module/AmbilightModule$SaveStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/AmbilightModule$SaveStateCallback;->onSaveCompleted()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    sget-object p0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v0, "onPreExecute"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
