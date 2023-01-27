.class public interface abstract Ljava8/util/concurrent/CompletionStage;
.super Ljava/lang/Object;
.source "CompletionStage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method
