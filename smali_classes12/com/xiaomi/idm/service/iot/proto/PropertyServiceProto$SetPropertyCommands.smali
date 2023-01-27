.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommandsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetPropertyCommands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;,
        Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$PropertyMapDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommandsOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTYMAP_FIELD_NUMBER:I = 0x2


# instance fields
.field private aid_:I

.field private propertyMap_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    const-class v1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$1600()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->setAid(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->clearAid()V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getMutablePropertyMapMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->aid_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object v0
.end method

.method private getMutablePropertyMapMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->internalGetMutablePropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    return-object p0
.end method

.method private internalGetMutablePropertyMap()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    return-object p0
.end method

.method private internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->propertyMap_:Lcom/google/protobuf/MapFieldLite;

    return-object p0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->aid_:I

    return-void
.end method


# virtual methods
.method public containsPropertyMap(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "aid_"

    aput-object p3, p0, p2

    const-string p2, "propertyMap_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$PropertyMapDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u0004\u00022"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;-><init>()V

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

.method public getAid()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->aid_:I

    return p0
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getPropertyMapMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyMapCount()I
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result p0

    return p0
.end method

.method public getPropertyMapMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public getPropertyMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->internalGetPropertyMap()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method
