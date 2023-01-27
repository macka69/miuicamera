.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20200()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBleAddress()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;)V

    return-object p0
.end method

.method public clearBleRole()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;)V

    return-object p0
.end method

.method public clearRssi()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;)V

    return-object p0
.end method

.method public getBleAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->getBleAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBleAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->getBleAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getBleRole()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->getBleRole()I

    move-result p0

    return p0
.end method

.method public getRssi()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->getRssi()I

    move-result p0

    return p0
.end method

.method public setBleAddress(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBleAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBleRole(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;I)V

    return-object p0
.end method

.method public setRssi(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;->access$20800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BLEConfig;I)V

    return-object p0
.end method
