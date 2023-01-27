.class public final enum Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
.super Ljava/lang/Enum;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoleType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType$RoleTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

.field public static final enum MC_ROLE_TYPE_CLIENT:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

.field public static final MC_ROLE_TYPE_CLIENT_VALUE:I = 0x2

.field public static final enum MC_ROLE_TYPE_INVALID:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

.field public static final MC_ROLE_TYPE_INVALID_VALUE:I = 0x0

.field public static final enum MC_ROLE_TYPE_SERVER:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

.field public static final MC_ROLE_TYPE_SERVER_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    const-string v1, "MC_ROLE_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_INVALID:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    const-string v1, "MC_ROLE_TYPE_SERVER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_SERVER:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    const-string v1, "MC_ROLE_TYPE_CLIENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_CLIENT:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    const-string v1, "UNRECOGNIZED"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    sget-object v6, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_INVALID:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_SERVER:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_CLIENT:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->$VALUES:[Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType$1;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_CLIENT:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_SERVER:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->MC_ROLE_TYPE_INVALID:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType$RoleTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->forNumber(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
    .locals 1

    const-class v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->$VALUES:[Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    invoke-virtual {v0}, [Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    if-eq p0, v0, :cond_0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;->value:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
