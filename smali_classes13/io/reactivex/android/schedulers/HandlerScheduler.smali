.class final Lio/reactivex/android/schedulers/HandlerScheduler;
.super Lio/reactivex/Scheduler;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;,
        Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 1

    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;

    iget-object p0, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0}, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "run == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
