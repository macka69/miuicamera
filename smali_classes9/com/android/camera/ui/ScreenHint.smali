.class public Lcom/android/camera/ui/ScreenHint;
.super Ljava/lang/Object;
.source "ScreenHint.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenHint"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllowCta:Z

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J

.field private mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private synthetic lambda$showFirstUseHint$0()V
    .locals 2

    const-string v0, "ScreenHint"

    const-string v1, "onClick LocationAccess PositiveButton"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCTADialogAgree()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenHint;->recordFirstUse(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->updateCTAPreference(Z)V

    invoke-static {v0}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->setCanConnectNetwork(Z)V

    return-void
.end method

.method private synthetic lambda$showFirstUseHint$1()V
    .locals 2

    const-string v0, "ScreenHint"

    const-string v1, "onClick LocationAccess NegativeButton"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCTADialogDisagree()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportOnlyMimojiMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenHint;->recordFirstUse(Z)V

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->updateCTAPreference(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showFirstUseHint$2(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDismiss CtaAccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenHint"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportOnlyMimojiMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportOnlyMimojiMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x66

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static setLinkClickEvent(Landroid/widget/TextView;Landroid/app/Activity;)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    new-instance v8, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v8, v4, p1}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Landroid/text/style/URLSpan;Landroid/app/Activity;)V

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public cancelHint()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    :cond_0
    return-void
.end method

.method public dismissSystemChoiceDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public hideToast()V
    .locals 1

    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->getInstance()Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    :cond_0
    return-void
.end method

.method public isScreenHintVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/OnScreenHint;->getHintViewVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$showFirstUseHint$0$ScreenHint()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenHint;->lambda$showFirstUseHint$0()V

    return-void
.end method

.method public synthetic lambda$showFirstUseHint$1$ScreenHint()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenHint;->lambda$showFirstUseHint$1()V

    return-void
.end method

.method public synthetic lambda$showFirstUseHint$2$ScreenHint(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenHint;->lambda$showFirstUseHint$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public recordFirstUse(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "pref_camera_first_use_hint_shown_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "pref_camera_confirm_location_shown_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public showConfirmMessage(II)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const p1, 0x104000a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public showFirstUseHint(Ljava/lang/Runnable;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->dismissSystemChoiceDialog()V

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/mi/config/Device;->isSupportedGPS()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f110438

    new-instance v3, Lcom/android/camera/ui/-$$Lambda$ScreenHint$jzYMgDihsqZ6yhRSADw8Sj4tf6s;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/-$$Lambda$ScreenHint$jzYMgDihsqZ6yhRSADw8Sj4tf6s;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    const v4, 0x7f110907

    new-instance v5, Lcom/android/camera/ui/-$$Lambda$ScreenHint$EKGoeIJERFT3oepJI5KZNLFxyJU;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/-$$Lambda$ScreenHint$EKGoeIJERFT3oepJI5KZNLFxyJU;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    new-instance v6, Lcom/android/camera/ui/-$$Lambda$ScreenHint$eOd29qQ-72OmNlaLr1Lpbo9Oig4;

    invoke-direct {v6, p0, p1}, Lcom/android/camera/ui/-$$Lambda$ScreenHint$eOd29qQ-72OmNlaLr1Lpbo9Oig4;-><init>(Lcom/android/camera/ui/ScreenHint;Ljava/lang/Runnable;)V

    invoke-static/range {v1 .. v6}, Lcom/android/camera/RotateDialogController;->showCTADialog(Landroid/app/Activity;ILjava/lang/Runnable;ILjava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public showObjectTrackHint()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "pref_camera_first_tap_screen_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    const v0, 0x7f110545

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void
.end method

.method public updateHint()V
    .locals 6

    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->enableOutputRawInManualModule()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v1, 0x7f110541

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x2

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v1, 0x7f110812

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x3

    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v1, 0x7f11001b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-wide/32 v4, 0xc800000

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v1, 0x7f110873

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v1, 0x7f110872

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {p0}, Lcom/android/camera/OnScreenHint;->show()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    iput-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    :cond_8
    :goto_2
    return-void
.end method
