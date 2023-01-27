.class public final Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCameraServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;",
        "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1000()Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1200(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;)V

    return-object p0
.end method

.method public clearMessage()Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1400(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;)V

    return-object p0
.end method

.method public clearResponse()Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1700(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;)V

    return-object p0
.end method

.method public getCode()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->getCode()I

    move-result p0

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->getResponse()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponseBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->getResponseBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setCode(I)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1100(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1300(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1500(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1600(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResponseBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->access$1800(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
