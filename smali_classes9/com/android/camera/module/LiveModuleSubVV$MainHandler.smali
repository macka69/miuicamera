.class Lcom/android/camera/module/LiveModuleSubVV$MainHandler;
.super Landroid/os/Handler;
.source "LiveModuleSubVV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/LiveModuleSubVV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/LiveModuleSubVV;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x80

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/16 v3, 0x9

    if-eq v0, v3, :cond_6

    const/16 v3, 0x11

    if-eq v0, v3, :cond_5

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x23

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 p1, 0x33

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-static {p0, v0, v2}, Lcom/android/camera/module/LiveModuleSubVV;->access$200(Lcom/android/camera/module/LiveModuleSubVV;ZZ)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-static {p0}, Lcom/android/camera/module/LiveModuleSubVV;->access$100(Lcom/android/camera/module/LiveModuleSubVV;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-static {p1}, Lcom/android/camera/module/LiveModuleSubVV;->access$000(Lcom/android/camera/module/LiveModuleSubVV;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1388

    cmp-long p1, v0, v4

    if-gez p1, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_9
    :goto_2
    return-void
.end method
