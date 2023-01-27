.class public final enum Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;
.super Ljava/lang/Enum;
.source "ResponseCode.java"

# interfaces
.implements Lcom/xiaomi/idm/api/ResponseCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InvitationCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum ABORT_INVITATION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum ABORT_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum ACCEPT_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum DENY_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum INVITE_BUSY:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum INVITE_CONNECTION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum INVITE_CONNECTION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum INVITE_CONNECTION_TIMEOUT:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum INV_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum NOT_IN_INVITING:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum RECEIVE_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum WLAN_SERVER_STARTED:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

.field public static final enum WLAN_SERVER_STOPPED:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "INVITE_CONNECTION_SUCCESS"

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string v4, "Invite Connection SUCCESS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_CONNECTION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "ABORT_INVITATION_SUCCESS"

    const/4 v3, 0x1

    const/16 v4, 0x11

    const-string v5, "Abort InvitationCode SUCCESS"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->ABORT_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "ACCEPT_INVITATION_SUCCESS"

    const/4 v4, 0x2

    const/16 v5, 0x14

    const-string v6, "Accept Invitation SUCCESS"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->ACCEPT_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "DENY_INVITATION_SUCCESS"

    const/4 v5, 0x3

    const/16 v6, 0x15

    const-string v7, "Deny Invitation SUCCESS"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->DENY_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "RECEIVE_INVITATION_SUCCESS"

    const/4 v6, 0x4

    const/16 v7, 0x16

    const-string v8, "Receive Invitation SUCCESS"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->RECEIVE_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "WLAN_SERVER_STARTED"

    const/4 v7, 0x5

    const/16 v8, 0x12

    const-string v9, "WLAN server started"

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->WLAN_SERVER_STARTED:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "WLAN_SERVER_STOPPED"

    const/4 v8, 0x6

    const/16 v9, 0x13

    const-string v10, "WLAN server stopped"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->WLAN_SERVER_STOPPED:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "INVITE_CONNECTION_ERROR"

    const/4 v9, 0x7

    const/16 v10, -0x86

    const-string v11, "General inviting connection error"

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_CONNECTION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "INVITE_CONNECTION_TIMEOUT"

    const/16 v10, 0x8

    const/16 v11, -0x87

    const-string v12, "Inviting connection is timeout and aborted"

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_CONNECTION_TIMEOUT:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "ABORT_INVITATION_ERROR"

    const/16 v11, 0x9

    const/16 v12, -0x88

    const-string v13, "Abort invitation error, not aborted"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->ABORT_INVITATION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "INVITE_BUSY"

    const/16 v12, 0xa

    const/16 v13, -0x89

    const-string v14, "Invite Busy"

    invoke-direct {v0, v1, v12, v13, v14}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_BUSY:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "NOT_IN_INVITING"

    const/16 v13, 0xb

    const/16 v14, -0x8a

    const-string v15, "Not In Inviting"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->NOT_IN_INVITING:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const-string v1, "INV_UNKNOWN"

    const/16 v14, 0xc

    const/16 v15, -0x270f

    const-string v13, "Unknown invitation error"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INV_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    sget-object v13, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_CONNECTION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v13, v1, v2

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->ABORT_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->ACCEPT_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->DENY_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->RECEIVE_INVITATION_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->WLAN_SERVER_STARTED:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->WLAN_SERVER_STOPPED:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_CONNECTION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_CONNECTION_TIMEOUT:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->ABORT_INVITATION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INVITE_BUSY:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    aput-object v2, v1, v12

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->NOT_IN_INVITING:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->code:I

    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;
    .locals 5

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->INV_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->code:I

    if-ne v5, p0, :cond_0

    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvitationCode response code: Unknown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] need to define here"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ResponseCode"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvitationCode response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;
    .locals 1

    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;->msg:Ljava/lang/String;

    return-object p0
.end method
