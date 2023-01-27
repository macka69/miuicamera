.class Lcom/xiaomi/camera/core/PostProcessor$2;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/PostProcessor;->deleteProcessingRecord(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;

.field final synthetic val$timestamps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$2;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$2;->val$timestamps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$2;->val$timestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$2;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->deleteRecordByPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
