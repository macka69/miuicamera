.class public Lcom/android/camera/SmartGuideSettingActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "SmartGuideSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/SmartGuideSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/SmartGuideSettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method private getKeyguardFlag()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createFragment()Lcom/android/camera/fragment/settings/BasePreferenceFragment;
    .locals 0

    new-instance p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;

    invoke-direct {p0}, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;-><init>()V

    return-object p0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/SmartGuideSettingActivity$SmartGuideFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method
