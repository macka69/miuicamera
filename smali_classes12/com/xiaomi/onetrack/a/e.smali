.class public Lcom/xiaomi/onetrack/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackExceptionHandler"

.field private static final c:Ljava/lang/String; = "tombstone"

.field private static final d:Ljava/lang/String; = ".java.xcrash"

.field private static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final f:Ljava/lang/String; = "error reason:\n\t"


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final g:Ljava/util/Date;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/e;->g:Ljava/util/Date;

    const/16 v0, 0x32

    iput v0, p0, Lcom/xiaomi/onetrack/a/e;->h:I

    iput v0, p0, Lcom/xiaomi/onetrack/a/e;->i:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/xiaomi/onetrack/a/e;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/a/e;->k:Z

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/a/e;->l:Z

    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/e;->g:Ljava/util/Date;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/onetrack/h/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java"

    invoke-static {p0, p1, v3, v1, v2}, Lcom/xiaomi/onetrack/h/b;->a(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pid: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", tid: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", name: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  >>> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " <<<\n\njava stacktrace:\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 15

    move-object v1, p0

    const-string v2, "\n\n"

    const-string v3, "JavaCrashHandler close RandomAccessFile failed"

    const-string v4, "OneTrackExceptionHandler"

    const-string v5, "UTF-8"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s/%s_%020d_%s__%s%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/xiaomi/onetrack/h/l;->a()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "tombstone"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v1, Lcom/xiaomi/onetrack/a/e;->g:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/onetrack/h/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {v11, v12}, Lcom/xiaomi/onetrack/h/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, ".java.xcrash"

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v7

    :goto_0
    const-string v9, "JavaCrashHandler createLogFile failed"

    invoke-static {v4, v9, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v10, p2

    :try_start_3
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v11, p1

    :try_start_4
    invoke-direct {p0, v6, v11, v9}, Lcom/xiaomi/onetrack/a/e;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v10, p2

    :goto_2
    move-object v9, v7

    :goto_3
    const-string v6, "JavaCrashHandler getEmergency failed"

    invoke-static {v4, v6, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    :goto_4
    if-eqz v8, :cond_7

    :try_start_5
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v11, "rws"

    invoke-direct {v6, v8, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v9}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "backtrace feature id:\n\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error reason:\n\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_1
    iget v0, v1, Lcom/xiaomi/onetrack/a/e;->j:I

    if-gtz v0, :cond_2

    iget v0, v1, Lcom/xiaomi/onetrack/a/e;->h:I

    if-gtz v0, :cond_2

    iget v0, v1, Lcom/xiaomi/onetrack/a/e;->i:I

    if-lez v0, :cond_3

    :cond_2
    iget v0, v1, Lcom/xiaomi/onetrack/a/e;->j:I

    iget v2, v1, Lcom/xiaomi/onetrack/a/e;->h:I

    iget v7, v1, Lcom/xiaomi/onetrack/a/e;->i:I

    invoke-static {v0, v2, v7}, Lcom/xiaomi/onetrack/h/b;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_3
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/a/e;->k:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/onetrack/h/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_4
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/a/e;->l:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaomi/onetrack/h/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/h/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const-string v0, "foreground:\nyes\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v6

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v7, v6

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_5
    :try_start_8
    const-string v1, "JavaCrashHandler write log file failed"

    invoke-static {v4, v1, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v0

    invoke-static {v4, v3, v1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_6
    if-eqz v7, :cond_6

    :try_start_a
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v3, v2}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw v1

    :cond_7
    :goto_8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/onetrack/a/e;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/e;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "OneTrackExceptionHandler"

    const-string v1, "uncaughtException start"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/e;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
