.class Lcom/android/camera/module/Panorama3Module$5;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Panorama3Module;->startPanoramaShooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$5;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTakenFinished(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureBurstFinished success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureTaken>>image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/module/Panorama3Module$5;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/camera/panorama/Camera2Image;

    invoke-direct {p2, p1}, Lcom/android/camera/panorama/Camera2Image;-><init>(Landroid/media/Image;)V

    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$5;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/PanoramaState;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/panorama/PanoramaState;->onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string p2, "set mPanoramaState PanoramaState"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$5;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance p1, Lcom/android/camera/panorama/PanoramaState;

    invoke-direct {p1}, Lcom/android/camera/panorama/PanoramaState;-><init>()V

    invoke-static {p0, p1}, Lcom/android/camera/module/Panorama3Module;->access$602(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/PanoramaState;)Lcom/android/camera/panorama/PanoramaState;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
