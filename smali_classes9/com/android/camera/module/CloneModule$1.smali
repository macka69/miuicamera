.class Lcom/android/camera/module/CloneModule$1;
.super Landroid/os/CountDownTimer;
.source "CloneModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CloneModule;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CloneModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CloneModule;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CloneModule$1;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/CloneModule$1;->this$0:Lcom/android/camera/module/CloneModule;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CloneModule;->onShutterButtonClick(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/CloneModule$1;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/CloneModule;->access$500(Lcom/android/camera/module/CloneModule;J)V

    return-void
.end method
