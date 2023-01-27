.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->access$900()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->access$1100(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;)V

    return-object p0
.end method

.method public clearParamJson()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->access$1300(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->getAid()I

    move-result p0

    return p0
.end method

.method public getParamJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->getParamJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParamJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->getParamJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->access$1000(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;I)V

    return-object p0
.end method

.method public setParamJson(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->access$1200(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParamJsonBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->access$1400(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
