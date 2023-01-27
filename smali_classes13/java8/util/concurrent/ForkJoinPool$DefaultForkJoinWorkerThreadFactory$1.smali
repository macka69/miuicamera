.class Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->newThread(Ljava8/util/concurrent/ForkJoinPool;)Ljava8/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava8/util/concurrent/ForkJoinWorkerThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

.field final synthetic val$pool:Ljava8/util/concurrent/ForkJoinPool;


# direct methods
.method constructor <init>(Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->this$0:Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->run()Ljava8/util/concurrent/ForkJoinWorkerThread;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava8/util/concurrent/ForkJoinWorkerThread;
    .locals 2

    new-instance v0, Ljava8/util/concurrent/ForkJoinWorkerThread;

    iget-object p0, p0, Ljava8/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava8/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
