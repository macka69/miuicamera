.class public Landroid/provider/MiuiSettings$Global;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final CAN_NAV_BAR_HIDE:Ljava/lang/String; = "can_nav_bar_hide"

.field public static final ENABLE_PRINT:Ljava/lang/String; = "enable_print"

.field public static final FIVEG_ENABLED:Ljava/lang/String; = "fiveg_user_enable"

.field public static final FIVEG_HOSTED_MODE_ENABLED:Ljava/lang/String; = "fiveg_hosted_mode_user_enable"

.field public static final FIVEG_NETWORK_MODE:Ljava/lang/String; = "fiveg_network_mode"

.field public static final FIVEG_SPEED_WHITE_LIST_PKG_NAME:Ljava/lang/String; = "fiveg_speed_white_list_pkg_name"

.field public static final FORCE_FSG_NAV_BAR:Ljava/lang/String; = "force_fsg_nav_bar"

.field public static final FORCE_IMMERSIVE_NAV_BAR:Ljava/lang/String; = "force_immersive_nav_bar"

.field public static final HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field public static final HIDE_NAV_BAR:Ljava/lang/String; = "hide_nav_bar"

.field public static final MOBILE_TC_ENABLED:Ljava/lang/String; = "mobile_tc_user_enable"

.field public static final MOBILE_TC_ENABLED_LIST_PKG_NAME:Ljava/lang/String; = "mobile_tc_enabled_list_pkg_name"

.field public static final MOBILE_TC_WHITE_LIST_PKG_NAME:Ljava/lang/String; = "mobile_tc_white_list_pkg_name"

.field public static final OPEN_PRIVACY_CONTACT_IN_SECOND_SPACE:Ljava/lang/String; = "open_privacy_contact_in_second_space"

.field public static final OPEN_SECOND_SPACE_STATUS_ICON:Ljava/lang/String; = "open_second_space_status_icon"

.field public static final POLICY_CONTROL_DEFAULT:Ljava/lang/String; = "immersive.preconfirms=*"

.field public static final POLICY_CONTROL_IMMERSIVE_NAV_BAR:Ljava/lang/String; = "immersive.navigation=*:immersive.preconfirms=*"

.field public static final SHOW_ASSISTANT_BUTTON:Ljava/lang/String; = "show_assistant_button"

.field public static final SHOW_GESTURE_APPSWITCH_FEATURE:Ljava/lang/String; = "show_gesture_appswitch_feature"

.field public static final SHOW_GESTURE_BACK_ANIMATION:Ljava/lang/String; = "show_gesture_back_animation"

.field public static final SUPPORT_KNOCK:Ljava/lang/String; = "support_knock"

.field public static final WIFI_CALL_AVAILABLE_DIALOG_SHOWED:Ljava/lang/String; = "wifi_call_available_dialog_showed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeOpenSecondSpaceStatusIcon(Landroid/content/ContentResolver;Z)Z
    .locals 1

    const-string/jumbo v0, "open_second_space_status_icon"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static changePrivacyContactMode(Landroid/content/ContentResolver;Z)Z
    .locals 1

    const-string/jumbo v0, "open_privacy_contact_in_second_space"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOpenSecondSpaceStatusIcon(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string/jumbo v0, "open_second_space_status_icon"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isOpenedPrivacyContactMode(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string/jumbo v0, "open_privacy_contact_in_second_space"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
