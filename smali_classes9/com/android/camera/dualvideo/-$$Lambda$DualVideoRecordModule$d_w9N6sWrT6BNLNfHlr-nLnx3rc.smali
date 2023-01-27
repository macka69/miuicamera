.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$d_w9N6sWrT6BNLNfHlr-nLnx3rc;
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

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$d_w9N6sWrT6BNLNfHlr-nLnx3rc;->f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$d_w9N6sWrT6BNLNfHlr-nLnx3rc;->f$0:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$releaseRemote$3$DualVideoRecordModule(Ljava/lang/Long;)V

    return-void
.end method
