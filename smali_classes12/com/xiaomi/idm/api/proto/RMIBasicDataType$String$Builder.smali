.class public final Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RMIBasicDataType.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/RMIBasicDataType$StringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$StringOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;->access$1600()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearV()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;->access$1800(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;)V

    return-object p0
.end method

.method public getV()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;->getV()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;->getVBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setV(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;->access$1700(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;->access$1900(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$String;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
