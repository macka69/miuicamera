.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->access$12400()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearServiceId()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->access$12800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)V

    return-object p0
.end method

.method public clearStatus()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->access$12600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)V

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getStatus()I

    move-result p0

    return p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->access$12700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->access$12900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStatus(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->access$12500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;I)V

    return-object p0
.end method
