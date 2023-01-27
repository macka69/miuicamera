.class public final Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "DualVideoRecordModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoRecordModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v13

    iget-object v1, v0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-static {v1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$700(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, v0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-static {v3}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$500(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v10, v3, Lcom/android/camera/CameraSize;->width:I

    iget-object v0, v0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$600(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v11, v0, Lcom/android/camera/CameraSize;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    invoke-virtual/range {v1 .. v22}, Lcom/android/camera/storage/ImageSaver;->addImage([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onPictureTaken"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$102(Lcom/android/camera/dualvideo/DualVideoRecordModule;Z)Z

    iget-object p2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-static {p2}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$200(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$400(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->this$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-static {v1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->access$300(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;->storeImage([BLandroid/location/Location;)V

    return-void
.end method
