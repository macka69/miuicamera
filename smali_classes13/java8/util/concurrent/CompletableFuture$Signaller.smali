.class final Ljava8/util/concurrent/CompletableFuture$Signaller;
.super Ljava8/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"

# interfaces
.implements Ljava8/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Signaller"
.end annotation


# instance fields
.field final deadline:J

.field interrupted:Z

.field final interruptible:Z

.field nanos:J

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ZJJ)V
    .locals 1

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture$Completion;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    iput-boolean p1, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    iput-wide p2, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->nanos:J

    iput-wide p4, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->deadline:J

    return-void
.end method


# virtual methods
.method public block()Z
    .locals 4

    :goto_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$Signaller;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method final isLive()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReleasable()Z
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    :cond_0
    iget-boolean v0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    if-nez v0, :cond_4

    :cond_1
    iget-wide v2, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v6, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iput-wide v2, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    :cond_2
    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-object v0
.end method
