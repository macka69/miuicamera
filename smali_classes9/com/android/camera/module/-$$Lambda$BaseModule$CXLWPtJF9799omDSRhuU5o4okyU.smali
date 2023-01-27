.class public final synthetic Lcom/android/camera/module/-$$Lambda$BaseModule$CXLWPtJF9799omDSRhuU5o4okyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$BaseModule$CXLWPtJF9799omDSRhuU5o4okyU;->f$0:Lcom/android/camera/module/BaseModule;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$BaseModule$CXLWPtJF9799omDSRhuU5o4okyU;->f$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->lambda$changeZoom4Crop$3$BaseModule(Landroid/animation/ValueAnimator;)V

    return-void
.end method
