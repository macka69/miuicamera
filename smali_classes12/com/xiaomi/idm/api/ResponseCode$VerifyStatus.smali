.class public final enum Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;
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
    name = "VerifyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

.field public static final enum NOT_VERIFIED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

.field public static final enum VERIFIED_FAILED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

.field public static final enum VERIFIED_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

.field public static final enum VERIFIED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

.field public static final enum VF_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    const-string v1, "NOT_VERIFIED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "Not Verified"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->NOT_VERIFIED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    const-string v1, "VERIFIED_UNKNOWN"

    const/4 v3, 0x1

    const-string v4, "Unknown status"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VERIFIED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    const-string v1, "VERIFIED_SUCCEED"

    const/4 v4, 0x2

    const-string v5, "Same Account"

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VERIFIED_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    const-string v1, "VERIFIED_FAILED"

    const/4 v5, 0x3

    const-string v6, "Not Same Account"

    invoke-direct {v0, v1, v5, v4, v6}, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VERIFIED_FAILED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    const-string v1, "VF_UNKNOWN"

    const/4 v6, 0x4

    const/16 v7, -0x270f

    const-string v8, "Unknown verifyStatus code"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VF_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    sget-object v7, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->NOT_VERIFIED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    aput-object v7, v1, v2

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VERIFIED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VERIFIED_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VERIFIED_FAILED:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

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

    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->code:I

    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;
    .locals 5

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->values()[Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->VF_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->values()[Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->code:I

    if-ne v5, p0, :cond_0

    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyStatus response code: Unknown response code: ["

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

    const-string v1, "VerifyStatus response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;->msg:Ljava/lang/String;

    return-object p0
.end method
