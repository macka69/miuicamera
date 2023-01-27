.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectServiceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->access$7400()Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConnLevel()Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->access$7900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;)V

    return-object p0
.end method

.method public clearServiceId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->access$7600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;)V

    return-object p0
.end method

.method public getConnLevel()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->getConnLevel()I

    move-result p0

    return p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->getServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->getServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setConnLevel(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->access$7800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;I)V

    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->access$7500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->access$7700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
