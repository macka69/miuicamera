.class public final enum Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;
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
    name = "AdvertisingCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum ADVERTISING_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum ADV_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum ALREADY_ADVERTISING:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum ERROR_CODE_COMMTYPE_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum NOT_IN_ADVERTISING:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum START_ADVERTISING_ERROR:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum START_ADVERTISING_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum STOP_ADVERTISING_ERROR:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

.field public static final enum STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "START_ADVERTISING_SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "Start Advertising SUCCESS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "STOP_ADVERTISING_SUCCESS"

    const/4 v4, 0x1

    const/4 v5, 0x4

    const-string v6, "Stop Advertising SUCCESS"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "ALREADY_ADVERTISING"

    const/4 v6, 0x2

    const/4 v7, -0x5

    const-string v8, "Already In Advertising"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ALREADY_ADVERTISING:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "START_ADVERTISING_ERROR"

    const/4 v7, -0x7

    const-string v8, "Start Advertising Error"

    invoke-direct {v0, v1, v3, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->START_ADVERTISING_ERROR:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "STOP_ADVERTISING_ERROR"

    const/4 v7, -0x8

    const-string v8, "Stop Advertising Error"

    invoke-direct {v0, v1, v5, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->STOP_ADVERTISING_ERROR:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "NOT_IN_ADVERTISING"

    const/4 v7, 0x5

    const/16 v8, -0xc

    const-string v9, "Not In Advertising"

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->NOT_IN_ADVERTISING:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "ADVERTISING_PERMISSION_DENIED"

    const/4 v8, 0x6

    const/16 v9, -0x2328

    const-string v10, "Advertising is permission denied"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ADVERTISING_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "ERROR_CODE_START_DISC_NOT_SUPPORTED"

    const/4 v9, 0x7

    const/16 v10, -0x1a

    const-string v11, "disc type not supported"

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "ERROR_CODE_COMMTYPE_NOT_SUPPORTED"

    const/16 v10, 0x8

    const/16 v11, -0x1b

    const-string v12, "comm type not supported"

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ERROR_CODE_COMMTYPE_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const-string v1, "ADV_UNKNOWN"

    const/16 v11, 0x9

    const/16 v12, -0x270f

    const-string v13, "Unknown advertising code"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ADV_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    sget-object v12, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v12, v1, v2

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ALREADY_ADVERTISING:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->START_ADVERTISING_ERROR:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->STOP_ADVERTISING_ERROR:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->NOT_IN_ADVERTISING:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ADVERTISING_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ERROR_CODE_COMMTYPE_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

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

    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->code:I

    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;
    .locals 5

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->ADV_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->code:I

    if-ne v5, p0, :cond_0

    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingCode response code: Unknown response code: ["

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

    const-string v1, "AdvertisingCode response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;
    .locals 1

    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;->msg:Ljava/lang/String;

    return-object p0
.end method
