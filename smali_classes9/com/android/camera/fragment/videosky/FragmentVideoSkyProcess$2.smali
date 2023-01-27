.class Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;
.super Ljava/lang/Object;
.source "FragmentVideoSkyProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->showExitConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string/jumbo v1, "showExitConfirm onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;->onExitClicked()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->resetToPreview(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->access$000(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-virtual {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->prepare()V

    return-void
.end method
