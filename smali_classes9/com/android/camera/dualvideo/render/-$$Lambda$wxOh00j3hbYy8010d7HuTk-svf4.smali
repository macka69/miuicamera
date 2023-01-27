.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$wxOh00j3hbYy8010d7HuTk-svf4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItemInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$wxOh00j3hbYy8010d7HuTk-svf4;->f$0:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$wxOh00j3hbYy8010d7HuTk-svf4;->f$0:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->enterOrExit(Lio/reactivex/SingleEmitter;)V

    return-void
.end method
