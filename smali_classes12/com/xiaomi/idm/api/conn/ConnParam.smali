.class public Lcom/xiaomi/idm/api/conn/ConnParam;
.super Ljava/lang/Object;
.source "ConnParam.java"


# static fields
.field public static final BLE_GATT:I = 0x10

.field public static final BT_GATT:I = 0x8

.field public static final BT_RFCOMM:I = 0x4

.field public static final COAP:I = 0x20

.field public static final CONNTYPE_WIFI_P2P_GC:I = 0x1

.field public static final CONNTYPE_WIFI_P2P_GO:I = 0x0

.field public static final CONNTYPE_WIFI_SOFTAP:I = 0x2

.field public static final CONNTYPE_WIFI_STATION:I = 0x3

.field public static final IDB:I = 0x80

.field public static final NFC:I = 0x40

.field private static final TAG:Ljava/lang/String; = "ConnParam"

.field public static final WLAN_GC_SOFTAP:I = 0x400

.field public static final WLAN_P2P:I = 0x100

.field public static final WLAN_SOFTAP:I = 0x200


# instance fields
.field private config:Lcom/xiaomi/idm/api/conn/ConnConfig;

.field private connLevel:I

.field private connType:I

.field private errCode:I

.field private errMsg:Ljava/lang/String;

.field private idHash:Ljava/lang/String;

.field private privateData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/ConnParam;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnTypeValue()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrCode()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getIdHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnLevel()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getPrivateData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnTypeValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_3

    const/16 v2, 0x400

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/idm/api/conn/BLEConfig;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/BLEConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ConnType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnTypeValue()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConnParam"

    invoke-static {v2, p0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/idm/api/conn/BTConfig;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/BTConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/idm/api/conn/WifiConfig;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/WifiConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    :goto_1
    return-object v0
.end method

.method public static buildFromProto([B)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnParam"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p0

    return-object p0
.end method

.method public static buildFromQRCodeProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/idm/api/conn/ConnParam;

    invoke-direct {v1}, Lcom/xiaomi/idm/api/conn/ConnParam;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getConnType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getConnType()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    if-ne v4, v5, :cond_3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "ConnParam"

    const-string v2, "Illegal connType!"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_3
    invoke-virtual {v1, v4}, Lcom/xiaomi/idm/api/conn/ConnParam;->setConnType(I)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getIdHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->setIdHash(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/idm/api/conn/WifiConfig;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/WifiConfig;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getSsid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getPwd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getChannel()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getMacAddr()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->setConfig(Lcom/xiaomi/idm/api/conn/ConnConfig;)V

    return-object v1
.end method

.method public static buildFromQRCodeProto(Ljava/lang/String;)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QR Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "ConnParam"

    invoke-static {v3, p0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromQRCodeProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/xiaomi/idm/api/conn/ConnConfig;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    return-object p0
.end method

.method public getConnLevel()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    return p0
.end method

.method public getConnType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    return p0
.end method

.method public getErrCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    return p0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    return-object p0
.end method

.method public getPrivateData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    return-object p0
.end method

.method public setConfig(Lcom/xiaomi/idm/api/conn/ConnConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    return-void
.end method

.method public setConnLevel(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    return-void
.end method

.method public setConnType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    return-void
.end method

.method public setIdHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    return-void
.end method

.method public setPrivateData([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    return-void
.end method

.method public toProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 4

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x200

    if-eq v1, v2, :cond_1

    const/16 v2, 0x400

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConnParam"

    const-string v3, "ConnType is unKnown"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/conn/ConnConfig;->toProto()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConfig(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    :cond_a
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setPrivateData(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    :cond_b
    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setErrCode(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setIdHash(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    :cond_c
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setErrMsg(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    :cond_d
    iget p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnLevel(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnParam{connType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", idHash = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", connLevel = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", config = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", privateData = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
