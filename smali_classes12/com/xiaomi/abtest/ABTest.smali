.class public Lcom/xiaomi/abtest/ABTest;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ABTest"


# instance fields
.field private b:Lcom/xiaomi/abtest/ABTestConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abTestWithConfig(Lcom/xiaomi/abtest/ABTestConfig;)Lcom/xiaomi/abtest/ABTest;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abTestWithConfig start,config :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/abtest/ABTestConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABTest"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/abtest/ABTest;

    invoke-direct {v0}, Lcom/xiaomi/abtest/ABTest;-><init>()V

    iput-object p0, v0, Lcom/xiaomi/abtest/ABTest;->b:Lcom/xiaomi/abtest/ABTestConfig;

    invoke-static {}, Lcom/xiaomi/abtest/a/a;->a()Lcom/xiaomi/abtest/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/abtest/ABTestConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/abtest/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/abtest/ABTestConfig;->getLoadConfigInterval()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/abtest/ABTestConfig;->getLoadConfigInterval()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/xiaomi/abtest/a/a;->a()Lcom/xiaomi/abtest/a/a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/xiaomi/abtest/a/a;->a(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/abtest/a/a;->a()Lcom/xiaomi/abtest/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/abtest/ABTestConfig;->getLoadConfigInterval()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/xiaomi/abtest/a/a;->a(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static setIsLoadConfigWhenBackground(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/abtest/a/a;->a()Lcom/xiaomi/abtest/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/abtest/a/a;->a(Z)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {}, Lcom/xiaomi/abtest/a/a;->a()Lcom/xiaomi/abtest/a/a;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTest;->b:Lcom/xiaomi/abtest/ABTestConfig;

    invoke-virtual {p0}, Lcom/xiaomi/abtest/ABTestConfig;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/abtest/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public getExperiments(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/abtest/ExperimentInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/abtest/a/a;->a()Lcom/xiaomi/abtest/a/a;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/abtest/b/b;

    invoke-direct {v1}, Lcom/xiaomi/abtest/b/b;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/abtest/ABTest;->b:Lcom/xiaomi/abtest/ABTestConfig;

    invoke-virtual {v2}, Lcom/xiaomi/abtest/ABTestConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/abtest/b/b;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/abtest/ABTest;->b:Lcom/xiaomi/abtest/ABTestConfig;

    invoke-virtual {v2}, Lcom/xiaomi/abtest/ABTestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/abtest/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaomi/abtest/b/b;->a(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/xiaomi/abtest/ABTest;->b:Lcom/xiaomi/abtest/ABTestConfig;

    invoke-virtual {p0}, Lcom/xiaomi/abtest/ABTestConfig;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaomi/abtest/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/abtest/a/a;->a(Lcom/xiaomi/abtest/b/b;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
