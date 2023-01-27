.class public final enum Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowUnitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATUS_DELETED:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

.field public static final enum STATUS_INVALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

.field public static final enum STATUS_VALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

.field private static final synthetic a:[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const-string v1, "STATUS_VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_VALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const-string v1, "STATUS_INVALID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_INVALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const-string v1, "STATUS_DELETED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_DELETED:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    sget-object v5, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_VALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->STATUS_INVALID:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->a:[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->a:[Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    return-object v0
.end method
