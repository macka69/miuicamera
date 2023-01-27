.class public interface abstract Lcom/xiaomi/fenshen/FenShenCam$Listener;
.super Ljava/lang/Object;
.source "FenShenCam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/fenshen/FenShenCam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V
.end method

.method public abstract onPhotoResult([B)V
.end method

.method public abstract onStartPreview()V
.end method

.method public abstract onStopPreview()V
.end method

.method public abstract onStopRecord()V
.end method

.method public abstract onSubjectCount(I)V
.end method

.method public abstract onVideoSaved(I)V
.end method

.method public abstract requestRender()V
.end method
