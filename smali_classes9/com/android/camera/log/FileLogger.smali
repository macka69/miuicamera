.class public Lcom/android/camera/log/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static BASE_FORMAT_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FileLogger"

.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static mLogger:Lmiuix/util/Log$Facade;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;->INSTANCE:Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;

    sput-object v0, Lcom/android/camera/log/FileLogger;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/android/camera/log/FileLogger;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    sget-object v9, Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;->INSTANCE:Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$XBpQ14uQuyYbkZ-Mq5qRhZVy2bE;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/log/-$$Lambda$FileLogger$XBpQ14uQuyYbkZ-Mq5qRhZVy2bE;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$6vb6_j2Ntrl98bNq1nhsb1BfpnQ;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/log/-$$Lambda$FileLogger$6vb6_j2Ntrl98bNq1nhsb1BfpnQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$nF913iE-ZJOG2Qh05UbDxAFbIgM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/log/-$$Lambda$FileLogger$nF913iE-ZJOG2Qh05UbDxAFbIgM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$KCgulRZGR45MOJVkzLuVfeYpAa4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/log/-$$Lambda$FileLogger$KCgulRZGR45MOJVkzLuVfeYpAa4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$MTh50x7QYAfEafQ38lI-NmYxt8M;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/log/-$$Lambda$FileLogger$MTh50x7QYAfEafQ38lI-NmYxt8M;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/FileLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$Jw7vn4-lP21zNOxMuwg3zmVecKA;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/log/-$$Lambda$FileLogger$Jw7vn4-lP21zNOxMuwg3zmVecKA;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$op-gf8r-q5MSvWwmzM3_ttVizOc;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/log/-$$Lambda$FileLogger$op-gf8r-q5MSvWwmzM3_ttVizOc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lmiuix/util/Log;->getFileLogger(Landroid/content/Context;)Lmiuix/util/Log$Facade;

    move-result-object p0

    sput-object p0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    return-void
.end method

.method static synthetic lambda$c$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$d$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$d$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$e$12(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$e$13(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$i$7(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$i$8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "file-logger"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method static synthetic lambda$static$1(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rejectedExecution "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileLogger"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$v$3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$v$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$w$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$w$11(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    const-string v1, ""

    invoke-virtual {v0, p0, v1, p1}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$w$9(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$3uouhj309qOJHDFRLOImryGZHsY;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/log/-$$Lambda$FileLogger$3uouhj309qOJHDFRLOImryGZHsY;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$QlLeTeIApwj-HEFXTZE5LDyRPQU;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/log/-$$Lambda$FileLogger$QlLeTeIApwj-HEFXTZE5LDyRPQU;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$u7f9IVutoiQOoBMHW0nXaM9iR7w;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/log/-$$Lambda$FileLogger$u7f9IVutoiQOoBMHW0nXaM9iR7w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/log/-$$Lambda$FileLogger$8o_sd_UFHDqxrbhchcY2qUh19s4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/log/-$$Lambda$FileLogger$8o_sd_UFHDqxrbhchcY2qUh19s4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static wrapTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-%d] - %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v1, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
