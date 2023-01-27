.class public final enum Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
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
    name = "DiscoveryCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum ALREADY_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISCOVERY_END:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISCOVERY_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISCOVERY_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISC_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum NOT_IN_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum START_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum START_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum STOP_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "START_DISCOVERY_SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Start Discovery SUCCESS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "STOP_DISCOVERY_SUCCESS"

    const/4 v4, 0x2

    const-string v5, "Stop Discovery SUCCESS"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "DISCOVERY_END"

    const/16 v5, 0xa

    const-string v6, "Discovery END"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_END:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "ALREADY_DISCOVERY"

    const/4 v6, 0x3

    const/4 v7, -0x6

    const-string v8, "Already In Discovery"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ALREADY_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "START_DISCOVERY_ERROR"

    const/4 v7, 0x4

    const/16 v8, -0x9

    const-string v9, "Start Discovery Error"

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "STOP_DISCOVERY_ERROR"

    const/4 v8, 0x5

    const/16 v9, -0xa

    const-string v10, "Stop Discovery Error"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "NOT_IN_DISCOVERY"

    const/4 v9, 0x6

    const/16 v10, -0xd

    const-string v11, "Not In Discovery"

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->NOT_IN_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "DISCOVERY_INTERRUPTED"

    const/4 v10, 0x7

    const/16 v11, -0x8b

    const-string v12, "Discovery is interrupted"

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "DISCOVERY_PERMISSION_DENIED"

    const/16 v11, 0x8

    const/16 v12, -0x2328

    const-string v13, "Discovery is permission denied"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "ERROR_CODE_START_DISC_NOT_SUPPORTED"

    const/16 v12, 0x9

    const/16 v13, -0x1a

    const-string v14, "disc type not supported"

    invoke-direct {v0, v1, v12, v13, v14}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v1, "DISC_UNKNOWN"

    const/16 v13, -0x270f

    const-string v14, "Unknown discovery error"

    invoke-direct {v0, v1, v5, v13, v14}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISC_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    sget-object v13, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v13, v1, v2

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_END:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ALREADY_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->NOT_IN_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v2, v1, v12

    aput-object v0, v1, v5

    sput-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

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

    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
    .locals 5

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISC_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    if-ne v5, p0, :cond_0

    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryCode response code: Unknown response code: ["

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

    const-string v1, "DiscoveryCode response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
    .locals 1

    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->msg:Ljava/lang/String;

    return-object p0
.end method
