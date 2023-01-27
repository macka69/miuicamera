.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$eoj69VUUgJq-_xEh3Au--rZG8HM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$eoj69VUUgJq-_xEh3Au--rZG8HM;->f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$eoj69VUUgJq-_xEh3Au--rZG8HM;->f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$stopRecorder$14$DualVideoRecordModule(Lio/reactivex/SingleEmitter;)V

    return-void
.end method
