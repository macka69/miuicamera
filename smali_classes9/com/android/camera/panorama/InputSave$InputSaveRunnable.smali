.class Lcom/android/camera/panorama/InputSave$InputSaveRunnable;
.super Ljava/lang/Object;
.source "InputSave.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/panorama/InputSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputSaveRunnable"
.end annotation


# instance fields
.field final imageFormat:Ljava/lang/String;

.field mImageBytes:[B

.field final synthetic this$0:Lcom/android/camera/panorama/InputSave;


# direct methods
.method public constructor <init>(Lcom/android/camera/panorama/InputSave;Lcom/android/camera/panorama/CaptureImage;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->this$0:Lcom/android/camera/panorama/InputSave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->imageFormat:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    const-string p2, "InputSave"

    if-nez p1, :cond_0

    const-string p0, "save failed, image is null"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "X"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", imageFormat = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->imageFormat:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->imageFormat:Ljava/lang/String;

    const-string v0, "YUV420_PLANAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p2, Lcom/android/camera/panorama/ConvertFromYuv420Planar;

    invoke-direct {p2}, Lcom/android/camera/panorama/ConvertFromYuv420Planar;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/camera/panorama/ConvertFromYuv420Planar;->image2bytes(Landroid/media/Image;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->mImageBytes:[B

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->imageFormat:Ljava/lang/String;

    const-string v0, "YUV420_SEMIPLANAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p2, Lcom/android/camera/panorama/ConvertFromYuv420SemiPlanar;

    invoke-direct {p2}, Lcom/android/camera/panorama/ConvertFromYuv420SemiPlanar;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/camera/panorama/ConvertFromYuv420SemiPlanar;->image2bytes(Landroid/media/Image;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->mImageBytes:[B

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->imageFormat:Ljava/lang/String;

    const-string v0, "YVU420_SEMIPLANAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p2, Lcom/android/camera/panorama/ConvertFromYvu420SemiPlanar;

    invoke-direct {p2}, Lcom/android/camera/panorama/ConvertFromYvu420SemiPlanar;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/camera/panorama/ConvertFromYvu420SemiPlanar;->image2bytes(Landroid/media/Image;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->mImageBytes:[B

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->mImageBytes:[B

    const-string p0, "Image format error."

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->mImageBytes:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->this$0:Lcom/android/camera/panorama/InputSave;

    iget-object p0, p0, Lcom/android/camera/panorama/InputSave$InputSaveRunnable;->imageFormat:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/camera/panorama/InputSave;->access$000(Lcom/android/camera/panorama/InputSave;[BLjava/lang/String;)V

    :cond_0
    return-void
.end method
