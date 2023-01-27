.class public final enum Lcom/xiaomi/abtest/EnumType$FlowUnitType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowUnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/abtest/EnumType$FlowUnitType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TYPE_DOMAIN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

.field public static final enum TYPE_EXPERIMENT:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

.field public static final enum TYPE_EXP_CONTAINER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

.field public static final enum TYPE_LAYER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

.field public static final enum TYPE_UNKNOWN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

.field private static final synthetic a:[Lcom/xiaomi/abtest/EnumType$FlowUnitType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/abtest/EnumType$FlowUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_UNKNOWN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    const-string v1, "TYPE_DOMAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/abtest/EnumType$FlowUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_DOMAIN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    const-string v1, "TYPE_LAYER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/abtest/EnumType$FlowUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_LAYER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    const-string v1, "TYPE_EXP_CONTAINER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/abtest/EnumType$FlowUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_EXP_CONTAINER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    const-string v1, "TYPE_EXPERIMENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/abtest/EnumType$FlowUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_EXPERIMENT:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    sget-object v7, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_UNKNOWN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_DOMAIN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_LAYER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_EXP_CONTAINER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->a:[Lcom/xiaomi/abtest/EnumType$FlowUnitType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$FlowUnitType;
    .locals 1

    const-class v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/abtest/EnumType$FlowUnitType;
    .locals 1

    sget-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->a:[Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-virtual {v0}, [Lcom/xiaomi/abtest/EnumType$FlowUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    return-object v0
.end method
