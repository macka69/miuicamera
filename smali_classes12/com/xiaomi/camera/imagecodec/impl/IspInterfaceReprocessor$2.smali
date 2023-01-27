.class Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;
.super Ljava/lang/Object;
.source "IspInterfaceReprocessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->reprocessImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

.field final synthetic val$firstInputImage:Landroid/media/Image;

.field final synthetic val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

.field final synthetic val$outputFormat:I

.field final synthetic val$rawInput:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/media/Image;ZILcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$firstInputImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$rawInput:Z

    iput p4, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$outputFormat:I

    iput-object p5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reprocessImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$firstInputImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$firstInputImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage: skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$firstInputImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$rawInput:Z

    const/16 v2, 0x100

    if-nez v1, :cond_1

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$outputFormat:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuv2jpeg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, p0}, Lcom/xiaomi/camera/isp/IspInterface;->yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$rawInput:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$outputFormat:I

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw2jpeg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, p0}, Lcom/xiaomi/camera/isp/IspInterface;->rawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$rawInput:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$outputFormat:I

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw2yuv"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, p0}, Lcom/xiaomi/camera/isp/IspInterface;->rawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuv2jpeg default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, p0}, Lcom/xiaomi/camera/isp/IspInterface;->yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
