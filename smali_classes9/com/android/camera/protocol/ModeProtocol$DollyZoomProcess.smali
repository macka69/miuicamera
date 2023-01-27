.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;
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
    name = "DollyZoomProcess"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x2a4


# virtual methods
.method public abstract canSnap()Z
.end method

.method public abstract isAdded()Z
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onPreviewPrepare(Landroid/content/ContentValues;)V
.end method

.method public abstract onSaveFinish(Landroid/net/Uri;)V
.end method

.method public abstract prepare(Z)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract quit()V
.end method

.method public abstract showSaveAndGiveUp()V
.end method

.method public abstract stopCaptureToPreviewResult(Z)V
.end method

.method public abstract updateCaptureMessage(IZ)V
.end method

.method public abstract updateZoomRatioHint(F)V
.end method
