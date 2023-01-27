.class public Lcom/android/camera/module/impl/component/VideoCastStateManager;
.super Ljava/lang/Object;
.source "VideoCastStateManager.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;


# instance fields
.field private mIsPausedState:Z

.field private mIsRecordingState:Z

.field private mRecordedDuration:J


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsPausedState:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mRecordedDuration:J

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsRecordingState:Z

    return-void
.end method

.method public static create()Lcom/android/camera/module/impl/component/VideoCastStateManager;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/VideoCastStateManager;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/VideoCastStateManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVideoCastRecordedDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mRecordedDuration:J

    return-wide v0
.end method

.method public isVideoCastStatePaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsPausedState:Z

    return p0
.end method

.method public isVideoCastStateRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsRecordingState:Z

    return p0
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setVideoCastRecordedDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mRecordedDuration:J

    return-void
.end method

.method public setVideoCastStatePaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsPausedState:Z

    return-void
.end method

.method public setVideoCastStateRecording(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/VideoCastStateManager;->mIsRecordingState:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
