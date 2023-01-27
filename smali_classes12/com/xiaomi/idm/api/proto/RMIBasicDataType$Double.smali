.class public final Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RMIBasicDataType.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/RMIBasicDataType$DoubleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/RMIBasicDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Double"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$DoubleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final V_FIELD_NUMBER:I = 0x1


# instance fields
.field private v_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    const-class v1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1200()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->setV(D)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->clearV()V

    return-void
.end method

.method private clearV()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->v_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setV(D)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->v_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "v_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;-><init>(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;-><init>()V

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

.method public getV()D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->v_:D

    return-wide v0
.end method
