.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$28800()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllService(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
            ">;)",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public addService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public addService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public addService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public clearClientId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;)V

    return-object p0
.end method

.method public clearService()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;)V

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getClientId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getService(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getService(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p0

    return-object p0
.end method

.method public getServiceCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getServiceCount()I

    move-result p0

    return p0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getServiceList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeService(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$30000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;I)V

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$28900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method
