.class public interface abstract Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;
.super Ljava/lang/Object;
.source "RtspServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallbackListener"
.end annotation


# virtual methods
.method public abstract onError(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;Ljava/lang/Exception;I)V
.end method

.method public abstract onMessage(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;I)V
.end method
