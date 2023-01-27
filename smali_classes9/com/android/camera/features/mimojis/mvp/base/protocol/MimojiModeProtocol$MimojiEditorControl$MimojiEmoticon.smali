.class public interface abstract Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;
.super Ljava/lang/Object;
.source "MimojiModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiEmoticon"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xfa


# virtual methods
.method public abstract backToPreview(Z)V
.end method

.method public abstract coverEmoticonError()V
.end method

.method public abstract coverEmoticonSuccess()V
.end method

.method public abstract isLoadFinish()Z
.end method

.method public abstract loadEmoticon(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract resetConfig()V
.end method

.method public abstract setIsDirectEmoticon(Z)V
.end method

.method public abstract updateEmoticonGifProgress(I)V
.end method

.method public abstract updateEmoticonPictureProgress(Ljava/lang/String;Lcom/arcsoft/avatar2/emoticon/EmoInfo;Z)V
.end method

.method public abstract updateEmoticonThumbnailProgress(ILcom/arcsoft/avatar2/emoticon/EmoInfo;I)V
.end method
