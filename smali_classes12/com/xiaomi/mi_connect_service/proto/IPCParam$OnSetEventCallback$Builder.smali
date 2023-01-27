.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallbackOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallbackOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->access$26200()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmEvent()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->access$26600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;)V

    return-object p0
.end method

.method public getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmEvent()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->hasIdmEvent()Z

    move-result p0

    return p0
.end method

.method public mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->access$26500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->access$26400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->access$26300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method
