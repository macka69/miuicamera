.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$RemoteOnlineProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteOnlineProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x1a6


# virtual methods
.method public abstract connect(I)V
.end method

.method public abstract disconnect(I)V
.end method

.method public abstract initialize()V
.end method

.method public abstract isConnectionSuspended()Z
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract release()V
.end method

.method public abstract setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V
.end method

.method public abstract setLayoutType(I)V
.end method

.method public abstract setRecordingState(I)V
.end method

.method public abstract startNetworkServer()V
.end method

.method public abstract startStreaming(Ljava/lang/String;Landroid/view/Surface;)V
.end method

.method public abstract stopNetworkServer()V
.end method

.method public abstract stopStreaming()V
.end method
