.class public abstract Ljava8/util/concurrent/CountedCompleter;
.super Ljava8/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/ForkJoinTask<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Ljava8/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava8/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-class v1, Ljava8/util/concurrent/CountedCompleter;

    const-string v2, "pending"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Ljava8/util/concurrent/CountedCompleter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    iput p2, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    return-void
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 6

    :cond_0
    sget-object v0, Ljava8/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CountedCompleter;->PENDING:J

    iget v4, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    add-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6

    sget-object v0, Ljava8/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Ljava8/util/concurrent/CountedCompleter;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    iget-object p0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->tryComplete()V

    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 7

    :cond_0
    iget v6, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    if-eqz v6, :cond_1

    sget-object v0, Ljava8/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v6, -0x1

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v6
.end method

.method protected final exec()Z
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->compute()V

    const/4 p0, 0x0

    return p0
.end method

.method public final firstComplete()Ljava8/util/concurrent/CountedCompleter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    :cond_0
    iget v4, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    if-nez v4, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Ljava8/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCompleter()Ljava8/util/concurrent/CountedCompleter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    return-object p0
.end method

.method public final getPendingCount()I
    .locals 0

    iget p0, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    return p0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRoot()Ljava8/util/concurrent/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final helpComplete(I)V
    .locals 2

    if-lez p1, :cond_1

    iget v0, p0, Ljava8/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava8/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava8/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    iget-object v0, v0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v0, p0, p1}, Ljava8/util/concurrent/ForkJoinPool;->helpComplete(Ljava8/util/concurrent/ForkJoinPool$WorkQueue;Ljava8/util/concurrent/CountedCompleter;I)I

    goto :goto_0

    :cond_0
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool;->common:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0, p1}, Ljava8/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava8/util/concurrent/CountedCompleter;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 4

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava8/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava8/util/concurrent/CountedCompleter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_0

    iget v1, v0, Ljava8/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava8/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final nextComplete()Ljava8/util/concurrent/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->firstComplete()Ljava8/util/concurrent/CountedCompleter;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Ljava8/util/concurrent/CountedCompleter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final propagateCompletion()V
    .locals 6

    :cond_0
    :goto_0
    iget v4, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    if-nez v4, :cond_2

    iget-object v0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    return-void

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava8/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final quietlyCompleteRoot()V
    .locals 1

    :goto_0
    iget-object v0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    return-void

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0

    iput p1, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final tryComplete()V
    .locals 7

    move-object v6, p0

    :cond_0
    :goto_0
    iget v4, p0, Ljava8/util/concurrent/CountedCompleter;->pending:I

    if-nez v4, :cond_2

    invoke-virtual {p0, v6}, Ljava8/util/concurrent/CountedCompleter;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    iget-object v0, p0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    return-void

    :cond_1
    move-object v6, p0

    move-object p0, v0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava8/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
