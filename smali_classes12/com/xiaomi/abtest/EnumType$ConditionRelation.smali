.class public final enum Lcom/xiaomi/abtest/EnumType$ConditionRelation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionRelation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/abtest/EnumType$ConditionRelation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AND:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

.field public static final enum OR:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

.field private static final synthetic a:[Lcom/xiaomi/abtest/EnumType$ConditionRelation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    const-string v1, "AND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/abtest/EnumType$ConditionRelation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->AND:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    const-string v1, "OR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/abtest/EnumType$ConditionRelation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->OR:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    sget-object v4, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->AND:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->a:[Lcom/xiaomi/abtest/EnumType$ConditionRelation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$ConditionRelation;
    .locals 1

    const-class v0, Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/abtest/EnumType$ConditionRelation;
    .locals 1

    sget-object v0, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->a:[Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    invoke-virtual {v0}, [Lcom/xiaomi/abtest/EnumType$ConditionRelation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    return-object v0
.end method
