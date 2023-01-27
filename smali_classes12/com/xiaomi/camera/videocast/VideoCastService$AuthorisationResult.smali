.class final enum Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;
.super Ljava/lang/Enum;
.source "VideoCastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/videocast/VideoCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AuthorisationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

.field public static final enum APPROVED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

.field public static final enum REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

.field public static final enum UNKNOWN:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->UNKNOWN:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    const-string v1, "REJECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    const-string v1, "APPROVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->APPROVED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    sget-object v5, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->UNKNOWN:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    aput-object v5, v1, v2

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->$VALUES:[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;
    .locals 1

    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->$VALUES:[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-virtual {v0}, [Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    return-object v0
.end method
