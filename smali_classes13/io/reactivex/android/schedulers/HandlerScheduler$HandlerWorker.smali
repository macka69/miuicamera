.class final Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/android/schedulers/HandlerScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerWorker"
.end annotation


# instance fields
.field private volatile disposed:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    iput-object p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    iget-object v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    return p0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "run == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
