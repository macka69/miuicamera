.class public final synthetic Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$BWD0DyQgE6l69v63FaqfphHOaCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$BWD0DyQgE6l69v63FaqfphHOaCo;->f$0:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$BWD0DyQgE6l69v63FaqfphHOaCo;->f$0:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    check-cast p1, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->lambda$stopRecorder$2$MultiRecorderManager(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
