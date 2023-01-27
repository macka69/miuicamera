.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;
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
    name = "VideoCastStateProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xff00


# virtual methods
.method public abstract getVideoCastRecordedDuration()J
.end method

.method public abstract isVideoCastStatePaused()Z
.end method

.method public abstract isVideoCastStateRecording()Z
.end method

.method public abstract setVideoCastRecordedDuration(J)V
.end method

.method public abstract setVideoCastStatePaused(Z)V
.end method

.method public abstract setVideoCastStateRecording(Z)V
.end method
