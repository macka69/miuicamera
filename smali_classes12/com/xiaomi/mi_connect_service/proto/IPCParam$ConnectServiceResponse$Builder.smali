.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$13900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmConnectServiceResponse()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;)V

    return-object p0
.end method

.method public getIdmConnectServiceResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->getIdmConnectServiceResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmConnectServiceResponse()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->hasIdmConnectServiceResponse()Z

    move-result p0

    return p0
.end method

.method public mergeIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V

    return-object p0
.end method

.method public setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;)V

    return-object p0
.end method

.method public setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V

    return-object p0
.end method
