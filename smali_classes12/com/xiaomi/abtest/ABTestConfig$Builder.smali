.class public Lcom/xiaomi/abtest/ABTestConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/abtest/ABTestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/abtest/ABTestConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/abtest/ABTestConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/abtest/ABTestConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/abtest/ABTestConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->d:I

    return p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/abtest/ABTestConfig;
    .locals 2

    new-instance v0, Lcom/xiaomi/abtest/ABTestConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/abtest/ABTestConfig;-><init>(Lcom/xiaomi/abtest/ABTestConfig$Builder;Lcom/xiaomi/abtest/ABTestConfig$1;)V

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/xiaomi/abtest/ABTestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/xiaomi/abtest/ABTestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setLoadConfigInterval(I)Lcom/xiaomi/abtest/ABTestConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->d:I

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/xiaomi/abtest/ABTestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/ABTestConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
