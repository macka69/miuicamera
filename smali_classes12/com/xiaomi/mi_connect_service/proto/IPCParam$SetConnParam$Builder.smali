.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParamOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->access$2600()Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConnParam()Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->access$3000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;)V

    return-object p0
.end method

.method public getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object p0

    return-object p0
.end method

.method public hasConnParam()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->hasConnParam()Z

    move-result p0

    return p0
.end method

.method public mergeConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->access$2900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public setConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->access$2800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;)V

    return-object p0
.end method

.method public setConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->access$2700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method
