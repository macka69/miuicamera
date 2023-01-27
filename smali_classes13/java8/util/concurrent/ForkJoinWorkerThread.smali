.class public Ljava8/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final NAME_PLACEHOLDER:Ljava/lang/String; = "aForkJoinWorkerThread"


# instance fields
.field final pool:Ljava8/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method

.method constructor <init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Ljava8/util/concurrent/TLRandom;->setContextClassLoader(Ljava/lang/Thread;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method

.method constructor <init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    invoke-super {p0, p2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {p0, p4}, Ljava8/util/concurrent/TLRandom;->setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    invoke-static {p0}, Ljava8/util/concurrent/TLRandom;->eraseThreadLocals(Ljava/lang/Thread;)V

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    return-void
.end method

.method public getPool()Ljava8/util/concurrent/ForkJoinPool;
    .locals 0

    iget-object p0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    return-object p0
.end method

.method public getPoolIndex()I
    .locals 0

    iget-object p0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    iget-object v0, v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onStart()V

    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v2}, Ljava8/util/concurrent/ForkJoinPool;->runWorker(Ljava8/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_0
    :goto_0
    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0, v0}, Ljava8/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method
