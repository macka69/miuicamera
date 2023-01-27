.class Lcom/android/camera/fragment/settings/WatermarkFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "WatermarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/settings/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "WatermarkFragment"

    const-string p2, "mUserPresentReceiver, onReceive."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$000(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method
