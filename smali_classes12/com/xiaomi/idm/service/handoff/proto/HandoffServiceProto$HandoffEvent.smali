.class public final Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandoffEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEventOrBuilder;"
    }
.end annotation


# static fields
.field public static final APPKEY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

.field public static final IDHASH_FIELD_NUMBER:I = 0x1

.field public static final KEY_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x4


# instance fields
.field private appKey_:Ljava/lang/String;

.field private idHash_:Ljava/lang/String;

.field private key_:Ljava/lang/String;

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    const-class v1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->idHash_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->appKey_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->key_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3900()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->setIdHash(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->clearIdHash()V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->setIdHashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->clearAppKey()V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->setAppKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->clearKey()V

    return-void
.end method

.method static synthetic access$4800(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->setKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->clearValue()V

    return-void
.end method

.method private clearAppKey()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->appKey_:Ljava/lang/String;

    return-void
.end method

.method private clearIdHash()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getIdHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->idHash_:Ljava/lang/String;

    return-void
.end method

.method private clearKey()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->key_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppKey(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->appKey_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setAppKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->appKey_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setIdHash(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setIdHashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setKey(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->key_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->key_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->value_:Lcom/google/protobuf/ByteString;

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
    sget-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "idHash_"

    aput-object p3, p0, p2

    const-string p2, "appKey_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "key_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "value_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\n"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;-><init>(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;-><init>()V

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

.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->appKey_:Ljava/lang/String;

    return-object p0
.end method

.method public getAppKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->appKey_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->idHash_:Ljava/lang/String;

    return-object p0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->idHash_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->key_:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->key_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->value_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method
