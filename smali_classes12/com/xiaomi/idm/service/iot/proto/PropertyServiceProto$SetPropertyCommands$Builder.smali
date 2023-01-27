.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommandsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommandsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->access$1600()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->access$1800(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)V

    return-object p0
.end method

.method public clearPropertyMap()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->access$1900(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public containsPropertyMap(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getPropertyMapMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getAid()I

    move-result p0

    return p0
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->getPropertyMapMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyMapCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getPropertyMapMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getPropertyMapMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getPropertyMapMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getPropertyMapMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public getPropertyMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getPropertyMapMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public putAllPropertyMap(Ljava/util/Map;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->access$1900(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putPropertyMap(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->access$1900(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    throw v0

    :cond_1
    throw v0
.end method

.method public removePropertyMap(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->access$1900(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->access$1700(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;I)V

    return-object p0
.end method
