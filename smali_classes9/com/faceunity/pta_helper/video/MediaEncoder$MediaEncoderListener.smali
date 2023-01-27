.class public interface abstract Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/pta_helper/video/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaEncoderListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onPrepared(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
.end method

.method public abstract onStopped(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
.end method
