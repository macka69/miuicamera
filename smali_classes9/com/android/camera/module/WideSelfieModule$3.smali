.class Lcom/android/camera/module/WideSelfieModule$3;
.super Ljava/lang/Object;
.source "WideSelfieModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/WideSelfieModule;->startWideSelfieShooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/WideSelfieModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTakenFinished(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureBurstFinished success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

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

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p2}, Lcom/android/camera/module/WideSelfieModule;->access$500(Lcom/android/camera/module/WideSelfieModule;)[B

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p1, v1}, Lcom/arcsoft/camera/utils/ToolUtil;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/module/WideSelfieModule;->access$502(Lcom/android/camera/module/WideSelfieModule;[B)[B

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->access$200(Lcom/android/camera/module/WideSelfieModule;)Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->onBurstCapture(Landroid/media/Image;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
