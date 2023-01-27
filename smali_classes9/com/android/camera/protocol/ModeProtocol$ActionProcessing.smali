.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$ZoomActive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionProcessing"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa2


# virtual methods
.method public abstract adjustViewBackground()V
.end method

.method public abstract announceForAccessibility(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract enableStopButton(ZZ)V
.end method

.method public abstract entryOrExitMiMojiGif(Z)V
.end method

.method public abstract filterUiChange()V
.end method

.method public abstract forceSwitchFront()Z
.end method

.method public abstract hideDocumentReviewViews()V
.end method

.method public abstract hideExtra()V
.end method

.method public abstract isShowFilterView()Z
.end method

.method public abstract isShowLightingView()Z
.end method

.method public abstract processingAudioCapture(Z)V
.end method

.method public abstract processingFailed()V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingLongExposePrepare()V
.end method

.method public abstract processingLongExposeStart()V
.end method

.method public abstract processingMimojiBack()V
.end method

.method public abstract processingMimojiPrepare()V
.end method

.method public abstract processingPause()V
.end method

.method public abstract processingPostAction(I)V
    .param p1    # I
        .annotation build Lcom/android/camera/protocol/ModeProtocol$RecordState$PostAction;
        .end annotation
    .end param
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingResume()V
.end method

.method public abstract processingSpeechShutter(Z)V
.end method

.method public abstract processingStart()V
.end method

.method public abstract processingWorkspace(Z)V
.end method

.method public abstract setBackgroundColor(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;)V
.end method

.method public abstract setLightingViewStatus(Z)V
.end method

.method public abstract showCameraPicker(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end method

.method public abstract showDocumentReviewViews(Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
.end method

.method public abstract showOrHideBottom(Z)V
.end method

.method public abstract showOrHideBottomViewWithAnim(Z)V
.end method

.method public abstract showOrHideFilterView()Z
.end method

.method public abstract showOrHideLightingView()Z
.end method

.method public abstract showOrHideLoadingProgress(ZZ)V
.end method

.method public abstract showOrHideMimojiProgress(Z)V
.end method

.method public abstract switchModeOrExternalTipLayout(Z)V
.end method

.method public abstract switchThumbnailFunction(Z)V
.end method

.method public abstract updateInstallState(I)V
.end method

.method public abstract updateLoading(Z)V
.end method

.method public abstract updatePauseAndCaptureView(Z)V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;)V
.end method

.method public abstract updateResourceState(I)V
.end method

.method public abstract updateThumbnail(Lcom/android/camera/Thumbnail;ZI)V
.end method

.method public abstract updateThumbnail(Lcom/android/camera/Thumbnail;ZIZ)V
.end method
