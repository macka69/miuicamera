.class public final Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InviteLetter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetterOrBuilder;"
    }
.end annotation


# static fields
.field public static final APPS_FIELD_NUMBER:I = 0xd

.field public static final BT_ADDR_FIELD_NUMBER:I = 0x8

.field public static final CHANNEL_FIELD_NUMBER:I = 0x2

.field public static final CONN_TYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0xe

.field public static final DISC_TYPE_FIELD_NUMBER:I = 0x12

.field public static final ID_HASH_FIELD_NUMBER:I = 0x6

.field public static final INVITE_KEY_FIELD_NUMBER:I = 0x13

.field public static final INVITE_PORT_FIELD_NUMBER:I = 0x10

.field public static final INVITE_TYPE_FIELD_NUMBER:I = 0x11

.field public static final MAC_ADDR_FIELD_NUMBER:I = 0x3

.field public static final MC_VERSION_FIELD_NUMBER:I = 0xa

.field public static final NAME_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;",
            ">;"
        }
    .end annotation
.end field

.field public static final PB_VERSION_FIELD_NUMBER:I = 0x9

.field public static final PWD_FIELD_NUMBER:I = 0x4

.field public static final ROLE_FIELD_NUMBER:I = 0xc

.field public static final SECURITY_MODE_FIELD_NUMBER:I = 0xf

.field public static final SSID_FIELD_NUMBER:I = 0x5

.field public static final SW_VERSION_FIELD_NUMBER:I = 0xb


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

.field private channel_:I

.field private connType_:I

.field private deviceType_:I

.field private discType_:I

.field private idHash_:Ljava/lang/String;

.field private inviteKey_:I

.field private invitePort_:I

.field private inviteType_:I

.field private macAddr_:Ljava/lang/String;

.field private mcVersion_:I

.field private name_:Ljava/lang/String;

.field private pbVersion_:I

.field private pwd_:Ljava/lang/String;

.field private role_:I

.field private securityMode_:I

.field private ssid_:Ljava/lang/String;

.field private swVersion_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    const-class v1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->macAddr_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pwd_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ssid_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->idHash_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->name_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->btAddr_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->swVersion_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$3500()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setConnType(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearConnType()V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setChannel(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearChannel()V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setMacAddr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearMacAddr()V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setMacAddrBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setPwd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearPwd()V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setPwdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setSsid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearSsid()V

    return-void
.end method

.method static synthetic access$4800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setSsidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setIdHash(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearIdHash()V

    return-void
.end method

.method static synthetic access$5100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setIdHashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearName()V

    return-void
.end method

.method static synthetic access$5400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setBtAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearBtAddr()V

    return-void
.end method

.method static synthetic access$5700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setPbVersion(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearPbVersion()V

    return-void
.end method

.method static synthetic access$5900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setMcVersion(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearMcVersion()V

    return-void
.end method

.method static synthetic access$6100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setSwVersion(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearSwVersion()V

    return-void
.end method

.method static synthetic access$6300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setRoleValue(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setRole(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearRole()V

    return-void
.end method

.method static synthetic access$6600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->addAllApps(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearApps()V

    return-void
.end method

.method static synthetic access$7400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->removeApps(I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setDeviceType(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearDeviceType()V

    return-void
.end method

.method static synthetic access$7700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setSecurityModeValue(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setSecurityMode(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearSecurityMode()V

    return-void
.end method

.method static synthetic access$8000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setInvitePort(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearInvitePort()V

    return-void
.end method

.method static synthetic access$8200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setInviteType(I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearInviteType()V

    return-void
.end method

.method static synthetic access$8400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setDiscType(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearDiscType()V

    return-void
.end method

.method static synthetic access$8600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->setInviteKey(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->clearInviteKey()V

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

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private clearApps()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearBtAddr()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getBtAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->btAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearChannel()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->channel_:I

    return-void
.end method

.method private clearConnType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->connType_:I

    return-void
.end method

.method private clearDeviceType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->deviceType_:I

    return-void
.end method

.method private clearDiscType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->discType_:I

    return-void
.end method

.method private clearIdHash()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getIdHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->idHash_:Ljava/lang/String;

    return-void
.end method

.method private clearInviteKey()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->inviteKey_:I

    return-void
.end method

.method private clearInvitePort()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->invitePort_:I

    return-void
.end method

.method private clearInviteType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->inviteType_:I

    return-void
.end method

.method private clearMacAddr()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->macAddr_:Ljava/lang/String;

    return-void
.end method

.method private clearMcVersion()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->mcVersion_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPbVersion()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pbVersion_:I

    return-void
.end method

.method private clearPwd()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pwd_:Ljava/lang/String;

    return-void
.end method

.method private clearRole()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->role_:I

    return-void
.end method

.method private clearSecurityMode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->securityMode_:I

    return-void
.end method

.method private clearSsid()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ssid_:Ljava/lang/String;

    return-void
.end method

.method private clearSwVersion()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getSwVersion()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->swVersion_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureAppsIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeApps(I)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ensureAppsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setBtAddr(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->btAddr_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->channel_:I

    return-void
.end method

.method private setConnType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->connType_:I

    return-void
.end method

.method private setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->deviceType_:I

    return-void
.end method

.method private setDiscType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->discType_:I

    return-void
.end method

.method private setIdHash(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setIdHashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->idHash_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setInviteKey(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->inviteKey_:I

    return-void
.end method

.method private setInvitePort(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->invitePort_:I

    return-void
.end method

.method private setInviteType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->inviteType_:I

    return-void
.end method

.method private setMacAddr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->macAddr_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setMacAddrBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->macAddr_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setMcVersion(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->mcVersion_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->name_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->name_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPbVersion(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pbVersion_:I

    return-void
.end method

.method private setPwd(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pwd_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPwdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pwd_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setRole(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->role_:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setRoleValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->role_:I

    return-void
.end method

.method private setSecurityMode(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->securityMode_:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSecurityModeValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->securityMode_:I

    return-void
.end method

.method private setSsid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ssid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSsidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ssid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSwVersion(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->swVersion_:Lcom/google/protobuf/ByteString;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    return-object p0

    :pswitch_4
    const/16 p0, 0x14

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "connType_"

    aput-object p3, p0, p2

    const-string p2, "channel_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "macAddr_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "pwd_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "ssid_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "idHash_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "name_"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string p2, "btAddr_"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string p2, "pbVersion_"

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-string p2, "mcVersion_"

    aput-object p2, p0, p1

    const/16 p1, 0xa

    const-string p2, "swVersion_"

    aput-object p2, p0, p1

    const/16 p1, 0xb

    const-string p2, "role_"

    aput-object p2, p0, p1

    const/16 p1, 0xc

    const-string p2, "apps_"

    aput-object p2, p0, p1

    const/16 p1, 0xd

    const-class p2, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    aput-object p2, p0, p1

    const/16 p1, 0xe

    const-string p2, "deviceType_"

    aput-object p2, p0, p1

    const/16 p1, 0xf

    const-string p2, "securityMode_"

    aput-object p2, p0, p1

    const/16 p1, 0x10

    const-string p2, "invitePort_"

    aput-object p2, p0, p1

    const/16 p1, 0x11

    const-string p2, "inviteType_"

    aput-object p2, p0, p1

    const/16 p1, 0x12

    const-string p2, "discType_"

    aput-object p2, p0, p1

    const/16 p1, 0x13

    const-string p2, "inviteKey_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    const-string p2, "\u0000\u0013\u0000\u0000\u0001\u0013\u0013\u0000\u0001\u0000\u0001\u0004\u0002\u0004\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208\u0008\n\t\u000b\n\u000b\u000b\n\u000c\u000c\r\u001b\u000e\u000b\u000f\u000c\u0010\u000b\u0011\u000b\u0012\u000b\u0013\u000b"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;-><init>()V

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

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public getAppsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getAppsOrBuilder(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->apps_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getBtAddr()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->btAddr_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->channel_:I

    return p0
.end method

.method public getConnType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->connType_:I

    return p0
.end method

.method public getDeviceType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->deviceType_:I

    return p0
.end method

.method public getDiscType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->discType_:I

    return p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->idHash_:Ljava/lang/String;

    return-object p0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->idHash_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getInviteKey()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->inviteKey_:I

    return p0
.end method

.method public getInvitePort()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->invitePort_:I

    return p0
.end method

.method public getInviteType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->inviteType_:I

    return p0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->macAddr_:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->macAddr_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMcVersion()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->mcVersion_:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->name_:Ljava/lang/String;

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->name_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPbVersion()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pbVersion_:I

    return p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pwd_:Ljava/lang/String;

    return-object p0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->pwd_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getRole()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->role_:I

    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->forNumber(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    :cond_0
    return-object p0
.end method

.method public getRoleValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->role_:I

    return p0
.end method

.method public getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->securityMode_:I

    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;->forNumber(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;

    :cond_0
    return-object p0
.end method

.method public getSecurityModeValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->securityMode_:I

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ssid_:Ljava/lang/String;

    return-object p0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->ssid_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSwVersion()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->swVersion_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method
