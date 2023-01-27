.class public Lcom/android/camera/features/mimojis/mvp/usecase/edit/PresenterMimojiFuEdit;
.super Ljava/lang/Object;
.source "PresenterMimojiFuEdit.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEdit;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEmoticonPicture(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public createEmoticonThumbnail()V
    .locals 0

    return-void
.end method

.method public createEmoticonVideo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;I)V
    .locals 0

    return-void
.end method

.method public isSetupCompleted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDeviceRotationChange(I)V
    .locals 0

    return-void
.end method

.method public onTypeConfigSelect(I)V
    .locals 0

    return-void
.end method

.method public onTypeConfigSelect(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;I)V
    .locals 0

    return-void
.end method

.method public quitAndSaveEdit(Z)V
    .locals 0

    return-void
.end method

.method public quitCoverEmoticon()V
    .locals 0

    return-void
.end method

.method public reInitMimojiEdit()V
    .locals 0

    return-void
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public requestRender(Z)V
    .locals 0

    return-void
.end method

.method public resetClickEnable(Z)V
    .locals 0

    return-void
.end method

.method public resetConfig()V
    .locals 0

    return-void
.end method

.method public showEmoticon()V
    .locals 0

    return-void
.end method

.method public startMimojiEdit(I)V
    .locals 0

    return-void
.end method
