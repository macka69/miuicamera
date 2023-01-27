.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->access$25600()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmAdvertisingResult()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->access$26000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;)V

    return-object p0
.end method

.method public getIdmAdvertisingResult()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->getIdmAdvertisingResult()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmAdvertisingResult()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->hasIdmAdvertisingResult()Z

    move-result p0

    return p0
.end method

.method public mergeIdmAdvertisingResult(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->access$25900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)V

    return-object p0
.end method

.method public setIdmAdvertisingResult(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->access$25800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;)V

    return-object p0
.end method

.method public setIdmAdvertisingResult(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->access$25700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)V

    return-object p0
.end method
