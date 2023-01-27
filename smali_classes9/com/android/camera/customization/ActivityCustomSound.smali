.class public Lcom/android/camera/customization/ActivityCustomSound;
.super Lcom/android/camera/BasePreferenceActivity;
.source "ActivityCustomSound.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragment()Lcom/android/camera/fragment/settings/BasePreferenceFragment;
    .locals 0

    new-instance p0, Lcom/android/camera/customization/FragmentCustomSound;

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomSound;-><init>()V

    return-object p0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentCustomSound"

    return-object p0
.end method
