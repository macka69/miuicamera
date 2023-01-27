.class public Lcom/xiaomi/camera/rcs/RemoteControlExtension;
.super Ljava/lang/Object;
.source "RemoteControlExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/RemoteControlExtension$LayoutType;,
        Lcom/xiaomi/camera/rcs/RemoteControlExtension$RecordingState;
    }
.end annotation


# static fields
.field public static final CUSTOM_CALLBACK_VIDEO_CAST_STATE_CHANGED:Ljava/lang/String; = "com.xiaomi.camera.rcs.videoCastStateChanged"

.field public static final CUSTOM_REQUEST_SET_CAPTURING_MODE:Ljava/lang/String; = "com.xiaomi.camera.rcs.setCapturingMode"

.field public static final INVALID_REMOTE_DEVICE_ID:I = -0x1

.field public static final JSON_RPC_KEY_ID:Ljava/lang/String; = "id"

.field public static final JSON_RPC_KEY_METHOD:Ljava/lang/String; = "method"

.field public static final JSON_RPC_KEY_PARAMS:Ljava/lang/String; = "params"

.field public static final JSON_RPC_KEY_VERSION:Ljava/lang/String; = "version"

.field public static final JSON_RPC_METHOD_SET_LAYOUT_TYPE:Ljava/lang/String; = "set_layout_type"

.field public static final JSON_RPC_METHOD_SET_RECORDING_STATE:Ljava/lang/String; = "set_recording_state"

.field public static final LAYOUT_TYPE_PBP:I = 0x0

.field public static final LAYOUT_TYPE_PIP:I = 0x1

.field private static final PAYLOAD_KEY_IS_GROUP_OWNER:Ljava/lang/String; = "com.xiaomi.camera.rcs.isGroupOwner"

.field private static final PAYLOAD_KEY_LAYOUT_TYPE:Ljava/lang/String; = "com.xiaomi.camera.rcs.layoutType"

.field private static final PAYLOAD_KEY_RECORDING_STATE:Ljava/lang/String; = "com.xiaomi.camera.rcs.recordingState"

.field private static final PAYLOAD_KEY_REMOTE_DEVICE_ID:Ljava/lang/String; = "com.xiaomi.camera.rcs.deviceId"

.field public static final RECORDING_STATE_PAUSED:I = 0x2

.field public static final RECORDING_STATE_RECORDING:I = 0x1

.field public static final RECORDING_STATE_RESUME:I = 0x3

.field public static final RECORDING_STATE_STANDBY:I = 0x0

.field public static final RECORDING_STATE_STOP:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutType(Landroid/os/Bundle;I)I
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.layoutType"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLayoutType(Lorg/json/JSONObject;I)I
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "com.xiaomi.camera.rcs.layoutType"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRecordingState(Landroid/os/Bundle;I)I
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.recordingState"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRecordingState(Lorg/json/JSONObject;I)I
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "com.xiaomi.camera.rcs.recordingState"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRemoteDeviceId(Landroid/os/Bundle;I)I
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.deviceId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isErrorReply(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGroupOwner(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.xiaomi.camera.rcs.isGroupOwner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setIsGroupOwner(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.isGroupOwner"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setLayoutType(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.layoutType"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setRecordingState(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.recordingState"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setRemoteDeviceId(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.deviceId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
