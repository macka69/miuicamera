.class final Ljava8/util/concurrent/CompletableFuture$MinimalStage;
.super Ljava8/util/concurrent/CompletableFuture;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MinimalStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public cancel(Z)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public completeAsync(Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public completeAsync(Ljava8/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNumberOfDependents()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public isCancelled()Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isCompletedExceptionally()Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isDone()Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public join()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    new-instance p0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    return-object p0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance p0, Ljava8/util/concurrent/CompletableFuture;

    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
