.class final Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.super Ljava8/util/concurrent/ForkJoinWorkerThread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnocuousForkJoinWorkerThread"
.end annotation


# static fields
.field private static final INNOCUOUS_ACC:Ljava/security/AccessControlContext;

.field private static final innocuousThreadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;

    invoke-direct {v0}, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    sput-object v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    new-instance v2, Ljava/security/ProtectionDomain;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    sput-object v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method constructor <init>(Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    sget-object v2, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava8/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V

    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    invoke-static {p0}, Ljava8/util/concurrent/TLRandom;->eraseThreadLocals(Ljava/lang/Thread;)V

    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "setContextClassLoader"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    return-void
.end method
