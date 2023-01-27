.class final enum Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;
.super Ljava/lang/Enum;
.source "VideoCastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/videocast/VideoCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AuthorisationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

.field public static final enum ACTIVE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

.field public static final enum IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->ACTIVE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    sget-object v4, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->$VALUES:[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;
    .locals 1

    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->$VALUES:[Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    invoke-virtual {v0}, [Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    return-object v0
.end method
