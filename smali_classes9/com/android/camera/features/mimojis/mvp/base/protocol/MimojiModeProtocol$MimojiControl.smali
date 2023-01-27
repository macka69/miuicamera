.class public interface abstract Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;
.super Ljava/lang/Object;
.source "MimojiModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiControl"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xf6


# virtual methods
.method public abstract backToPreview(ZZ)V
.end method

.method public abstract changeToGif(Z)V
.end method

.method public abstract createEmoticon()V
.end method

.method public abstract deleteMimojiCache(I)Z
.end method

.method public abstract getGifBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getGlcontext()Ljavax/microedition/khronos/egl/EGLContext;
.end method

.method public abstract getTimeValue()J
.end method

.method public abstract getVideoCache()Ljava/lang/String;
.end method

.method public abstract initAvatarEngine(IIIIZ)V
.end method

.method public abstract initMimojiResource()V
.end method

.method public abstract isAvatarInited()Z
.end method

.method public abstract isOnCreateMimoji()Z
.end method

.method public abstract isRecordStopping()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract onCaptureImage()V
.end method

.method public abstract onCreateCapture()Z
.end method

.method public abstract onDeviceRotationChange(I)V
.end method

.method public abstract onDrawFrame(Landroid/graphics/Rect;IIZ)V
.end method

.method public abstract onMimojiChangeBg(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Z)V
.end method

.method public abstract onMimojiChangeTimbre(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;I)V
.end method

.method public abstract onMimojiCreate()V
.end method

.method public abstract onMimojiDeleted(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
.end method

.method public abstract onMimojiEmoticonBack()V
.end method

.method public abstract onMimojiInitFinish()V
.end method

.method public abstract onMimojiSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Z)Z
.end method

.method public abstract onRecordStart()V
.end method

.method public abstract onRecordStop(I)V
.end method

.method public abstract onRecordStopped(Z)V
.end method

.method public abstract refeshMaterialConfig()V
.end method

.method public abstract release()V
.end method

.method public abstract reloadConfig()V
.end method

.method public abstract saveEmoticon(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDetectSuccess(Z)V
.end method

.method public abstract setDisableSingleTapUp(Z)V
.end method

.method public abstract setIsFrameAvailable(Z)V
.end method

.method public abstract setNeedTakePic()V
.end method

.method public abstract takePicIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
.end method
