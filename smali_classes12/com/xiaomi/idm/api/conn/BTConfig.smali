.class public Lcom/xiaomi/idm/api/conn/BTConfig;
.super Lcom/xiaomi/idm/api/conn/ConnConfig;
.source "BTConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTConfig"


# instance fields
.field private rssi:I

.field private staticBTAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/conn/ConnConfig;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;)Lcom/xiaomi/idm/api/conn/BTConfig;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/BTConfig;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/BTConfig;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->getStaticBTAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/BTConfig;->staticBTAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->getRssi()I

    move-result p0

    iput p0, v0, Lcom/xiaomi/idm/api/conn/BTConfig;->rssi:I

    return-object v0
.end method

.method public static buildFromProto([B)Lcom/xiaomi/idm/api/conn/BTConfig;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTConfig"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/conn/BTConfig;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;)Lcom/xiaomi/idm/api/conn/BTConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic toProto()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/conn/BTConfig;->toProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    move-result-object p0

    return-object p0
.end method

.method public toProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;
    .locals 2

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/idm/api/conn/BTConfig;->rssi:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->setRssi(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/BTConfig;->staticBTAddress:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->setStaticBTAddress(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    return-object p0
.end method
