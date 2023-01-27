.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$PresentationDisplay$anrp-PX6yzA6eMfKOAekbMldCpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/CameraPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/CameraPresentation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$PresentationDisplay$anrp-PX6yzA6eMfKOAekbMldCpQ;->f$0:Lcom/android/camera/fragment/CameraPresentation;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/-$$Lambda$PresentationDisplay$anrp-PX6yzA6eMfKOAekbMldCpQ;->f$0:Lcom/android/camera/fragment/CameraPresentation;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/PresentationDisplay;->lambda$show$0(Lcom/android/camera/fragment/CameraPresentation;Landroid/content/DialogInterface;)V

    return-void
.end method
