.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$h0pKR6RTZX6Y7dmu4KeSr9Si-xQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$h0pKR6RTZX6Y7dmu4KeSr9Si-xQ;->f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$h0pKR6RTZX6Y7dmu4KeSr9Si-xQ;->f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$stopRecorder$15$DualVideoRecordModule(Ljava/lang/Boolean;)V

    return-void
.end method
