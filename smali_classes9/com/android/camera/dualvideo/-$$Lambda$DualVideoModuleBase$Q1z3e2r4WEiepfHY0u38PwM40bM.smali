.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Q1z3e2r4WEiepfHY0u38PwM40bM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Q1z3e2r4WEiepfHY0u38PwM40bM;->f$0:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Q1z3e2r4WEiepfHY0u38PwM40bM;->f$0:Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$addViewForGestureRecognize$23(Landroid/view/MotionEvent;Lcom/android/camera/dualvideo/render/RenderManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
