.class Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module$PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiUpdateRunnable"
.end annotation


# instance fields
.field private mDetectResult:I

.field final synthetic this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    const/4 v1, -0x3

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_8

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$6000(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/panorama/PositionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/panorama/PositionDetector;->getFrameRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame_rect = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3400(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3400(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3400(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$3400(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$4400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mPreviewImage is null in UiUpdateRunnable"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x2

    div-int/2addr v2, v4

    invoke-static {v0, v2}, Lcom/android/camera/module/Panorama3Module;->access$6202(Lcom/android/camera/module/Panorama3Module;I)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$6200(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDirectionPosition(Landroid/graphics/Point;I)V

    iget p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    if-eq p0, v4, :cond_6

    const/4 p0, 0x0

    invoke-interface {v0, p0, p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDirectionTooFast(ZI)V

    goto :goto_1

    :cond_6
    const/16 p0, 0x1770

    invoke-interface {v0, v3, p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDirectionTooFast(ZI)V

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_2
    iget v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    if-eq v0, v3, :cond_9

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopPanoramaShooting due to detect result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    if-eq v0, v1, :cond_c

    if-eq v0, v2, :cond_b

    if-eq v0, v3, :cond_a

    const-string/jumbo v0, "unknown"

    goto :goto_3

    :cond_a
    const-string/jumbo v0, "stop_capture_complete"

    goto :goto_3

    :cond_b
    const-string/jumbo v0, "stop_capture_reverse"

    goto :goto_3

    :cond_c
    const-string/jumbo v0, "stop_capture_out_of_range"

    :goto_3
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0, v3, v0}, Lcom/android/camera/module/Panorama3Module;->access$5200(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V

    return-void
.end method

.method public setDetectResult(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    return-void
.end method
