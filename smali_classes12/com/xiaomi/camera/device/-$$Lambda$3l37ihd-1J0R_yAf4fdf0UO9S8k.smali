.class public final synthetic Lcom/xiaomi/camera/device/-$$Lambda$3l37ihd-1J0R_yAf4fdf0UO9S8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/camera/device/callable/CameraCallable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/-$$Lambda$3l37ihd-1J0R_yAf4fdf0UO9S8k;->f$0:Lcom/xiaomi/camera/device/callable/CameraCallable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/device/-$$Lambda$3l37ihd-1J0R_yAf4fdf0UO9S8k;->f$0:Lcom/xiaomi/camera/device/callable/CameraCallable;

    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->call()Lcom/xiaomi/camera/device/callable/CallableReturn;

    move-result-object p0

    return-object p0
.end method
