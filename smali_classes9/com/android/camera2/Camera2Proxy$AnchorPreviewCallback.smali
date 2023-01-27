.class public interface abstract Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;
.super Ljava/lang/Object;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnchorPreviewCallback"
.end annotation


# virtual methods
.method public abstract onFrameThumbnailFail()V
.end method

.method public abstract onFrameThumbnailSuccess(J)V
.end method

.method public abstract saveBitmapAsThumbnail(Landroid/graphics/Bitmap;IIZZ)V
.end method
