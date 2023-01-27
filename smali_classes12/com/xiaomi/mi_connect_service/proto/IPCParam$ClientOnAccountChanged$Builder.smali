.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChangedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChangedOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->access$23600()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNewIdHash()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->access$23800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;)V

    return-object p0
.end method

.method public clearSubChangeType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->access$24200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;)V

    return-object p0
.end method

.method public getNewIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->getNewIdHash()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNewIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->getNewIdHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;

    move-result-object p0

    return-object p0
.end method

.method public getSubChangeTypeValue()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->getSubChangeTypeValue()I

    move-result p0

    return p0
.end method

.method public setNewIdHash(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->access$23700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNewIdHashBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->access$23900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSubChangeType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->access$24100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;)V

    return-object p0
.end method

.method public setSubChangeTypeValue(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->access$24000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;I)V

    return-object p0
.end method
