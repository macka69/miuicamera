.class public final synthetic Lcom/xiaomi/camera/device/callable/-$$Lambda$CameraCallable$2O0paGr18YHXBSq2nb9eXt69QEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/camera/device/callable/CameraCallable;

.field public final synthetic f$1:Lcom/xiaomi/camera/device/callable/CallableReturn;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/CameraCallable;Lcom/xiaomi/camera/device/callable/CallableReturn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$CameraCallable$2O0paGr18YHXBSq2nb9eXt69QEk;->f$0:Lcom/xiaomi/camera/device/callable/CameraCallable;

    iput-object p2, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$CameraCallable$2O0paGr18YHXBSq2nb9eXt69QEk;->f$1:Lcom/xiaomi/camera/device/callable/CallableReturn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$CameraCallable$2O0paGr18YHXBSq2nb9eXt69QEk;->f$0:Lcom/xiaomi/camera/device/callable/CameraCallable;

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$CameraCallable$2O0paGr18YHXBSq2nb9eXt69QEk;->f$1:Lcom/xiaomi/camera/device/callable/CallableReturn;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->lambda$run$0$CameraCallable(Lcom/xiaomi/camera/device/callable/CallableReturn;)V

    return-void
.end method
