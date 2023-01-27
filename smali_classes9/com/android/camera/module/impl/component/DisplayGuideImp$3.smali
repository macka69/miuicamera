.class Lcom/android/camera/module/impl/component/DisplayGuideImp$3;
.super Ljava/lang/Object;
.source "DisplayGuideImp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/DisplayGuideImp;->showFrontFacingDisplayFoldTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/DisplayGuideImp;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp$3;->this$0:Lcom/android/camera/module/impl/component/DisplayGuideImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc5

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchCameraPicker()V

    :cond_0
    return-void
.end method
