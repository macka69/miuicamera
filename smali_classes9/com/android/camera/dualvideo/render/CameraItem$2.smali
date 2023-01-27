.class Lcom/android/camera/dualvideo/render/CameraItem$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "CameraItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/render/CameraItem;->enterOrExit(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;

.field final synthetic val$singleEmitter:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$2;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem$2;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$2;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    int-to-float p2, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p2, p4

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$202(Lcom/android/camera/dualvideo/render/CameraItem;F)F

    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$2;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/16 p2, 0x3e8

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$302(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$2;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1, p4}, Lcom/android/camera/dualvideo/render/CameraItem;->access$402(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$2;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$2;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
