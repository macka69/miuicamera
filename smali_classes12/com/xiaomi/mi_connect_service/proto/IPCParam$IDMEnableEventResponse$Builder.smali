.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;->access$32300()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSuccess()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;->access$32500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;)V

    return-object p0
.end method

.method public getSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;->getSuccess()Z

    move-result p0

    return p0
.end method

.method public setSuccess(Z)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;->access$32400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;Z)V

    return-object p0
.end method
