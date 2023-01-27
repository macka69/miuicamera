.class public final Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InputMethodServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputMethodResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_FIELD_NUMBER:I = 0x3


# instance fields
.field private code_:I

.field private message_:Ljava/lang/String;

.field private response_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    const-class v1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->message_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->response_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1800()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->setCode(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->clearCode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->clearMessage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->setResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->clearResponse()V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->setResponseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->code_:I

    return-void
.end method

.method private clearMessage()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->message_:Ljava/lang/String;

    return-void
.end method

.method private clearResponse()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->getResponse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->response_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCode(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->code_:I

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->message_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->message_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setResponse(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->response_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setResponseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->response_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "code_"

    aput-object p3, p0, p2

    const-string p2, "message_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "response_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0208\u0003\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;-><init>()V

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

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->code_:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->message_:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->message_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->response_:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;->response_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
