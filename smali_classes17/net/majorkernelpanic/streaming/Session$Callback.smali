.class public interface abstract Lnet/majorkernelpanic/streaming/Session$Callback;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBitrateUpdate(J)V
.end method

.method public abstract onPreviewStarted()V
.end method

.method public abstract onSessionConfigured()V
.end method

.method public abstract onSessionError(IILjava/lang/Exception;)V
.end method

.method public abstract onSessionStarted()V
.end method

.method public abstract onSessionStopped()V
.end method
