.class public Lmiuix/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/util/Log$FullFacade;,
        Lmiuix/util/Log$Facade;,
        Lmiuix/util/Log$FullLoggerInstance;,
        Lmiuix/util/Log$LogcatLoggerInstance;,
        Lmiuix/util/Log$FileLoggerInstance;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getFileLogger(Landroid/content/Context;)Lmiuix/util/Log$Facade;
    .locals 0

    invoke-static {p0}, Lmiuix/util/Log$FileLoggerInstance;->init(Landroid/content/Context;)V

    invoke-static {}, Lmiuix/util/Log$FileLoggerInstance;->instance()Lmiuix/util/Log$Facade;

    move-result-object p0

    return-object p0
.end method

.method public static getFullLogger(Landroid/content/Context;)Lmiuix/util/Log$Facade;
    .locals 0

    invoke-static {p0}, Lmiuix/util/Log$FileLoggerInstance;->init(Landroid/content/Context;)V

    sget-object p0, Lmiuix/util/Log$FullLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    return-object p0
.end method

.method public static getLogcatLogger()Lmiuix/util/Log$Facade;
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
