.class Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;
.super Ljava/lang/Object;
.source "FragmentCloneProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showExitConfirm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

.field final synthetic val$exitToModeList:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    iput-boolean p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;->val$exitToModeList:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "FragmentCloneProcess"

    const-string/jumbo v0, "showExitConfirm onClick positive"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;->val$exitToModeList:Z

    const/16 v0, 0x1a3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->enableUseGuideMenu(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onExitClicked()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-virtual {p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resetToPreview()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    iget-object v1, p1, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onGiveUpClicked()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideExitDialog()Z

    return-void
.end method
