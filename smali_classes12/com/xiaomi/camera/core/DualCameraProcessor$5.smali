.class Lcom/xiaomi/camera/core/DualCameraProcessor$5;
.super Ljava/lang/Object;
.source "DualCameraProcessor.java"

# interfaces
.implements Lcom/xiaomi/engine/TaskSession$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/DualCameraProcessor;->processCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Landroid/media/Image;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/DualCameraProcessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/DualCameraProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/DualCameraProcessor$5;->this$0:Lcom/xiaomi/camera/core/DualCameraProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameProcessed(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/core/DualCameraProcessor;->access$000()Ljava/lang/String;

    move-result-object p0

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "onFrameProcessed: [%d]:{%s}"

    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
