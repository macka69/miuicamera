.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDMOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDMOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->access$11100()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmService()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->access$11500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;)V

    return-object p0
.end method

.method public getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmService()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->hasIdmService()Z

    move-result p0

    return p0
.end method

.method public mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->access$11400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->access$11300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->access$11200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method
