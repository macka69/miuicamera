.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->access$24400()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmRequest()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->access$24800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;)V

    return-object p0
.end method

.method public getIdmRequest()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->getIdmRequest()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmRequest()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->hasIdmRequest()Z

    move-result p0

    return p0
.end method

.method public mergeIdmRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->access$24700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V

    return-object p0
.end method

.method public setIdmRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->access$24600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;)V

    return-object p0
.end method

.method public setIdmRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->access$24500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V

    return-object p0
.end method
