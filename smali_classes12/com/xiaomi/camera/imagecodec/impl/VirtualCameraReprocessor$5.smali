.class Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VirtualCameraReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->createReprocessSession(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onConfigureFailed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$902(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1302(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 9
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigured>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onConfigured: null camera device"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p0, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$902(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$808(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1200(Landroid/hardware/camera2/CameraCaptureSession;)I

    move-result v1

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sessionId: %d %d"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v7}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sessionId: %d->%d"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v7}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$800(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$802(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;I)I

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1300(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/media/ImageWriter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1300(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/media/ImageWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1, v5, v8}, Lcom/xiaomi/camera/imagecodec/ImagePool;->makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1302(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$500(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onConfigured<<"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
