.class Lcom/xiaomi/camera/core/ParallelDataZipper$3;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field final synthetic val$cameraType:I

.field final synthetic val$image:Landroid/media/Image;

.field final synthetic val$imageType:I

.field final synthetic val$isPoolImage:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Landroid/media/Image;IZI)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iput p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    iput-boolean p4, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    iput p5, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$400(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    iget-object v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v4, v1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J

    move-result-wide v4

    iget-object v6, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v6}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$200(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setImage: no capture data with timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    move v9, v6

    move v10, v9

    move v11, v10

    move v15, v11

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v9

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v10

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isSatFusionShot()Z

    move-result v11

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v6

    move v15, v7

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-object v12, v3

    move v13, v9

    move v14, v10

    move/from16 v18, v15

    move v15, v11

    move/from16 v16, v18

    move/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZZZZ)V

    iget-object v12, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v12}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$400(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v12

    invoke-virtual {v12, v1, v2, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    move/from16 v18, v15

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v4

    if-eq v4, v9, :cond_2

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setImage: update stream number with: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    :cond_2
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isRequireTuningData()Z

    move-result v4

    if-eq v4, v10, :cond_3

    invoke-virtual {v3, v10}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    :cond_3
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isSatFusionShot()Z

    move-result v4

    if-eq v4, v11, :cond_4

    invoke-virtual {v3, v11}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsSatFusionShot(Z)V

    :cond_4
    move/from16 v4, v18

    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHdrSrShot()Z

    move-result v5

    if-eq v5, v6, :cond_5

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setImage: timestamp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", streamNum="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fusion = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasCaptureData = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", HdrSr = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_7

    iget v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iget-boolean v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-virtual {v3, v1, v7, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iget-boolean v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-virtual {v3, v1, v8, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iget v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    iget-boolean v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-virtual {v3, v1, v2, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    :goto_2
    iget-object v0, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v0, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void

    :catch_0
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "join: image is closed!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
