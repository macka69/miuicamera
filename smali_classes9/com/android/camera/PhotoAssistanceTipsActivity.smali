.class public Lcom/android/camera/PhotoAssistanceTipsActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "PhotoAssistanceTipsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragment()Lcom/android/camera/fragment/settings/BasePreferenceFragment;
    .locals 0

    new-instance p0, Lcom/android/camera/fragment/settings/PhotoAssistanceTipsFragment;

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/PhotoAssistanceTipsFragment;-><init>()V

    return-object p0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/fragment/settings/PhotoAssistanceTipsFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method
