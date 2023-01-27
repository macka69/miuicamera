.class public Lcom/xiaomi/abtest/ABTestConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/abtest/ABTestConfig$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/xiaomi/abtest/ABTestConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/abtest/ABTestConfig$Builder;->a(Lcom/xiaomi/abtest/ABTestConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/abtest/ABTestConfig;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/abtest/ABTestConfig$Builder;->b(Lcom/xiaomi/abtest/ABTestConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/abtest/ABTestConfig;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/abtest/ABTestConfig$Builder;->c(Lcom/xiaomi/abtest/ABTestConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/abtest/ABTestConfig;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/abtest/ABTestConfig$Builder;->d(Lcom/xiaomi/abtest/ABTestConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/abtest/ABTestConfig;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/abtest/ABTestConfig$Builder;Lcom/xiaomi/abtest/ABTestConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/abtest/ABTestConfig;-><init>(Lcom/xiaomi/abtest/ABTestConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTestConfig;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTestConfig;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getLoadConfigInterval()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/abtest/ABTestConfig;->d:I

    return p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTestConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ABTestConfig{mAppName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/abtest/ABTestConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUserId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/abtest/ABTestConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/abtest/ABTestConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLoadConfigInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/abtest/ABTestConfig;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
