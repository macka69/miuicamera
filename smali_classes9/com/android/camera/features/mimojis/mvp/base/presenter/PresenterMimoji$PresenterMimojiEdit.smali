.class public interface abstract Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEdit;
.super Ljava/lang/Object;
.source "PresenterMimoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PresenterMimojiEdit"
.end annotation


# virtual methods
.method public abstract createEmoticonPicture(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createEmoticonThumbnail()V
.end method

.method public abstract createEmoticonVideo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;I)V
.end method

.method public abstract isSetupCompleted()Z
.end method

.method public abstract onDeviceRotationChange(I)V
.end method

.method public abstract onTypeConfigSelect(I)V
.end method

.method public abstract onTypeConfigSelect(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;I)V
.end method

.method public abstract quitAndSaveEdit(Z)V
.end method

.method public abstract quitCoverEmoticon()V
.end method

.method public abstract reInitMimojiEdit()V
.end method

.method public abstract releaseRender()V
.end method

.method public abstract requestRender(Z)V
.end method

.method public abstract resetClickEnable(Z)V
.end method

.method public abstract resetConfig()V
.end method

.method public abstract showEmoticon()V
.end method

.method public abstract startMimojiEdit(I)V
.end method
