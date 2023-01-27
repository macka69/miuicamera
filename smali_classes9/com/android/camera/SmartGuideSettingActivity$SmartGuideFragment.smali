.class public Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "SmartGuideSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SmartGuideSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartGuideFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

.field protected mIsFrontCamera:Z

.field protected mPreferenceGroup:Landroidx/preference/PreferenceScreen;

.field private mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;-><init>(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)V

    iput-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    return-object p0
.end method

.method private filterByDeviceID()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mIsFrontCamera:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getScanQrcodeSettingNeedRemove(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_camera_ai_detect_doc"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportIDCardMode()Z

    move-result v0

    const-string v1, "pref_camera_ai_detect_id_card"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/mi/config/Device;->IS_F1:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/mi/config/Device;->IS_F11:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/mi/config/Device;->IS_F1X_OR_F1U:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private initializeActivity()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->getPreferenceXml()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->TAG:Ljava/lang/String;

    const-string v1, "fail to init PreferenceGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->filterByFrom()V

    invoke-direct {p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->filterByDeviceID()V

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private installQRCodeReceiver()V
    .locals 1

    new-instance v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$2;-><init>(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic lambda$-xtmACJmHUFyfNjoNa8oCqhqKmQ(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->installQRCodeReceiver()V

    return-void
.end method

.method static synthetic lambda$onPreferenceClick$0()V
    .locals 2

    sget-object v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->TAG:Ljava/lang/String;

    const-string v1, "installQRCodeReceiver onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateQRCodeEntry()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_scan_qrcode_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->TAG:Ljava/lang/String;

    const-string v3, "disable QRCodeScan"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected filterByFrom()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mIsFrontCamera:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isNearRangeUiNeedRemove(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_camera_near_range_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mIsFrontCamera:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAiTipNeedRemove(IZ)Z

    move-result v0

    const-string v1, "pref_camera_ai_detect_id_card"

    const-string v2, "pref_camera_ai_detect_doc"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removeFromGroup(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected getPreferenceXml()I
    .locals 0

    const p0, 0x7f140007

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "StartActivityWhenLocked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mIsFrontCamera:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_where"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-direct {p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->initializeActivity()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":miui:starting_window_label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const p1, 0x7f1107bc

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 10

    sget-object v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick() called with: preference = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x609904ec

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_scan_qrcode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const p1, 0x7f1102c0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f1102bf

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f1103ee

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/-$$Lambda$SmartGuideSettingActivity$SmartGuideFragment$-xtmACJmHUFyfNjoNa8oCqhqKmQ;

    invoke-direct {v5, p0}, Lcom/android/camera/-$$Lambda$SmartGuideSettingActivity$SmartGuideFragment$-xtmACJmHUFyfNjoNa8oCqhqKmQ;-><init>(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 p1, 0x1040000

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/camera/-$$Lambda$SmartGuideSettingActivity$SmartGuideFragment$y4lTd8PQcziD2OmLglmxE3OvKrE;->INSTANCE:Lcom/android/camera/-$$Lambda$SmartGuideSettingActivity$SmartGuideFragment$y4lTd8PQcziD2OmLglmxE3OvKrE;

    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$1;-><init>(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public onRestart()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->updateQRCodeEntry()V

    return-void
.end method

.method protected updateConflictPreference(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method
