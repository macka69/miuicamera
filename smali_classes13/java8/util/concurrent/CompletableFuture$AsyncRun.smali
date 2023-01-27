.class final Ljava8/util/concurrent/CompletableFuture$AsyncRun;
.super Ljava8/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava8/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava8/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field dep:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->run()V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->getRawResult()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    iget-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v0}, Ljava8/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_1
    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncRun;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
