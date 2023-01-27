.class public final Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$1800()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDataList(Ljava/lang/Iterable;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;",
            ">;)",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2800(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2700(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V

    return-object p0
.end method

.method public addDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-object p0
.end method

.method public addDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V

    return-object p0
.end method

.method public addDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2400(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-object p0
.end method

.method public clearAppKey()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-object p0
.end method

.method public clearDataList()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-object p0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getAppKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getAppKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    move-result-object p0

    return-object p0
.end method

.method public getDataListCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getDataListCount()I

    move-result p0

    return p0
.end method

.method public getDataListList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getDataListList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$3000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;I)V

    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$1900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2100(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2300(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V

    return-object p0
.end method

.method public setDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->access$2200(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-object p0
.end method
