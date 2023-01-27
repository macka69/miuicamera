.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMMDATATYPE_FIELD_NUMBER:I = 0x3

.field public static final COMMTYPE_FIELD_NUMBER:I = 0x2

.field public static final CONNLEVEL_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

.field public static final IDMSERVICE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATEDATA_FIELD_NUMBER:I = 0x6

.field public static final VERIFYSAMEACCOUNT_FIELD_NUMBER:I = 0x5


# instance fields
.field private commDataType_:I

.field private commType_:I

.field private connLevel_:I

.field private idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

.field private privateData_:Lcom/google/protobuf/ByteString;

.field private verifySameAccount_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    const-class v1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->privateData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5800()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->clearIdmService()V

    return-void
.end method

.method static synthetic access$6300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->setCommType(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->clearCommType()V

    return-void
.end method

.method static synthetic access$6500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->setCommDataType(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->clearCommDataType()V

    return-void
.end method

.method static synthetic access$6700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->setConnLevel(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->clearConnLevel()V

    return-void
.end method

.method static synthetic access$6900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->setVerifySameAccount(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->clearVerifySameAccount()V

    return-void
.end method

.method static synthetic access$7100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->setPrivateData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->clearPrivateData()V

    return-void
.end method

.method private clearCommDataType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->commDataType_:I

    return-void
.end method

.method private clearCommType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->commType_:I

    return-void
.end method

.method private clearConnLevel()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->connLevel_:I

    return-void
.end method

.method private clearIdmService()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method private clearPrivateData()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getPrivateData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->privateData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearVerifySameAccount()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->verifySameAccount_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object v0
.end method

.method private mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCommDataType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->commDataType_:I

    return-void
.end method

.method private setCommType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->commType_:I

    return-void
.end method

.method private setConnLevel(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->connLevel_:I

    return-void
.end method

.method private setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method private setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPrivateData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->privateData_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setVerifySameAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->verifySameAccount_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "idmService_"

    aput-object p3, p0, p2

    const-string p2, "commType_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "commDataType_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "connLevel_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "verifySameAccount_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "privateData_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0007\u0006\n"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;-><init>()V

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

.method public getCommDataType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->commDataType_:I

    return p0
.end method

.method public getCommType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->commType_:I

    return p0
.end method

.method public getConnLevel()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->connLevel_:I

    return p0
.end method

.method public getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPrivateData()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->privateData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getVerifySameAccount()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->verifySameAccount_:Z

    return p0
.end method

.method public hasIdmService()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->idmService_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
