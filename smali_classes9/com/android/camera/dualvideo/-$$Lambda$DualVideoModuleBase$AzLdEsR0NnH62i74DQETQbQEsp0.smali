.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$AzLdEsR0NnH62i74DQETQbQEsp0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$AzLdEsR0NnH62i74DQETQbQEsp0;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$AzLdEsR0NnH62i74DQETQbQEsp0;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$addViewForGestureRecognize$24$DualVideoModuleBase(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
