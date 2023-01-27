.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;->access$23200()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStatus()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;->access$23400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;)V

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;->getStatus()I

    move-result p0

    return p0
.end method

.method public setStatus(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;->access$23300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;I)V

    return-object p0
.end method
