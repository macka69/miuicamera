.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;
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
    name = "AutoHibernation"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x3a8


# virtual methods
.method public abstract dismissAutoHibernation()V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract startAutoHibernationCaptureDelayNumber()V
.end method

.method public abstract stopAutoHibernationCaptureDelayNumber()V
.end method

.method public abstract updateAutoHibernationFirstRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateTimerBurstAnimator()V
.end method
