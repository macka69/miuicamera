.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$27900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClientId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;)V

    return-object p0
.end method

.method public clearServiceFilter()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;)V

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getClientId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceFilter()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getServiceFilter()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    move-result-object p0

    return-object p0
.end method

.method public hasServiceFilter()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->hasServiceFilter()Z

    move-result p0

    return p0
.end method

.method public mergeServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;)V

    return-object p0
.end method

.method public setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method
