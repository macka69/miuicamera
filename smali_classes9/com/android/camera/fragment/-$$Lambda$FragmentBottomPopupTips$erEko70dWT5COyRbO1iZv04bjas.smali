.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$erEko70dWT5COyRbO1iZv04bjas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$erEko70dWT5COyRbO1iZv04bjas;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$erEko70dWT5COyRbO1iZv04bjas;->f$0:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$updateTipImage$2(Landroid/widget/ImageView;)V

    return-void
.end method
