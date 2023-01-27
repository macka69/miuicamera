.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

.field public static final PARAMJSON_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aid_:I

.field private paramJson_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    const-class v1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->paramJson_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->setAid(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->clearAid()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->setParamJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->clearParamJson()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->setParamJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object v0
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->aid_:I

    return-void
.end method

.method private clearParamJson()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->getParamJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->paramJson_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->aid_:I

    return-void
.end method

.method private setParamJson(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->paramJson_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setParamJsonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->paramJson_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "aid_"

    aput-object p3, p0, p2

    const-string p2, "paramJson_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;-><init>()V

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

.method public getAid()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->aid_:I

    return p0
.end method

.method public getParamJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->paramJson_:Ljava/lang/String;

    return-object p0
.end method

.method public getParamJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetProperty;->paramJson_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
