.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscoveryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscoveryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$11700()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllServiceTypes(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllServiceUuids(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addServiceTypes(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$11900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;Ljava/lang/String;)V

    return-object p0
.end method

.method public addServiceTypesBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addServiceUuids(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;Ljava/lang/String;)V

    return-object p0
.end method

.method public addServiceUuidsBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearDiscType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method

.method public clearServiceSecurityType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$13100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method

.method public clearServiceTypes()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method

.method public clearServiceUuids()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method

.method public getDiscType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getDiscType()I

    move-result p0

    return p0
.end method

.method public getServiceSecurityType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceSecurityType()I

    move-result p0

    return p0
.end method

.method public getServiceTypes(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceTypes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceTypesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTypesCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceTypesCount()I

    move-result p0

    return p0
.end method

.method public getServiceTypesList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceTypesList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuids(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceUuids(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceUuidsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuidsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceUuidsCount()I

    move-result p0

    return p0
.end method

.method public getServiceUuidsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->getServiceUuidsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setDiscType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;I)V

    return-object p0
.end method

.method public setServiceSecurityType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$13000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;I)V

    return-object p0
.end method

.method public setServiceTypes(ILjava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$11800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;ILjava/lang/String;)V

    return-object p0
.end method

.method public setServiceUuids(ILjava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->access$12300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;ILjava/lang/String;)V

    return-object p0
.end method
