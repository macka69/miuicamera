.class public final enum Lcom/mi/device/SlowMotionEnum;
.super Ljava/lang/Enum;
.source "SlowMotionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mi/device/SlowMotionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/device/SlowMotionEnum;

.field public static final enum SLOW_120_FPS:Lcom/mi/device/SlowMotionEnum;

.field public static final enum SLOW_1920_FPS:Lcom/mi/device/SlowMotionEnum;

.field public static final enum SLOW_240_FPS:Lcom/mi/device/SlowMotionEnum;

.field public static final enum SLOW_480_FPS:Lcom/mi/device/SlowMotionEnum;

.field public static final enum SLOW_960_FPS:Lcom/mi/device/SlowMotionEnum;

.field public static final enum SLOW_UNSUPPORT:Lcom/mi/device/SlowMotionEnum;


# instance fields
.field private mFps:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const-string v1, "SLOW_UNSUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->SLOW_UNSUPPORT:Lcom/mi/device/SlowMotionEnum;

    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const-string v1, "SLOW_120_FPS"

    const/4 v3, 0x1

    const/16 v4, 0x78

    invoke-direct {v0, v1, v3, v4}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->SLOW_120_FPS:Lcom/mi/device/SlowMotionEnum;

    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const-string v1, "SLOW_240_FPS"

    const/4 v4, 0x2

    const/16 v5, 0xf0

    invoke-direct {v0, v1, v4, v5}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->SLOW_240_FPS:Lcom/mi/device/SlowMotionEnum;

    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const-string v1, "SLOW_480_FPS"

    const/4 v5, 0x3

    const/16 v6, 0x1e0

    invoke-direct {v0, v1, v5, v6}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->SLOW_480_FPS:Lcom/mi/device/SlowMotionEnum;

    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const-string v1, "SLOW_960_FPS"

    const/4 v6, 0x4

    const/16 v7, 0x3c0

    invoke-direct {v0, v1, v6, v7}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->SLOW_960_FPS:Lcom/mi/device/SlowMotionEnum;

    new-instance v0, Lcom/mi/device/SlowMotionEnum;

    const-string v1, "SLOW_1920_FPS"

    const/4 v7, 0x5

    const/16 v8, 0x780

    invoke-direct {v0, v1, v7, v8}, Lcom/mi/device/SlowMotionEnum;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/mi/device/SlowMotionEnum;->SLOW_1920_FPS:Lcom/mi/device/SlowMotionEnum;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mi/device/SlowMotionEnum;

    sget-object v8, Lcom/mi/device/SlowMotionEnum;->SLOW_UNSUPPORT:Lcom/mi/device/SlowMotionEnum;

    aput-object v8, v1, v2

    sget-object v2, Lcom/mi/device/SlowMotionEnum;->SLOW_120_FPS:Lcom/mi/device/SlowMotionEnum;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mi/device/SlowMotionEnum;->SLOW_240_FPS:Lcom/mi/device/SlowMotionEnum;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mi/device/SlowMotionEnum;->SLOW_480_FPS:Lcom/mi/device/SlowMotionEnum;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mi/device/SlowMotionEnum;->SLOW_960_FPS:Lcom/mi/device/SlowMotionEnum;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/mi/device/SlowMotionEnum;->$VALUES:[Lcom/mi/device/SlowMotionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/mi/device/SlowMotionEnum;->mFps:S

    iput-short p3, p0, Lcom/mi/device/SlowMotionEnum;->mFps:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/device/SlowMotionEnum;
    .locals 1

    const-class v0, Lcom/mi/device/SlowMotionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mi/device/SlowMotionEnum;

    return-object p0
.end method

.method public static values()[Lcom/mi/device/SlowMotionEnum;
    .locals 1

    sget-object v0, Lcom/mi/device/SlowMotionEnum;->$VALUES:[Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, [Lcom/mi/device/SlowMotionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/device/SlowMotionEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()S
    .locals 0

    iget-short p0, p0, Lcom/mi/device/SlowMotionEnum;->mFps:S

    return p0
.end method
