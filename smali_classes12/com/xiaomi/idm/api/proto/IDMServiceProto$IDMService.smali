.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDMService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMServiceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

.field public static final ENDPOINT_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final ORIGINALUUID_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPERTYPE_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final UUID_FIELD_NUMBER:I = 0x1


# instance fields
.field private endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

.field private name_:Ljava/lang/String;

.field private originalUuid_:Ljava/lang/String;

.field private superType_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field private uuid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    const-class v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->uuid_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->type_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->name_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->originalUuid_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->superType_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->mergeEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->clearEndpoint()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setOriginalUuid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->clearOriginalUuid()V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setOriginalUuidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setSuperType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->clearSuperType()V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setSuperTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->clearUuid()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setUuidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->clearType()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->clearName()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearEndpoint()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    return-void
.end method

.method private clearName()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearOriginalUuid()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getOriginalUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->originalUuid_:Ljava/lang/String;

    return-void
.end method

.method private clearSuperType()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getSuperType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->superType_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->type_:Ljava/lang/String;

    return-void
.end method

.method private clearUuid()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->uuid_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object v0
.end method

.method private mergeEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    return-void
.end method

.method private setEndpoint(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->name_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->name_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setOriginalUuid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->originalUuid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setOriginalUuidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->originalUuid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSuperType(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->superType_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSuperTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->superType_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->type_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->type_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->uuid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setUuidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->uuid_:Ljava/lang/String;

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
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "uuid_"

    aput-object p3, p0, p2

    const-string p2, "type_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "name_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "endpoint_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "originalUuid_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "superType_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\t\u0005\u0208\u0006\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;-><init>()V

    return-object p0

    nop

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

.method public getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->name_:Ljava/lang/String;

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->name_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->originalUuid_:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->originalUuid_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSuperType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->superType_:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->superType_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->type_:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->type_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->uuid_:Ljava/lang/String;

    return-object p0
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->uuid_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasEndpoint()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->endpoint_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
