.class Lcom/android/camera/fragment/FragmentBottomPopupTips$2;
.super Landroid/os/Handler;
.source "FragmentBottomPopupTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: 2"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivateTip()V

    :goto_0
    return-void
.end method
