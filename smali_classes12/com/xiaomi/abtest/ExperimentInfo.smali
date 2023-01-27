.class public Lcom/xiaomi/abtest/ExperimentInfo;
.super Ljava/lang/Object;


# instance fields
.field public expId:I

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public xpath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/abtest/ExperimentInfo;->expId:I

    return p0
.end method

.method public getParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/abtest/ExperimentInfo;->params:Ljava/util/Map;

    return-object p0
.end method

.method public getXpath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/ExperimentInfo;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public setExpId(I)Lcom/xiaomi/abtest/ExperimentInfo;
    .locals 0

    iput p1, p0, Lcom/xiaomi/abtest/ExperimentInfo;->expId:I

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/xiaomi/abtest/ExperimentInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/abtest/ExperimentInfo;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/abtest/ExperimentInfo;->params:Ljava/util/Map;

    return-object p0
.end method

.method public setXpath(Ljava/lang/String;)Lcom/xiaomi/abtest/ExperimentInfo;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/ExperimentInfo;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExperimentInfo{expId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/abtest/ExperimentInfo;->expId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xpath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/abtest/ExperimentInfo;->xpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/abtest/ExperimentInfo;->params:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
