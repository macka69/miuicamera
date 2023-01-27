.class public Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "DisplayTipDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayFoldTipDialog"


# instance fields
.field private mAnimRawResId:I

.field private mExitView:Landroid/widget/FrameLayout;

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTextView:Landroid/widget/TextView;

.field private mTipContentResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0145

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d002e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0145

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mExitView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a0239

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget p3, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mAnimRawResId:I

    if-lez p3, :cond_0

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    iget p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTipContentResId:I

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2
    return-object p1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimRawResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mAnimRawResId:I

    return-void
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTipText(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTipContentResId:I

    return-void
.end method
