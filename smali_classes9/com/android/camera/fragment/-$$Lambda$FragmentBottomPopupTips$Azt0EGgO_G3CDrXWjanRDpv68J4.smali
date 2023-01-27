.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

.field public final synthetic f$1:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;->f$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iput-object p2, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;->f$1:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    iput-object p3, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;->f$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;->f$1:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    iget-object p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$updateExtraTipForZoom$3$FragmentBottomPopupTips(Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V

    return-void
.end method
