.class public Landroid/provider/MiuiSettings;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$Privacy;,
        Landroid/provider/MiuiSettings$ScreenEffect;,
        Landroid/provider/MiuiSettings$Key;,
        Landroid/provider/MiuiSettings$ForceTouch;,
        Landroid/provider/MiuiSettings$Ad;,
        Landroid/provider/MiuiSettings$SettingsCloudData;,
        Landroid/provider/MiuiSettings$FrequentPhrases;,
        Landroid/provider/MiuiSettings$MiuiVoip;,
        Landroid/provider/MiuiSettings$VirtualSim;,
        Landroid/provider/MiuiSettings$Telephony;,
        Landroid/provider/MiuiSettings$AntiVirus;,
        Landroid/provider/MiuiSettings$XSpace;,
        Landroid/provider/MiuiSettings$AntiSpam;,
        Landroid/provider/MiuiSettings$SilenceMode;,
        Landroid/provider/MiuiSettings$SoundMode;,
        Landroid/provider/MiuiSettings$Global;,
        Landroid/provider/MiuiSettings$Secure;,
        Landroid/provider/MiuiSettings$System;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_LIST:Ljava/lang/String; = "android.settings.ACCOUNT_LIST"

.field public static APP_LOCK_USE_FACE_UNLOCK_STATE:Ljava/lang/String; = null

.field public static APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String; = null

.field public static final CROSS_PROFILE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISCOVER_AUTO_UPDATE_ENABLED:Ljava/lang/String; = "com.xiaomi.discover.auto_update_enabled"

.field private static final DISCOVER_METERED_SYSTEM_UPDATE_CONFIRM_NEEDED_BY_REGION:Ljava/lang/String; = "com.xiaomi.discover.metered_system_update_confirm_needed_by_region"

.field private static final DISCOVER_METERED_UPDATE_ANSWERED:Ljava/lang/String; = "com.xiaomi.discover.metered_update_answered"

.field private static final DISCOVER_METERED_UPDATE_CONFIRM_NEEDED_BY_REGION:Ljava/lang/String; = "com.xiaomi.discover.metered_update_confirm_needed_by_region"

.field private static final DOWNLOADMANAGER_DEBUG_DP_PATH:Ljava/lang/String; = "debug_dp_path"

.field private static final DOWNLOADMANAGER_DEBUG_SWITCH:Ljava/lang/String; = "debug_switch"

.field private static final DOWNLOADMANAGER_XUNLEI_USAGE_PERMISSION:Ljava/lang/String; = "xunlei_usage_permission"

.field private static final DOWNLOADMANAGER_XUNLEI_VIP_TOKEN:Ljava/lang/String; = "vip_token"

.field private static final DOWNLOADMANAGER__XUNLEI_TOKEN:Ljava/lang/String; = "xunlei_token"

.field private static final IS_JP_KDDI:Z

.field private static final IS_MEXICO_TELCEL:Z

.field private static final LAST_SYNC_TIME_ANTISPAM:Ljava/lang/String; = "setting_last_time_alert_antispam"

.field private static final LAST_SYNC_TIME_BROWSER:Ljava/lang/String; = "setting_last_time_alert_com.miui.browser"

.field private static final LAST_SYNC_TIME_CALENDER:Ljava/lang/String; = "setting_last_time_alert_com.android.calendar"

.field private static final LAST_SYNC_TIME_CALL_LOG:Ljava/lang/String; = "setting_last_time_alert_call_log"

.field private static final LAST_SYNC_TIME_CONTACT:Ljava/lang/String; = "setting_last_time_alert_com.android.contacts"

.field private static final LAST_SYNC_TIME_GALLERY:Ljava/lang/String; = "setting_last_time_alert_com.miui.gallery.cloud.provider"

.field private static final LAST_SYNC_TIME_MUSIC:Ljava/lang/String; = "setting_last_time_alert_com.miui.player"

.field private static final LAST_SYNC_TIME_NOTES:Ljava/lang/String; = "setting_last_time_alert_notes"

.field private static final LAST_SYNC_TIME_RECORDER:Ljava/lang/String; = "setting_last_time_alert_records"

.field private static final LAST_SYNC_TIME_SMS:Ljava/lang/String; = "setting_last_time_alert_sms"

.field private static final LAST_SYNC_TIME_WIFI:Ljava/lang/String; = "setting_last_time_alert_wifi"

.field private static final MARKET_CHOOSER_RECOMMENDED_ENABLE:Ljava/lang/String; = "com.xiaomi.market.enable_app_chooser_recommend"

.field private static final MARKET_ENABLE_SHARE_PROGRESS_STATUS:Ljava/lang/String; = "com.xiaomi.market.enable_share_progress_status"

.field private static final MARKET_ENABLE_SHARE_PROGRESS_STATUS_INTERNATIONAL:Ljava/lang/String; = "com.xiaomi.discover.enable_share_progress_status"

.field private static final MIAPPS_HOME_USER_GUIDE_SHOWN_CONTROL:Ljava/lang/String; = "com.xiaomi.mipicks.need_show_user_guide_status"

.field private static final MICLOUD_GDPR_PERMISSION_GRANTED:Ljava/lang/String; = "micloud_gdpr_permission_granted"

.field private static final MICLOUD_NETWORK_AVAILABILITY_KEY:Ljava/lang/String; = "micloud_network_availability"

.field private static final MIPICKS_ENABLE_SHARE_PROGRESS_STATUS:Ljava/lang/String; = "com.xiaomi.mipicks.enable_share_progress_status"

.field private static final MIUI_HOME_ENABLE_SHARE_PROGRESS_STATUS:Ljava/lang/String; = "com.miui.home.enable_share_progress_status"

.field private static final OPEN_PDC_HOST_KEY:Ljava/lang/String; = "com.xiaomi.opensdk.pdc.host"

.field public static final PC_MODE_OPEN:Ljava/lang/String; = "pc_mode_open"

.field public static final PC_MODE_OPEN_CONFIRM:Ljava/lang/String; = "pc_mode_dialog_show"

.field private static final PREF_KEY_WALLPAPER_SCREEN_SPAN:Ljava/lang/String; = "pref_key_wallpaper_screen_span"

.field public static final PRIVACY_PASSWORD_BIND_XIAOMI_ACCOUNT:Ljava/lang/String; = "privacy_password_bind_xiaomi_account"

.field public static final PRIVACY_PASSWORD_FINGERPRINT_AUTHENTICATION_NUM:Ljava/lang/String; = "privacy_password_finger_authentication_num"

.field private static final SCREEN_RECORDER_SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field private static final SETTING_MICLOUD_ACCOUNTNAME:Ljava/lang/String; = "micloud_accountname"

.field private static final SETTING_MICLOUD_ACCOUNTNAME_V2:Ljava/lang/String; = "micloud_accountname_v2"

.field private static final SETTING_MICLOUD_HOSTS:Ljava/lang/String; = "micloud_hosts"

.field private static final SETTING_MICLOUD_HOSTS_V2:Ljava/lang/String; = "micloud_hosts_v2"

.field private static final SETTING_MICLOUD_UPDATEHOSTS_THIRD_PARTY:Ljava/lang/String; = "micloud_updatehosts_third_party"

.field public static final SETTING_UPDATABLE_SYSTEM_APP_COUNT:Ljava/lang/String; = "updatable_system_app_count"

.field private static final SYNC_SETTING_ANTISPAM_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-antispam-0"

.field private static final SYNC_SETTING_ANTISPAM_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-antispam-1"

.field private static final SYNC_SETTING_BROWSER_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.miui.browser-0"

.field private static final SYNC_SETTING_BROWSER_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.miui.browser-1"

.field private static final SYNC_SETTING_CALENDER_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.android.calendar-0"

.field private static final SYNC_SETTING_CALENDER_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.android.calendar-1"

.field private static final SYNC_SETTING_CALL_LOG_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-call_log-0"

.field private static final SYNC_SETTING_CALL_LOG_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-call_log-1"

.field private static final SYNC_SETTING_CONTACT_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.android.contacts-0"

.field private static final SYNC_SETTING_CONTACT_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.android.contacts-1"

.field private static final SYNC_SETTING_GALLERY_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.miui.gallery.cloud.provider-0"

.field private static final SYNC_SETTING_GALLERY_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.miui.gallery.cloud.provider-1"

.field private static final SYNC_SETTING_MUSIC_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.miui.player-0"

.field private static final SYNC_SETTING_MUSIC_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-com.miui.player-1"

.field private static final SYNC_SETTING_NOTES_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-notes-0"

.field private static final SYNC_SETTING_NOTES_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-notes-1"

.field private static final SYNC_SETTING_RECORDER_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-records-0"

.field private static final SYNC_SETTING_RECORDER_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-records-1"

.field private static final SYNC_SETTING_SMS_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-sms-0"

.field private static final SYNC_SETTING_SMS_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-sms-1"

.field private static final SYNC_SETTING_WIFI_0:Ljava/lang/String; = "sync_for_sim_com.xiaomi-wifi-0"

.field private static final SYNC_SETTING_WIFI_1:Ljava/lang/String; = "sync_for_sim_com.xiaomi-wifi-1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com_miui_applicatinlock_use_fingerprint_state"

    sput-object v0, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    const-string v0, "com_miui_applicatinlock_use_face_unlock_state"

    sput-object v0, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FACE_UNLOCK_STATE:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ringtone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "notification_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    const-string v1, "alarm_alert"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "user_rotation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    const-string v1, "accelerometer_rotation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/MiuiSettings;->CROSS_PROFILE_SETTINGS:Ljava/util/Set;

    const-string v1, "frequent_phrases"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    const-string/jumbo v0, "ro.miui.customized.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mx_telcel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/provider/MiuiSettings;->IS_MEXICO_TELCEL:Z

    nop

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MiuiSettings;->IS_JP_KDDI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 6

    const-string/jumbo v0, "ui_mode_scale"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xf

    and-int/2addr v0, v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1

    const/16 v5, 0xe

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    sget-boolean v5, Landroid/provider/MiuiSettings;->IS_MEXICO_TELCEL:Z

    if-nez v5, :cond_2

    sget-boolean v5, Landroid/provider/MiuiSettings;->IS_JP_KDDI:Z

    if-eqz v5, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    move v2, v1

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->getFontScale(I)F

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    :cond_5
    invoke-static {}, Landroid/pc/MiuiPcManager;->getInstance()Landroid/pc/MiuiPcManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/pc/MiuiPcManager;->supportPcModeForUser(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/pc/MiuiPcManager;->getInstance()Landroid/pc/MiuiPcManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/pc/MiuiPcManager;->isOnPcModeForUser(I)Z

    move-result v1

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_6

    const/16 v4, 0x2000

    goto :goto_3

    :cond_6
    const/16 v4, 0x1000

    :goto_3
    or-int/2addr v3, v4

    iput v3, p1, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_7

    const/16 v4, -0x1001

    goto :goto_4

    :cond_7
    const/16 v4, -0x2001

    :goto_4
    and-int/2addr v3, v4

    iput v3, p1, Landroid/content/res/Configuration;->uiMode:I

    :cond_8
    return-void
.end method
