.class public Lcom/android/camera/videoplayer/player_messages/CreateNewPlayerInstance;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.source "CreateNewPlayerInstance.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    return-void
.end method


# virtual methods
.method protected performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->createNewPlayerInstance()V

    return-void
.end method

.method protected stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method protected stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method
