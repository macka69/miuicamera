.class public final enum Lcom/xiaomi/onetrack/OneTrack$NetType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$NetType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$NetType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "MOBILE_2G"

    const/4 v3, 0x1

    const-string v4, "2G"

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "MOBILE_3G"

    const/4 v4, 0x2

    const-string v5, "3G"

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "MOBILE_4G"

    const/4 v5, 0x3

    const-string v6, "4G"

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "MOBILE_5G"

    const/4 v6, 0x4

    const-string v7, "5G"

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "WIFI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v1}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "ETHERNET"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v1}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v1, "UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v1}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    sget-object v10, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .locals 1

    const-class v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$NetType;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    return-object p0
.end method
