.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;
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
    name = "BottomMenuProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xc5


# virtual methods
.method public abstract animateShineBeauty(Z)V
.end method

.method public abstract expandAIWatermarkBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;)V
.end method

.method public abstract expandMasterFilterBottomMenu(Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;)V
.end method

.method public abstract expandPictureStyleBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;)V
.end method

.method public abstract expandShineBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
.end method

.method public abstract expandVideoSkyBottomMenu(Lcom/android/camera/data/data/config/ComponentRunningVideoSky;)V
.end method

.method public abstract getBeautyActionMenuType()I
.end method

.method public abstract onBottomMenuAnimate(II)V
.end method

.method public abstract onRestoreCameraActionMenu(I)V
.end method

.method public abstract onSwitchBeautySkinColor(Lcom/android/camera/data/data/runing/ComponentRunningShine;Z)V
.end method

.method public abstract onSwitchCameraPicker()V
.end method

.method public abstract onSwitchFastMotionAction(Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;)V
.end method

.method public abstract onSwitchFastMotionProAction(Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;)V
.end method

.method public abstract onSwitchLiveActionMenu(I)V
.end method

.method public abstract pauseRecording()V
.end method

.method public abstract setModeLayoutVisibility(IZ)V
.end method
