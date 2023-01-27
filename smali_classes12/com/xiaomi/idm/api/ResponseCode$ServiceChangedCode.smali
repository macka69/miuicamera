.class public final enum Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;
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
    name = "ServiceChangedCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

.field public static final enum SERVICE_CHANGED_ACCOUNT_CHANGED:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

.field public static final enum SERVICE_CHANGED_LOGIN:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

.field public static final enum SERVICE_CHANGED_LOGOUT:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

.field public static final enum SERVICE_CHANGED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    const-string v1, "SERVICE_CHANGED_LOGIN"

    const/4 v2, 0x0

    const-string v3, "Account login"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_LOGIN:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    const-string v1, "SERVICE_CHANGED_LOGOUT"

    const/4 v3, 0x1

    const-string v4, "Account logout"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_LOGOUT:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    const-string v1, "SERVICE_CHANGED_ACCOUNT_CHANGED"

    const/4 v4, 0x2

    const-string v5, "Account changed"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_ACCOUNT_CHANGED:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    const-string v1, "SERVICE_CHANGED_UNKNOWN"

    const/4 v5, 0x3

    const/16 v6, -0x270f

    const-string v7, "Unknown service changed code"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    sget-object v6, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_LOGIN:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    aput-object v6, v1, v2

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_LOGOUT:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_ACCOUNT_CHANGED:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

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

    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->code:I

    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;
    .locals 5

    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->getCode()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->SERVICE_CHANGED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;
    .locals 1

    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;->msg:Ljava/lang/String;

    return-object p0
.end method
