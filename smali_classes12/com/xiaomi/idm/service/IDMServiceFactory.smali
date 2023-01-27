.class public Lcom/xiaomi/idm/service/IDMServiceFactory;
.super Ljava/lang/Object;
.source "IDMServiceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIDMService(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "urn:aiot-spec-v3:service:idm-test:00000001:1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/xiaomi/idm/service/iot/TestService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/TestService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_0

    :cond_1
    const-string v2, "urn:aiot-spec-v3:service:iot-local-control:00000001:1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_0

    :cond_2
    const-string v2, "urn:aiot-spec-v3:service:ip-camera:00000001:1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_0

    :cond_3
    const-string v2, "urn:aiot-spec-v3:service:handoff:00000001:1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_0

    :cond_4
    const-string v2, "urn:aiot-spec-v3:service:input:00000001:1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_0

    :cond_5
    const-string v2, "urn:aiot-spec-v3:service:light:00000001:1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/xiaomi/idm/service/iot/LightService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/LightService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_0

    :cond_6
    const-string v2, "urn:aiot-spec-v3:service:motionsensor:00000001:1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/xiaomi/idm/service/iot/MotionSensorService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/MotionSensorService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    :cond_7
    :goto_0
    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getSuperType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getSuperType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    :cond_8
    return-object v0
.end method
