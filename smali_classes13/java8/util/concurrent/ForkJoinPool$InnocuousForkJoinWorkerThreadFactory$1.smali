.class Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->newThread(Ljava8/util/concurrent/ForkJoinPool;)Ljava8/util/concurrent/ForkJoinWorkerThread;
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
.field final synthetic this$0:Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

.field final synthetic val$pool:Ljava8/util/concurrent/ForkJoinPool;


# direct methods
.method constructor <init>(Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->this$0:Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->run()Ljava8/util/concurrent/ForkJoinWorkerThread;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava8/util/concurrent/ForkJoinWorkerThread;
    .locals 1

    new-instance v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;

    iget-object p0, p0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-direct {v0, p0}, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;-><init>(Ljava8/util/concurrent/ForkJoinPool;)V

    return-object v0
.end method
