.class public final Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IotLocalControlServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetTokenOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$9600()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$9800(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$10000(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$10300(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$9700(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$9900(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$10100(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$10200(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;->access$10400(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$SetToken;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
