.class public interface abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/extinterface/FuControllerInterface;
.super Ljava/lang/Object;
.source "FuControllerInterface.java"


# virtual methods
.method public abstract addCurrentAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
.end method

.method public abstract animationPause()V
.end method

.method public abstract animationPlay(Z)V
.end method

.method public abstract animationStart()V
.end method

.method public abstract animationStop()V
.end method

.method public abstract createAvatarInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
.end method

.method public abstract createSceneInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;
.end method

.method public abstract getAvatarInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
.end method

.method public abstract getCurrentAvatarInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
.end method

.method public abstract getCurrentAvatarInstanceCount()I
.end method

.method public abstract getCurrentSceneInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;
.end method

.method public abstract getExpressionData()[F
.end method

.method public abstract getFaceRectData()[F
.end method

.method public abstract getLandmarksData()[F
.end method

.method public abstract getRotationData()[F
.end method

.method public abstract isTracking()I
.end method

.method public abstract loadEffect(Ljava/lang/String;)V
.end method

.method public abstract onCameraChange(ZI)V
.end method

.method public abstract onSurfaceCreated()Z
.end method

.method public abstract onSurfaceDestroyed()V
.end method

.method public abstract queueEvent(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract queueEvent(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queueEventNoLock(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract queueNextEvent(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract releaseAvatarInstance(I)V
.end method

.method public abstract removeCurrentAvatarInstance(I)V
.end method

.method public abstract removeCurrentAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
.end method

.method public abstract render([BIIII)I
.end method

.method public abstract setCurrentSceneInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;)V
.end method

.method public abstract setLoadCompleteListener(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;)V
.end method

.method public abstract setNeedTrackFace(Z)V
.end method

.method public abstract setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[D)V
.end method

.method public abstract setRotMode(I)V
.end method

.method public abstract startTask()V
.end method
