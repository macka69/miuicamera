.class Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TipState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method activeTip()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method deactivateTip()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$702(Lcom/android/camera/fragment/FragmentBottomPopupTips;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0, v0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$800(Lcom/android/camera/fragment/FragmentBottomPopupTips;IILjava/util/List;)V

    return-void
.end method

.method deactivatingTip()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v1, v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
