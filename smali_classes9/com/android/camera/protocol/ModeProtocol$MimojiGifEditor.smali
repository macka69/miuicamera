.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;
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
    name = "MimojiGifEditor"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xfb


# virtual methods
.method public abstract combineVideoAudio(Ljava/lang/String;J)V
.end method

.method public abstract coverGifError()V
.end method

.method public abstract coverGifSuccess(Ljava/lang/String;)V
.end method

.method public abstract operateGifPannelVisibleState(I)V
.end method

.method public abstract reconfigPreviewRadio(I)V
.end method

.method public abstract setPreviewCover(Landroid/graphics/Bitmap;)V
.end method

.method public abstract showPreviewCover(Z)V
.end method
