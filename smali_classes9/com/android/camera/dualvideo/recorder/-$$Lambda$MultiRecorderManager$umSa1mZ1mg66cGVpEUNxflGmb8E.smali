.class public final synthetic Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$umSa1mZ1mg66cGVpEUNxflGmb8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lio/reactivex/SingleEmitter;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/SingleEmitter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$umSa1mZ1mg66cGVpEUNxflGmb8E;->f$0:Lio/reactivex/SingleEmitter;

    iput-wide p2, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$umSa1mZ1mg66cGVpEUNxflGmb8E;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$umSa1mZ1mg66cGVpEUNxflGmb8E;->f$0:Lio/reactivex/SingleEmitter;

    iget-wide v1, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$umSa1mZ1mg66cGVpEUNxflGmb8E;->f$1:J

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->lambda$stopRecorder$5(Lio/reactivex/SingleEmitter;JLjava/lang/Boolean;)V

    return-void
.end method
