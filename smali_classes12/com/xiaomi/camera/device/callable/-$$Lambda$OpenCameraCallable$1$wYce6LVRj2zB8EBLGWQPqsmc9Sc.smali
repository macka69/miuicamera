.class public final synthetic Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$wYce6LVRj2zB8EBLGWQPqsmc9Sc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$wYce6LVRj2zB8EBLGWQPqsmc9Sc;->f$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iput-object p2, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$wYce6LVRj2zB8EBLGWQPqsmc9Sc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$wYce6LVRj2zB8EBLGWQPqsmc9Sc;->f$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$wYce6LVRj2zB8EBLGWQPqsmc9Sc;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->lambda$onOpened$5$OpenCameraCallable$1(Ljava/lang/String;)V

    return-void
.end method
