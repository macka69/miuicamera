.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->access$33300()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKey()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->access$33500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;)V

    return-object p0
.end method

.method public clearValue()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->access$33800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->access$33400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->access$33600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->access$33700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
