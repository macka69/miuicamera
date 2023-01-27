.class final Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;
.super Ljava8/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniComposeExceptionally"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field fn:Ljava8/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava8/util/function/Function;

    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v3, :cond_5

    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava8/util/function/Function;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v3, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_4

    instance-of v5, v2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v5, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    if-gtz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v4, v5}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava8/util/concurrent/CompletionStage;

    invoke-interface {v2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v2

    iget-object v4, v2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava8/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v4, v3, v2}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v4}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    iget-object v2, v3, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    return-object v1

    :catchall_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava8/util/function/Function;

    invoke-virtual {v3, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->postFire(Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method
