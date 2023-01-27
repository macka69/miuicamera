.class public Lcom/android/camera/SoundSettingActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "SoundSettingActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NoiseReductionActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragment()Lcom/android/camera/fragment/settings/BasePreferenceFragment;
    .locals 0

    new-instance p0, Lcom/android/camera/fragment/settings/SoundSettingFragment;

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/SoundSettingFragment;-><init>()V

    return-object p0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NoiseReductionFragment"

    return-object p0
.end method
