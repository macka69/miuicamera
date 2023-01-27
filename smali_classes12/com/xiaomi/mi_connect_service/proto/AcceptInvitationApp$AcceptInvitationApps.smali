.class public final Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationAppsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AcceptInvitationApps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationAppsOrBuilder;"
    }
.end annotation


# static fields
.field public static final APPS_FIELD_NUMBER:I = 0x8

.field public static final BT_ADDR_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x6

.field public static final ID_HASH_FIELD_NUMBER:I = 0x5

.field public static final MC_VERSION_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;",
            ">;"
        }
    .end annotation
.end field

.field public static final PB_VERSION_FIELD_NUMBER:I = 0x1

.field public static final SECURITY_MODE_FIELD_NUMBER:I = 0x7

.field public static final SW_VERSION_FIELD_NUMBER:I = 0x3


# instance fields
.field private apps_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;"
        }
    .end annotation
.end field

.field private btAddr_:Lcom/google/protobuf/ByteString;

.field private deviceType_:I

.field private idHash_:Lcom/google/protobuf/ByteString;

.field private mcVersion_:I

.field private name_:Ljava/lang/String;

.field private pbVersion_:I

.field private securityMode_:I

.field private swVersion_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    const-class v1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->swVersion_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->name_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->idHash_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->btAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearMcVersion()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setSwVersion(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearSwVersion()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearName()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setIdHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearIdHash()V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setDeviceType(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearDeviceType()V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setSecurityModeValue(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setSecurityMode(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearSecurityMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->addAllApps(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearApps()V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->removeApps(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setBtAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearBtAddr()V

    return-void
.end method

.method static synthetic access$600()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setPbVersion(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->clearPbVersion()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->setMcVersion(I)V

    return-void
.end method

.method private addAllApps(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private clearApps()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearBtAddr()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getBtAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->btAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearDeviceType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->deviceType_:I

    return-void
.end method

.method private clearIdHash()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getIdHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->idHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMcVersion()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->mcVersion_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPbVersion()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->pbVersion_:I

    return-void
.end method

.method private clearSecurityMode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->securityMode_:I

    return-void
.end method

.method private clearSwVersion()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getSwVersion()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->swVersion_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureAppsIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeApps(I)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setBtAddr(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->btAddr_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->deviceType_:I

    return-void
.end method

.method private setIdHash(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->idHash_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setMcVersion(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->mcVersion_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->name_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->name_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPbVersion(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->pbVersion_:I

    return-void
.end method

.method private setSecurityMode(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->securityMode_:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSecurityModeValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->securityMode_:I

    return-void
.end method

.method private setSwVersion(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->swVersion_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    return-object p0

    :pswitch_4
    const/16 p0, 0xa

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "pbVersion_"

    aput-object p3, p0, p2

    const-string p2, "mcVersion_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "swVersion_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "name_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "idHash_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "deviceType_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "securityMode_"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string p2, "apps_"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-class p2, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-string p2, "btAddr_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    const-string p2, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0001\u0000\u0001\u000b\u0002\u000b\u0003\n\u0004\u0208\u0005\n\u0006\u000b\u0007\u000c\u0008\u001b\t\n"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;-><init>()V

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

.method public getApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public getAppsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result p0

    return p0
.end method

.method public getAppsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getAppsOrBuilder(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;

    return-object p0
.end method

.method public getAppsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getBtAddr()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->btAddr_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->deviceType_:I

    return p0
.end method

.method public getIdHash()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->idHash_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getMcVersion()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->mcVersion_:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->name_:Ljava/lang/String;

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->name_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPbVersion()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->pbVersion_:I

    return p0
.end method

.method public getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->securityMode_:I

    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;->forNumber(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;

    :cond_0
    return-object p0
.end method

.method public getSecurityModeValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->securityMode_:I

    return p0
.end method

.method public getSwVersion()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->swVersion_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method
