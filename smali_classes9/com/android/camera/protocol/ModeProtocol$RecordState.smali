.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$RecordState;
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
    name = "RecordState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/ModeProtocol$RecordState$PostAction;
    }
.end annotation


# static fields
.field public static final POST_AMBILIGHT:I = 0x3

.field public static final POST_HIGH_FPS:I = 0x1

.field public static final POST_PANORAMA:I = 0x2

.field public static final POST_SUPER_NIGHT_MANUAL:I = 0x4

.field public static final POST_SUPER_NIGHT_TRIGGER:I = 0x5

.field public static final TYPE_TAG:I = 0xd4


# virtual methods
.method public abstract onFailed()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onLongExposePrepare()V
.end method

.method public abstract onLongExposeStart()V
.end method

.method public abstract onMimojiCreateBack()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostPreview()V
.end method

.method public abstract onPostPreviewBack()V
.end method

.method public abstract onPostSavingFinish()V
.end method

.method public abstract onPostSavingStart(I)V
    .param p1    # I
        .annotation build Lcom/android/camera/protocol/ModeProtocol$RecordState$PostAction;
        .end annotation
    .end param
.end method

.method public abstract onPrepare()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract prepareCreateMimoji()V
.end method
