.class public final Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$400()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllHandoffDataList(Ljava/lang/Iterable;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;)",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$1400(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$1300(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V

    return-object p0
.end method

.method public addHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$1100(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-object p0
.end method

.method public addHandoffDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$1200(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V

    return-object p0
.end method

.method public addHandoffDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$1000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-object p0
.end method

.method public clearHandoffDataList()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$1500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;)V

    return-object p0
.end method

.method public clearIdHash()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;)V

    return-object p0
.end method

.method public getHandoffDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getHandoffDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    move-result-object p0

    return-object p0
.end method

.method public getHandoffDataListCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getHandoffDataListCount()I

    move-result p0

    return p0
.end method

.method public getHandoffDataListList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getHandoffDataListList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getIdHash()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->getIdHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public removeHandoffDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$1600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;I)V

    return-object p0
.end method

.method public setHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;)V

    return-object p0
.end method

.method public setHandoffDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$800(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V

    return-object p0
.end method

.method public setIdHash(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdHashBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;->access$700(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
