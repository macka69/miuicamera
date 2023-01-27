.class public final Ljava8/util/concurrent/CompletionStages;
.super Ljava/lang/Object;
.source "CompletionStages.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionallyAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletionStages$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/CompletionStages$1;-><init>(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava8/util/concurrent/CompletionStage;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    invoke-static {}, Ljava8/util/function/Functions;->identity()Ljava8/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/concurrent/CompletionStage;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionallyAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletionStages$2;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/concurrent/CompletionStages$2;-><init>(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0}, Ljava8/util/concurrent/CompletionStage;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    invoke-static {}, Ljava8/util/function/Functions;->identity()Ljava8/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/concurrent/CompletionStage;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionallyCompose(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletionStages$3;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/CompletionStages$3;-><init>(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava8/util/concurrent/CompletionStage;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    invoke-static {}, Ljava8/util/function/Functions;->identity()Ljava8/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/concurrent/CompletionStage;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionallyComposeAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletionStages$4;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/CompletionStages$4;-><init>(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava8/util/concurrent/CompletionStage;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    invoke-static {}, Ljava8/util/function/Functions;->identity()Ljava8/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/concurrent/CompletionStage;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionallyComposeAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletionStages$5;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/concurrent/CompletionStages$5;-><init>(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0}, Ljava8/util/concurrent/CompletionStage;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    invoke-static {}, Ljava8/util/function/Functions;->identity()Ljava8/util/function/Function;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/concurrent/CompletionStage;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method
