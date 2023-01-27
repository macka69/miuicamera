.class public final Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TestServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->access$4000()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParam()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->access$4200(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;)V

    return-object p0
.end method

.method public clearParamStr()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->access$4400(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;)V

    return-object p0
.end method

.method public getParam()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->getParam()I

    move-result p0

    return p0
.end method

.method public getParamStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->getParamStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParamStrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->getParamStrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setParam(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->access$4100(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;I)V

    return-object p0
.end method

.method public setParamStr(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->access$4300(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParamStrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->access$4500(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
