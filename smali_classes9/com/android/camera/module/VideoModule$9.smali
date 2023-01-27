.class Lcom/android/camera/module/VideoModule$9;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->stopRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$302(Lcom/android/camera/module/VideoModule;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$400(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStopVideoRecordStart(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v6, "failed to stop media recorder"

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v5, v4, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/camera/module/VideoBase;->deleteVideoFile(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v3, v4, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v4, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v5, 0x3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v4, v5}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v4}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-wide v6, v4, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v0, v6

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$500(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$500(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "fps120"

    goto :goto_1

    :cond_3
    const-string v4, "fps240"

    :goto_1
    move-object v6, v4

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)I

    move-result v7

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v8

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)I

    move-result v9

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static/range {v6 .. v11}, Lcom/android/camera/statistic/CameraStatUtils;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V

    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v6, v4, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v6, :cond_d

    iget v4, v4, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$900(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$1000(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lcom/mi/config/Device;->isRecorderBoostSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$1102(Lcom/android/camera/module/VideoModule;Lcom/xiaomi/camera/core/BoostFrameworkImpl;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "postProcessVideo boost"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v2, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/camera/module/VideoModule;->access$1200(Lcom/android/camera/module/VideoModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postProcessVideo processTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isRecorderBoostSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_8
    if-nez v2, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v3, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v2, v0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_d

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1300(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "fps480"

    goto :goto_2

    :cond_a
    const-string v0, "fps960"

    :goto_2
    move-object v1, v0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)I

    move-result v2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v3

    iget-object p0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->access$1300(Lcom/android/camera/module/VideoModule;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x1e0

    goto :goto_3

    :cond_b
    const/16 p0, 0x3c0

    :goto_3
    move v4, p0

    const-wide/16 v5, 0xa

    invoke-static/range {v1 .. v6}, Lcom/android/camera/statistic/CameraStatUtils;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V

    goto :goto_5

    :cond_c
    :goto_4
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uncomplete video.="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoBase;->deleteVideoFile(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v3, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_d
    :goto_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
