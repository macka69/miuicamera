.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;,
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParamOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFIG_FIELD_NUMBER:I = 0xf

.field public static final CONNLEVEL_FIELD_NUMBER:I = 0x5

.field public static final CONNTYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

.field public static final ERRCODE_FIELD_NUMBER:I = 0x2

.field public static final ERRMSG_FIELD_NUMBER:I = 0x3

.field public static final IDHASH_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATEDATA_FIELD_NUMBER:I = 0x6


# instance fields
.field private config_:Lcom/google/protobuf/ByteString;

.field private connLevel_:I

.field private connType_:I

.field private errCode_:I

.field private errMsg_:Ljava/lang/String;

.field private idHash_:Ljava/lang/String;

.field private privateData_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    const-class v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errMsg_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->idHash_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->privateData_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$15500()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setConnTypeValue(I)V

    return-void
.end method

.method static synthetic access$15700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->clearConnType()V

    return-void
.end method

.method static synthetic access$15900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setErrCode(I)V

    return-void
.end method

.method static synthetic access$16000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->clearErrCode()V

    return-void
.end method

.method static synthetic access$16100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setErrMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->clearErrMsg()V

    return-void
.end method

.method static synthetic access$16300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setErrMsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setIdHash(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->clearIdHash()V

    return-void
.end method

.method static synthetic access$16600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setIdHashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setConnLevel(I)V

    return-void
.end method

.method static synthetic access$16800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->clearConnLevel()V

    return-void
.end method

.method static synthetic access$16900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setPrivateData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->clearPrivateData()V

    return-void
.end method

.method static synthetic access$17100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->setConfig(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->clearConfig()V

    return-void
.end method

.method private clearConfig()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearConnLevel()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connLevel_:I

    return-void
.end method

.method private clearConnType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connType_:I

    return-void
.end method

.method private clearErrCode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errCode_:I

    return-void
.end method

.method private clearErrMsg()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errMsg_:Ljava/lang/String;

    return-void
.end method

.method private clearIdHash()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getIdHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->idHash_:Ljava/lang/String;

    return-void
.end method

.method private clearPrivateData()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getPrivateData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->privateData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConfig(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setConnLevel(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connLevel_:I

    return-void
.end method

.method private setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connType_:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setConnTypeValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connType_:I

    return-void
.end method

.method private setErrCode(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errCode_:I

    return-void
.end method

.method private setErrMsg(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errMsg_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setErrMsgBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errMsg_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setIdHash(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setIdHashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPrivateData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->privateData_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object p0

    :pswitch_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "connType_"

    aput-object p3, p0, p2

    const-string p2, "errCode_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "errMsg_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "idHash_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "connLevel_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "privateData_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "config_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u000f\u0007\u0000\u0000\u0000\u0001\u000c\u0002\u0004\u0003\u0208\u0004\u0208\u0005\u0004\u0006\n\u000f\n"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;-><init>()V

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

.method public getConfig()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getConnLevel()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connLevel_:I

    return p0
.end method

.method public getConnType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connType_:I

    invoke-static {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    :cond_0
    return-object p0
.end method

.method public getConnTypeValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->connType_:I

    return p0
.end method

.method public getErrCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errCode_:I

    return p0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errMsg_:Ljava/lang/String;

    return-object p0
.end method

.method public getErrMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->errMsg_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->idHash_:Ljava/lang/String;

    return-object p0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->idHash_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateData()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->privateData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method
