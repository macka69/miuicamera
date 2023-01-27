.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$5800()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCommDataType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V

    return-object p0
.end method

.method public clearCommType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V

    return-object p0
.end method

.method public clearConnLevel()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V

    return-object p0
.end method

.method public clearIdmService()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V

    return-object p0
.end method

.method public clearPrivateData()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$7200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V

    return-object p0
.end method

.method public clearVerifySameAccount()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$7000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V

    return-object p0
.end method

.method public getCommDataType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getCommDataType()I

    move-result p0

    return p0
.end method

.method public getCommType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getCommType()I

    move-result p0

    return p0
.end method

.method public getConnLevel()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getConnLevel()I

    move-result p0

    return p0
.end method

.method public getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateData()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getPrivateData()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getVerifySameAccount()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getVerifySameAccount()Z

    move-result p0

    return p0
.end method

.method public hasIdmService()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->hasIdmService()Z

    move-result p0

    return p0
.end method

.method public mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setCommDataType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;I)V

    return-object p0
.end method

.method public setCommType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;I)V

    return-object p0
.end method

.method public setConnLevel(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;I)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$5900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setPrivateData(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$7100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVerifySameAccount(Z)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->access$6900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Z)V

    return-object p0
.end method
