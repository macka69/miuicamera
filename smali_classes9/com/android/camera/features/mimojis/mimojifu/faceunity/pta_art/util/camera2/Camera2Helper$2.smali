.class Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onConfigureFailed"

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$302(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string p1, "captureRequest is null"

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
