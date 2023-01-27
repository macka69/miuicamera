.class public Lcom/idb/device/IotDeviceInfo;
.super Ljava/lang/Object;
.source "IotDeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IotDeviceInfo"


# instance fields
.field private bssid:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private isOnline:Z

.field private latitude:Ljava/lang/String;

.field private localip:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent_id:Ljava/lang/String;

.field private permitLevel:I

.field private pid:I

.field private rssi:I

.field private show_mode:I

.field private spec_type:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:J

.field private voice_ctrl:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildFromJson(Ljava/lang/String;)Lcom/idb/device/IotDeviceInfo;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idb/device/IotDeviceInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/idb/device/IotDeviceInfo;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IotDeviceInfo"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final buildFromJson(Lorg/json/JSONObject;)Lcom/idb/device/IotDeviceInfo;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/idb/device/IotDeviceInfo;

    invoke-direct {v0}, Lcom/idb/device/IotDeviceInfo;-><init>()V

    const-string v1, "did"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->did:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/idb/device/IotDeviceInfo;->uid:J

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->token:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->name:Ljava/lang/String;

    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->pid:I

    const-string v1, "localip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->localip:Ljava/lang/String;

    const-string v1, "mac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->mac:Ljava/lang/String;

    const-string/jumbo v1, "ssid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->ssid:Ljava/lang/String;

    const-string v1, "bssid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->bssid:Ljava/lang/String;

    const-string v1, "rssi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->rssi:I

    const-string v1, "longitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->longitude:Ljava/lang/String;

    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->latitude:Ljava/lang/String;

    const-string v1, "parent_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->parent_id:Ljava/lang/String;

    const-string/jumbo v1, "show_mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->show_mode:I

    const-string v1, "model"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->model:Ljava/lang/String;

    const-string v1, "permitLevel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->permitLevel:I

    const-string v1, "isOnline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/idb/device/IotDeviceInfo;->isOnline:Z

    const-string/jumbo v1, "spec_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->spec_type:Ljava/lang/String;

    const-string/jumbo v1, "voice_ctrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/idb/device/IotDeviceInfo;->voice_ctrl:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "IotDeviceInfo"

    const-string v1, "Error when create IotDeviceInfo"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public getDid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->did:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->localip:Ljava/lang/String;

    return-object p0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParent_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->parent_id:Ljava/lang/String;

    return-object p0
.end method

.method public getPermitLevel()I
    .locals 0

    iget p0, p0, Lcom/idb/device/IotDeviceInfo;->permitLevel:I

    return p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Lcom/idb/device/IotDeviceInfo;->pid:I

    return p0
.end method

.method public getRssi()I
    .locals 0

    iget p0, p0, Lcom/idb/device/IotDeviceInfo;->rssi:I

    return p0
.end method

.method public getShow_mode()I
    .locals 0

    iget p0, p0, Lcom/idb/device/IotDeviceInfo;->show_mode:I

    return p0
.end method

.method public getSpec_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->spec_type:Ljava/lang/String;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/IotDeviceInfo;->token:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/idb/device/IotDeviceInfo;->uid:J

    return-wide v0
.end method

.method public getVoice_ctrl()I
    .locals 0

    iget p0, p0, Lcom/idb/device/IotDeviceInfo;->voice_ctrl:I

    return p0
.end method

.method public isOnline()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idb/device/IotDeviceInfo;->isOnline:Z

    return p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "did"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->did:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "uid"

    iget-wide v2, p0, Lcom/idb/device/IotDeviceInfo;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->token:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "pid"

    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "localip"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->localip:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mac"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->mac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "ssid"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->ssid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bssid"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->bssid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "rssi"

    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "longitude"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->longitude:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "latitude"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->latitude:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "parent_id"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->parent_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "show_mode"

    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->show_mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "model"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->model:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "permitLevel"

    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->permitLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isOnline"

    iget-boolean v2, p0, Lcom/idb/device/IotDeviceInfo;->isOnline:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "spec_type"

    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->spec_type:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "voice_ctrl"

    iget p0, p0, Lcom/idb/device/IotDeviceInfo;->voice_ctrl:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "IotDeviceInfo"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/idb/device/IotDeviceInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
