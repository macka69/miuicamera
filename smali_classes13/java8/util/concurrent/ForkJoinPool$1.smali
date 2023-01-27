.class final Ljava8/util/concurrent/ForkJoinPool$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava8/util/concurrent/ForkJoinPool;",
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

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$1;->run()Ljava8/util/concurrent/ForkJoinPool;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava8/util/concurrent/ForkJoinPool;
    .locals 2

    new-instance p0, Ljava8/util/concurrent/ForkJoinPool;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava8/util/concurrent/ForkJoinPool;-><init>(BLjava8/util/concurrent/ForkJoinPool$1;)V

    return-object p0
.end method
