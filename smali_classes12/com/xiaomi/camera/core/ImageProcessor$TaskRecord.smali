.class Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRecord"
.end annotation


# instance fields
.field processStartTime:J

.field taskDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/TaskData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/camera/core/ImageProcessor;

.field timestamp:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    iput-wide p4, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTaskData(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
