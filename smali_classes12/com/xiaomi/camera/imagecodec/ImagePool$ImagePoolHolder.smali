.class Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImagePoolHolder"
.end annotation


# static fields
.field static sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->access$300(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImagePoolHolder;->sInstance:Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->access$400(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
