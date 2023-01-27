.class public Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;
.super Lcom/android/camera/data/data/DataItemBase;
.source "MimojiStatusManager.java"


# static fields
.field public static final DATA_MIMOJI_RECORD_STATE:Ljava/lang/String; = "mimoji_record_state"

.field public static final DATA_MIMOJI_RECORD_STATE_FROM_GIF:Ljava/lang/String; = "mimoji_record_state_from_gif"

.field private static final KEY:Ljava/lang/String; = "camera_settings_mimoji"

.field public static final MATERIAL_DOWNLOAD_STATE:Ljava/lang/String; = "material_download_state"

.field public static final MATERIAL_VERSION:Ljava/lang/String; = "material_version"

.field public static final MIMOJI_CREATE:I = 0x4

.field public static final MIMOJI_EDIT:I = 0x6

.field public static final MIMOJI_EMOTICON:I = 0x8

.field public static final MIMOJI_NONE:I = 0x0

.field public static final MIMOJI_PANEL_AVATAR:I = 0x1

.field public static final MIMOJI_PANEL_AVATAR_CARTOON:I = 0x65

.field public static final MIMOJI_PANEL_AVATAR_HUMAN:I = 0x64

.field public static final MIMOJI_PANEL_BG:I = 0x2

.field public static final MIMOJI_PANEL_CLOSE:I = 0x0

.field public static final MIMOJI_PANEL_TIMBRE:I = 0x3

.field public static final MIMOJI_PHOTO:I = 0x0

.field public static final MIMOJI_PREVIEW:I = 0x2

.field public static final MIMOJI_PREVIEW_PLAY:I = 0xa

.field public static final MIMOJI_VIDEO:I = 0x1


# instance fields
.field private mAvatarPanelState:I

.field private mCurrentMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

.field private mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

.field private mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

.field private mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

.field private mIsAvatarInited:Z

.field private mIsFuSdkLoadFinish:Z

.field private volatile mIsLoading:Z

.field private mMode:I

.field private mPanelState:I

.field private mRenderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsLoading:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsFuSdkLoadFinish:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsAvatarInited:Z

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mPanelState:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mAvatarPanelState:I

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mRenderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-void
.end method


# virtual methods
.method public IsLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsLoading:Z

    return p0
.end method

.method public getAvatarPanelState()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mAvatarPanelState:I

    return p0
.end method

.method public getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    return-object p0
.end method

.method public getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    return-object p0
.end method

.method public getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p0
.end method

.method public declared-synchronized getCurrentMimojiState()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    if-nez v0, :cond_0

    const-string v0, "close_state"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "close_state"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    return-object p0
.end method

.method public getMaterialDownloadState()Z
    .locals 2

    const-string v0, "material_download_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMaterialVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "material_version"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMimojiPanelState()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mPanelState:I

    return p0
.end method

.method public getMimojiRecordState()I
    .locals 2

    const-string v0, "mimoji_record_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMimojiRecordStateFromGif()I
    .locals 2

    const-string v0, "mimoji_record_state_from_gif"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public declared-synchronized getMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mRenderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-object p0
.end method

.method public isAvatarInited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsAvatarInited:Z

    return p0
.end method

.method public isFuSdkLoadFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsFuSdkLoadFinish:Z

    return p0
.end method

.method public isInMimojiCreate()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiEdit()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiEmoticon()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiPhoto()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiPreview()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiPreviewPlay()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPreviewSurface()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_settings_mimoji"

    return-object p0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiPanelState(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    invoke-static {}, Lcom/android/camera/CameraSettings;->retainCameraMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAvatarPanelState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mAvatarPanelState:I

    return-void
.end method

.method public setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->isApply()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    return-void
.end method

.method public setCurrentMimojiCloseState()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    const-string v0, "close_state"

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method public setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiItem:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    return-void
.end method

.method public setCurrentMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-void
.end method

.method public setCurrentMimojiTimbreInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    return-void
.end method

.method public setFuSdkLoadFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsFuSdkLoadFinish:Z

    return-void
.end method

.method public setIsAvatarInited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsAvatarInited:Z

    return-void
.end method

.method public declared-synchronized setIsLoading(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaterialDownloadState(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "material_download_state"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setMaterialVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "material_version"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setMimojiPanelState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mPanelState:I

    return-void
.end method

.method public setMimojiRecordState(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "mimoji_record_state"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setMimojiRecordStateFromGif(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "mimoji_record_state_from_gif"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public declared-synchronized setMode(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->mRenderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-void
.end method
