.class public final synthetic Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$hFyrkyBN1VpKpqB7cW5C92h8D-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$hFyrkyBN1VpKpqB7cW5C92h8D-o;->f$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iput-object p2, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$hFyrkyBN1VpKpqB7cW5C92h8D-o;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$hFyrkyBN1VpKpqB7cW5C92h8D-o;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$hFyrkyBN1VpKpqB7cW5C92h8D-o;->f$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$hFyrkyBN1VpKpqB7cW5C92h8D-o;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/xiaomi/camera/device/callable/-$$Lambda$OpenCameraCallable$1$hFyrkyBN1VpKpqB7cW5C92h8D-o;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->lambda$onError$3$OpenCameraCallable$1(Ljava/lang/String;I)V

    return-void
.end method
