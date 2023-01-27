.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31400()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEid()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V

    return-object p0
.end method

.method public clearEnable()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$32100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V

    return-object p0
.end method

.method public clearServiceUuid()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V

    return-object p0
.end method

.method public getEid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getEid()I

    move-result p0

    return p0
.end method

.method public getEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getEnable()Z

    move-result p0

    return p0
.end method

.method public getServiceUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getServiceUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getServiceUuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setEid(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;I)V

    return-object p0
.end method

.method public setEnable(Z)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$32000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Z)V

    return-object p0
.end method

.method public setServiceUuid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
