.class Lcom/android/camera/module/TimeFreezeModule$2;
.super Landroid/os/CountDownTimer;
.source "TimeFreezeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/TimeFreezeModule;->startTimeFreezeCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/TimeFreezeModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/TimeFreezeModule;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/TimeFreezeModule$2;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/TimeFreezeModule$2;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {p0}, Lcom/android/camera/module/TimeFreezeModule;->access$000(Lcom/android/camera/module/TimeFreezeModule;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onCountDownFinished()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
