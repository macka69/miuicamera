.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ZoomActive;
.super Ljava/lang/Object;
.source "ModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZoomActive"
.end annotation


# virtual methods
.method public abstract isZoomAdjustVisible()Z
.end method

.method public abstract isZoomViewMoving()Z
.end method

.method public abstract onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)V
.end method

.method public abstract setZoomViewVisible(Z)V
.end method

.method public abstract updateCurrentZoomRatio(F)V
.end method

.method public abstract updateZoomRatio(FF)V
.end method
