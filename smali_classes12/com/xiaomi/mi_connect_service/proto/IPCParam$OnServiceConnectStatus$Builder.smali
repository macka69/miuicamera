.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatusOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$20400()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConnParam()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;)V

    return-object p0
.end method

.method public clearEndpoint()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;)V

    return-object p0
.end method

.method public clearServiceId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$20800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;)V

    return-object p0
.end method

.method public clearStatus()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$20600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;)V

    return-object p0
.end method

.method public getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object p0

    return-object p0
.end method

.method public getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object p0

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getStatus()I

    move-result p0

    return p0
.end method

.method public hasConnParam()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->hasConnParam()Z

    move-result p0

    return p0
.end method

.method public hasEndpoint()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->hasEndpoint()Z

    move-result p0

    return p0
.end method

.method public mergeConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public mergeEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public setConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;)V

    return-object p0
.end method

.method public setConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public setEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;)V

    return-object p0
.end method

.method public setEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$21000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$20700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$20900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStatus(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->access$20500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;I)V

    return-object p0
.end method
