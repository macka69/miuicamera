.class public Ljava8/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava8/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava8/util/concurrent/CompletableFuture$Canceller;,
        Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava8/util/concurrent/CompletableFuture$Timeout;,
        Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava8/util/concurrent/CompletableFuture$Delayer;,
        Ljava8/util/concurrent/CompletableFuture$Signaller;,
        Ljava8/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava8/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava8/util/concurrent/CompletableFuture$AnyOf;,
        Ljava8/util/concurrent/CompletableFuture$OrRun;,
        Ljava8/util/concurrent/CompletableFuture$OrAccept;,
        Ljava8/util/concurrent/CompletableFuture$OrApply;,
        Ljava8/util/concurrent/CompletableFuture$BiRelay;,
        Ljava8/util/concurrent/CompletableFuture$BiRun;,
        Ljava8/util/concurrent/CompletableFuture$BiAccept;,
        Ljava8/util/concurrent/CompletableFuture$BiApply;,
        Ljava8/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava8/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava8/util/concurrent/CompletableFuture$UniCompose;,
        Ljava8/util/concurrent/CompletableFuture$UniRelay;,
        Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;,
        Ljava8/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava8/util/concurrent/CompletableFuture$UniHandle;,
        Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;,
        Ljava8/util/concurrent/CompletableFuture$UniRun;,
        Ljava8/util/concurrent/CompletableFuture$UniAccept;,
        Ljava8/util/concurrent/CompletableFuture$UniApply;,
        Ljava8/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava8/util/concurrent/CompletableFuture$Completion;,
        Ljava8/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava8/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava8/util/concurrent/CompletableFuture$AltResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Ljava8/util/concurrent/CompletionStage<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ASYNC:I = 0x1

.field private static final ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final NESTED:I = -0x1

.field private static final NEXT:J

.field static final NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

.field private static final RESULT:J

.field private static final STACK:J

.field static final SYNC:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final USE_COMMON_POOL:Z


# instance fields
.field volatile result:Ljava/lang/Object;

.field volatile stack:Ljava8/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Ljava8/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->commonPool()Ljava8/util/concurrent/ForkJoinPool;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    :goto_1
    sput-object v0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    sget-object v0, Ljava8/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-class v1, Ljava8/util/concurrent/CompletableFuture;

    const-string v2, "result"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava8/util/concurrent/CompletableFuture;

    const-string v2, "stack"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/CompletableFuture;->STACK:J

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava8/util/concurrent/CompletableFuture$Completion;

    const-string v2, "next"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/CompletableFuture;->NEXT:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-void
.end method

.method public static varargs allOf([Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava8/util/concurrent/CompletableFuture;->andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;II)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    if-le p1, p2, :cond_0

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    :cond_0
    add-int v1, p1, p2

    ushr-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    aget-object v2, p0, p1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v1}, Ljava8/util/concurrent/CompletableFuture;->andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_9

    if-ne p1, p2, :cond_2

    move-object p0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne p2, v1, :cond_3

    aget-object p0, p0, p2

    goto :goto_1

    :cond_3
    invoke-static {p0, v1, p2}, Ljava8/util/concurrent/CompletableFuture;->andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_9

    iget-object p1, v2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p1, :cond_8

    iget-object p2, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    instance-of p0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p0, :cond_5

    move-object p0, p1

    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez p0, :cond_6

    :cond_5
    instance-of p0, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p0, :cond_7

    move-object p0, p2

    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz p0, :cond_7

    move-object p1, p2

    :cond_6
    invoke-static {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    :cond_8
    :goto_2
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$BiRelay;

    invoke-direct {p1, v0, v2, p0}, Ljava8/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, p0, p1}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_3
    return-object v0

    :cond_9
    const/4 p0, 0x0

    throw p0
.end method

.method public static varargs anyOf([Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    if-nez v0, :cond_0

    new-instance p0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    goto :goto_0

    :cond_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->uniCopyStage(Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    iget-object v4, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    new-instance p0, Ljava8/util/concurrent/CompletableFuture;

    invoke-static {v4}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, [Ljava8/util/concurrent/CompletableFuture;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava8/util/concurrent/CompletableFuture;

    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    array-length v3, p0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, p0, v4

    new-instance v6, Ljava8/util/concurrent/CompletableFuture$AnyOf;

    invoke-direct {v6, v0, v5, p0}, Ljava8/util/concurrent/CompletableFuture$AnyOf;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;[Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v3, :cond_7

    array-length v3, p0

    :goto_3
    if-ge v1, v3, :cond_7

    aget-object v4, p0, v1

    iget-object v4, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_6

    aget-object v4, p0, v1

    iget-object v4, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_5

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    goto :goto_4

    :cond_6
    add-int/2addr v1, v2

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method static asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AsyncRun;

    invoke-direct {v1, v0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Supplier<",
            "TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v1, v0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Supplier;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v7

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v7, v1, v2, p3, v0}, Ljava8/util/concurrent/CompletableFuture;->biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$BiAccept;)Z

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiAccept;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v7, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiAccept;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-virtual {p0, p2, v0}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_1
    return-object v7

    :cond_3
    throw v0
.end method

.method private biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v7

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v7, v1, v2, p3, v0}, Ljava8/util/concurrent/CompletableFuture;->biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$BiApply;)Z

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiApply;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v7, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiApply;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-virtual {p0, p2, v0}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_1
    return-object v7

    :cond_3
    throw v0
.end method

.method private biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v7

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v7, v1, v2, p3, v0}, Ljava8/util/concurrent/CompletableFuture;->biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava8/util/concurrent/CompletableFuture$BiRun;)Z

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiRun;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v7, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiRun;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, v0}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_1
    return-object v7

    :cond_3
    throw v0
.end method

.method static casNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static completedFuture(Ljava/lang/Object;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    if-nez p0, :cond_0

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static completedStage(Ljava/lang/Object;)Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    if-nez p0, :cond_0

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava8/util/concurrent/CompletionException;

    if-nez v1, :cond_0

    new-instance p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    new-instance v1, Ljava8/util/concurrent/CompletionException;

    invoke-direct {v1, v0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method static encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Ljava8/util/concurrent/CompletionException;

    if-nez v0, :cond_0

    new-instance p1, Ljava8/util/concurrent/CompletionException;

    invoke-direct {p1, p0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {p1, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method static encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;
    .locals 2

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    instance-of v1, p0, Ljava8/util/concurrent/CompletionException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava8/util/concurrent/CompletionException;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static failedFuture(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static failedStage(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V
    .locals 3

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/concurrent/CompletableFuture;->NEXT:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v6

    new-instance v7, Ljava8/util/concurrent/CompletableFuture$OrAccept;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava8/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Consumer;)V

    invoke-virtual {p0, p2, v7}, Ljava8/util/concurrent/CompletableFuture;->orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    return-object v6

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method private orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v6

    new-instance v7, Ljava8/util/concurrent/CompletableFuture$OrApply;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava8/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, p2, v7}, Ljava8/util/concurrent/CompletableFuture;->orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    return-object v6

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method private orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v6

    new-instance v7, Ljava8/util/concurrent/CompletableFuture$OrRun;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava8/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, v7}, Ljava8/util/concurrent/CompletableFuture;->orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    return-object v6

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method private static reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    if-eqz p0, :cond_4

    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava8/util/concurrent/CompletionException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Ljava/util/concurrent/CancellationException;

    throw p0

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private static reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava8/util/concurrent/CompletionException;

    if-eqz v0, :cond_1

    check-cast p0, Ljava8/util/concurrent/CompletionException;

    throw p0

    :cond_1
    new-instance v0, Ljava8/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Ljava/util/concurrent/CancellationException;

    throw p0

    :cond_3
    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    sget-boolean v0, Ljava8/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->commonPool()Ljava8/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static supplyAsync(Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static supplyAsync(Ljava8/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private timedGet(J)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    const-wide/16 v4, 0x1

    :cond_1
    const/4 v0, 0x0

    move-object v6, v1

    :cond_2
    :goto_0
    iget-object v7, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v7, :cond_7

    if-nez v6, :cond_4

    new-instance v12, Ljava8/util/concurrent/CompletableFuture$Signaller;

    const/4 v7, 0x1

    move-object v6, v12

    move-wide v8, p1

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljava8/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    instance-of v6, v6, Ljava8/util/concurrent/ForkJoinWorkerThread;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-static {v6, v12}, Ljava8/util/concurrent/ForkJoinPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    :cond_3
    move-object v6, v12

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0, v6}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-wide v8, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_6

    goto :goto_2

    :cond_6
    :try_start_0
    invoke-static {v6}, Ljava8/util/concurrent/ForkJoinPool;->managedBlock(Ljava8/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v8, 0x1

    iput-boolean v8, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    :goto_1
    iget-boolean v8, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v8, :cond_2

    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    iput-object v1, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-nez v7, :cond_8

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_8
    if-nez v7, :cond_9

    iget-object v7, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v7, :cond_a

    :cond_9
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_a
    if-nez v7, :cond_b

    if-eqz v6, :cond_c

    iget-boolean p0, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz p0, :cond_c

    :cond_b
    return-object v7

    :cond_c
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
.end method

.method private uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    instance-of v1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object p1, v2

    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {p1, v2, v0, p0, p3}, Ljava8/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p3, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Consumer;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    instance-of v1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object p1, v2

    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {p1, v2, v0, p0, p3}, Ljava8/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p3, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava8/util/concurrent/CompletableFuture;->encodeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniAsMinimalStage()Ljava8/util/concurrent/CompletableFuture$MinimalStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture$MinimalStage<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance p0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v2, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, v2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/concurrent/CompletionStage;

    invoke-interface {p0}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {p1, v0, p0}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v0, v1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method private uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TV;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v2, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_1
    move-object v1, v3

    :cond_2
    if-eqz p1, :cond_3

    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v1, v3, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-interface {p2, v1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/concurrent/CompletionStage;

    invoke-interface {p0}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {p1, v0, p0}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private static uniCopyStage(Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:TU;>(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :goto_0
    return-object v0
.end method

.method private uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v0, v1, p2, v2}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/lang/Object;Ljava8/util/function/Function;Ljava8/util/concurrent/CompletableFuture$UniExceptionally;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v0, v1, p2, v2}, Ljava8/util/concurrent/CompletableFuture;->uniHandle(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$UniHandle;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    instance-of v1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniRun;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0, p3}, Ljava8/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniRun;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v0, v1, p2, v2}, Ljava8/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private waitingGet(Z)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :cond_0
    :goto_0
    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_3

    if-nez v2, :cond_1

    new-instance v2, Ljava8/util/concurrent/CompletableFuture$Signaller;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v2

    move v5, p1

    invoke-direct/range {v4 .. v9}, Ljava8/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    instance-of v3, v3, Ljava8/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v3, v2}, Ljava8/util/concurrent/ForkJoinPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava8/util/concurrent/ForkJoinPool;->managedBlock(Ljava8/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v4, 0x1

    iput-boolean v4, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    :goto_1
    iget-boolean v4, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iput-object v0, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_4

    iget-boolean p1, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v3, :cond_7

    :cond_6
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_7
    return-object v3
.end method


# virtual methods
.method public acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
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
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method final biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$BiAccept;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiConsumer<",
            "-TR;-TS;>;",
            "Ljava8/util/concurrent/CompletableFuture$BiAccept<",
            "TR;TS;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    instance-of v0, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p2}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p2, v1

    :cond_3
    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p4}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result p4

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {p3, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method final biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$BiApply;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiFunction<",
            "-TR;-TS;+TT;>;",
            "Ljava8/util/concurrent/CompletableFuture$BiApply<",
            "TR;TS;TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    instance-of v0, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p2}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p2, v1

    :cond_3
    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p4}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result p4

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {p3, p1, p2}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method final biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava8/util/concurrent/CompletableFuture$BiRun;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Ljava8/util/concurrent/CompletableFuture$BiRun<",
            "**>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    :cond_0
    instance-of p1, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    move-object p1, p2

    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {p4}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method final bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    :cond_0
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {p0, p2}, Ljava8/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, p0}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :cond_4
    return-void
.end method

.method public cancel(Z)Z
    .locals 3

    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {p1, v2}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method final casStack(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method final cleanStack()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava8/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {p0, v1, v0}, Ljava8/util/concurrent/CompletableFuture;->casStack(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object p0, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v1}, Ljava8/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p0, v1, v0}, Ljava8/util/concurrent/CompletableFuture;->casNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    :cond_2
    return-void
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return p1
.end method

.method public completeAsync(Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava8/util/concurrent/CompletableFuture;->completeAsync(Ljava8/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public completeAsync(Ljava8/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
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

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Supplier;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 1

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return p1
.end method

.method final completeNull()Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    sget-object v5, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p4}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;

    invoke-direct {v1, p0, p1}, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    invoke-static {v1, p2, p3, p4}, Ljava8/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    :cond_0
    return-object p0
.end method

.method final completeRelay(Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method final completeThrowable(Ljava/lang/Throwable;)Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method final completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    invoke-static {p1, p2}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method final completeValue(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    if-nez p1, :cond_0

    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    move-object v5, p1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public copy()Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->uniCopyStage(Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public defaultExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p1, :cond_1

    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method final encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    return-object p1
.end method

.method public exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public exceptionallyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public exceptionallyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public exceptionallyCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public exceptionallyComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public exceptionallyComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNumberOfDependents()I
    .locals 1

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
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
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method final internalComplete(Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCompletedExceptionally()Z
    .locals 1

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public join()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public minimalCompletionStage()Ljava8/util/concurrent/CompletionStage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    move-result-object p0

    return-object p0
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

    new-instance p0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    return-object p0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return-void
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return-void
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$Timeout;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava8/util/concurrent/CompletableFuture;)V

    invoke-static {v1, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    :cond_0
    return-object p0
.end method

.method final orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    :cond_0
    invoke-virtual {p0, p2}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava8/util/concurrent/CompletableFuture;->lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :cond_1
    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {p0, p2}, Ljava8/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, p0}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :cond_3
    :goto_0
    return-void
.end method

.method final postComplete()V
    .locals 4

    :goto_0
    move-object v0, p0

    :cond_0
    :goto_1
    iget-object v1, v0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-nez v1, :cond_2

    if-eq v0, p0, :cond_1

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v1, :cond_1

    move-object v0, p0

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    :goto_2
    iget-object v2, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v0, v1, v2}, Ljava8/util/concurrent/CompletableFuture;->casStack(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_4

    if-eq v0, p0, :cond_3

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->pushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Ljava8/util/concurrent/CompletableFuture;->casNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    :cond_4
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method final postFire(Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_0
    if-ltz p2, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_2
    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz p1, :cond_4

    if-gez p2, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method final postFire(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_2

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_2

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_0
    if-ltz p3, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_2
    invoke-virtual {p0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->postFire(Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method final pushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    .locals 1

    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
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
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
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
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
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
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
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
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
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
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    if-nez v2, :cond_1

    const-string p0, "[Not completed]"

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Not completed, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dependents]"

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    instance-of p0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p0, :cond_3

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Completed exceptionally: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    goto :goto_1

    :cond_3
    const-string p0, "[Completed normally]"

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    invoke-static {p1, v4}, Ljava8/util/concurrent/CompletableFuture;->lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V

    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method final uniExceptionally(Ljava/lang/Object;Ljava8/util/function/Function;Ljava8/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava8/util/function/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava8/util/concurrent/CompletableFuture$UniExceptionally<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p3, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p3, p3, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz p3, :cond_1

    invoke-interface {p2, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method final uniHandle(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$UniHandle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiFunction<",
            "-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava8/util/concurrent/CompletableFuture$UniHandle<",
            "TS;TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p3, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :cond_1
    invoke-interface {p2, p1, v0}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method final uniWhenComplete(Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava8/util/concurrent/CompletableFuture$UniWhenComplete<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p3, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p3, p3, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_1
    move-object p3, v0

    move-object v0, p1

    :goto_0
    :try_start_1
    invoke-interface {p2, v0, p3}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_3

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p2

    move-object v0, p3

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    if-nez v0, :cond_2

    move-object p3, p2

    goto :goto_2

    :cond_2
    move-object p3, v0

    :cond_3
    :goto_2
    invoke-virtual {p0, p3, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_4
    return v1
.end method

.method final unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    .locals 1

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava8/util/concurrent/CompletableFuture;->lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :cond_1
    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    :cond_2
    return-void
.end method

.method public whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
