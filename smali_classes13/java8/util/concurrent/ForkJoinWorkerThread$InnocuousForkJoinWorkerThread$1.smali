.class final Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;
.super Ljava/lang/Object;
.source "ForkJoinWorkerThread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ThreadGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;->run()Ljava/lang/ThreadGroup;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/ThreadGroup;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "InnocuousForkJoinWorkerThreadGroup"

    invoke-direct {v0, p0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-object v0
.end method
