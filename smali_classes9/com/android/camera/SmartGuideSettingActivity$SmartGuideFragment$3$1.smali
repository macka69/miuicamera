.class Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3$1;
.super Ljava/lang/Object;
.source "SmartGuideSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;->onPackageInstalled(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;

.field final synthetic val$scanQRCode:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3$1;->this$1:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;

    iput-object p2, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3$1;->val$scanQRCode:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3$1;->val$scanQRCode:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3$1;->this$1:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;

    iget-object v0, v0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3;->this$0:Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    iget-object p0, p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment$3$1;->val$scanQRCode:Landroidx/preference/CheckBoxPreference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method
