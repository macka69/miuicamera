.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->access$19500()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRssi()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->access$20000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;)V

    return-object p0
.end method

.method public clearStaticBTAddress()Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->access$19700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;)V

    return-object p0
.end method

.method public getRssi()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->getRssi()I

    move-result p0

    return p0
.end method

.method public getStaticBTAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->getStaticBTAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStaticBTAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->getStaticBTAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setRssi(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->access$19900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;I)V

    return-object p0
.end method

.method public setStaticBTAddress(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->access$19600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStaticBTAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;->access$19800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$BTConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
