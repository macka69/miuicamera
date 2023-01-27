.class Lcom/android/camera/Camera$CameraRunnable;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraRunnable"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraRunnable"


# instance fields
.field private mCamera:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseDevice:Z

.field private mReleaseImmediate:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Camera$CameraRunnable;->mCamera:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseDevice:Z

    iput-boolean p3, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseImmediate:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/Camera$CameraRunnable;->mCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->isAlive(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->unRegisterProtocol()V

    invoke-interface {v1}, Lcom/android/camera/module/Module;->unRegisterModulePersistProtocol()V

    :cond_1
    invoke-interface {v1}, Lcom/android/camera/module/Module;->onPause()V

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onStop()V

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onDestroy()V

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    iget-boolean v1, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseDevice:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v1}, Lcom/android/camera/CameraAppImpl;->containsResumedCameraInStack()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start releaseCameraDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraRunnable"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseImmediate:Z

    invoke-virtual {v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->release(Z)V

    sget-boolean p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelTagOpen:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->closeCamera()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityStopped()Z

    move-result p0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isFrontPopCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v1}, Lcom/android/camera/CameraAppImpl;->containsResumedCameraInStack()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_6

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->releaseCameraScreenNail()V

    goto :goto_1

    :cond_5
    const-string p0, "Camera2OpenManager release ignored."

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
