.class public final enum Lcom/xiaomi/abtest/EnumType$DiversionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiversionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/abtest/EnumType$DiversionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BY_RANDOM:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_SESSIONID:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_UNKNOWN:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID_DAY:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID_MONTH:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field public static final enum BY_USERID_WEEK:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field private static final synthetic b:[Lcom/xiaomi/abtest/EnumType$DiversionType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const-string v1, "BY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_UNKNOWN:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const-string v1, "BY_USERID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const-string v1, "BY_SESSIONID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_SESSIONID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const-string v1, "BY_USERID_DAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_DAY:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const-string v1, "BY_USERID_WEEK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_WEEK:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const-string v1, "BY_USERID_MONTH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_MONTH:Lcom/xiaomi/abtest/EnumType$DiversionType;

    new-instance v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    const-string v1, "BY_RANDOM"

    const/4 v8, 0x6

    const/16 v9, 0x63

    invoke-direct {v0, v1, v8, v9}, Lcom/xiaomi/abtest/EnumType$DiversionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_RANDOM:Lcom/xiaomi/abtest/EnumType$DiversionType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/xiaomi/abtest/EnumType$DiversionType;

    sget-object v9, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_UNKNOWN:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v9, v1, v2

    sget-object v2, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_SESSIONID:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_DAY:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_WEEK:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/abtest/EnumType$DiversionType;->BY_USERID_MONTH:Lcom/xiaomi/abtest/EnumType$DiversionType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/xiaomi/abtest/EnumType$DiversionType;->b:[Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/abtest/EnumType$DiversionType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$DiversionType;
    .locals 1

    const-class v0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/abtest/EnumType$DiversionType;
    .locals 1

    sget-object v0, Lcom/xiaomi/abtest/EnumType$DiversionType;->b:[Lcom/xiaomi/abtest/EnumType$DiversionType;

    invoke-virtual {v0}, [Lcom/xiaomi/abtest/EnumType$DiversionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/abtest/EnumType$DiversionType;->a:I

    return p0
.end method
