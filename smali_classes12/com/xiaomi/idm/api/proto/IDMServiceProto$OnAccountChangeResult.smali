.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnAccountChangeResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;,
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResultOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

.field public static final NEWACCOUNT_FIELD_NUMBER:I = 0x4

.field public static final NEWIDHASH_FIELD_NUMBER:I = 0x2

.field public static final OLDACCOUNT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBCHANGETYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private newAccount_:Ljava/lang/String;

.field private newIdHash_:Lcom/google/protobuf/ByteString;

.field private oldAccount_:Ljava/lang/String;

.field private subChangeType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    const-class v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newIdHash_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->oldAccount_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newAccount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14200()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->setSubChangeTypeValue(I)V

    return-void
.end method

.method static synthetic access$14400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->setSubChangeType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->clearSubChangeType()V

    return-void
.end method

.method static synthetic access$14600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->setNewIdHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->clearNewIdHash()V

    return-void
.end method

.method static synthetic access$14800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->setOldAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->clearOldAccount()V

    return-void
.end method

.method static synthetic access$15000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->setOldAccountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->setNewAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->clearNewAccount()V

    return-void
.end method

.method static synthetic access$15300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->setNewAccountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearNewAccount()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getNewAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newAccount_:Ljava/lang/String;

    return-void
.end method

.method private clearNewIdHash()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getNewIdHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newIdHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearOldAccount()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getOldAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->oldAccount_:Ljava/lang/String;

    return-void
.end method

.method private clearSubChangeType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->subChangeType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNewAccount(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newAccount_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setNewAccountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newAccount_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setNewIdHash(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newIdHash_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setOldAccount(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->oldAccount_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setOldAccountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->oldAccount_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSubChangeType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->subChangeType_:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSubChangeTypeValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->subChangeType_:I

    return-void
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
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "subChangeType_"

    aput-object p3, p0, p2

    const-string p2, "newIdHash_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "oldAccount_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "newAccount_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000c\u0002\n\u0003\u0208\u0004\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;-><init>()V

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

.method public getNewAccount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newAccount_:Ljava/lang/String;

    return-object p0
.end method

.method public getNewAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newAccount_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getNewIdHash()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->newIdHash_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getOldAccount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->oldAccount_:Ljava/lang/String;

    return-object p0
.end method

.method public getOldAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->oldAccount_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->subChangeType_:I

    invoke-static {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;->forNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;->UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;

    :cond_0
    return-object p0
.end method

.method public getSubChangeTypeValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->subChangeType_:I

    return p0
.end method
