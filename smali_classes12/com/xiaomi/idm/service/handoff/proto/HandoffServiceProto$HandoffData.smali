.class public final Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandoffData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final APPKEY_FIELD_NUMBER:I = 0x1

.field public static final DATALIST_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appKey_:Ljava/lang/String;

.field private dataList_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    const-class v1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->appKey_:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1800()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->clearAppKey()V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->setAppKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->setDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->setDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->addDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->addDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->addDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->addDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->addAllDataList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->clearDataList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->removeDataList(I)V

    return-void
.end method

.method private addAllDataList(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private addDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDataList(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private clearAppKey()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->appKey_:Ljava/lang/String;

    return-void
.end method

.method private clearDataList()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureDataListIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeDataList(I)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAppKey(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->appKey_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setAppKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->appKey_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDataList(ILcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->ensureDataListIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "appKey_"

    aput-object p3, p0, p2

    const-string p2, "dataList_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-class p2, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData$Builder;-><init>(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->appKey_:Ljava/lang/String;

    return-object p0
.end method

.method public getAppKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->appKey_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    return-object p0
.end method

.method public getDataListCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

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

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getDataListOrBuilder(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$DataOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$DataOrBuilder;

    return-object p0
.end method

.method public getDataListOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$DataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;->dataList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
