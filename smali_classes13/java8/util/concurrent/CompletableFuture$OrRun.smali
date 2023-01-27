.class final Ljava8/util/concurrent/CompletableFuture$OrRun;
.super Ljava8/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava8/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Ljava8/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v3, :cond_4

    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture$BiCompletion;->snd:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v4, :cond_4

    iget-object v5, v3, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_0

    iget-object v5, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_3

    if-gtz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result v6

    if-nez v6, :cond_1

    return-object v1

    :cond_1
    instance-of v6, v5, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v6, v6, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    invoke-virtual {v0, v6, v5}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v0}, Ljava8/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v2}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_3
    :goto_0
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$BiCompletion;->snd:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v4, p1}, Ljava8/util/concurrent/CompletableFuture;->postFire(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method
