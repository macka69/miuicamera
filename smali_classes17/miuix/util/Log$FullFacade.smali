.class Lmiuix/util/Log$FullFacade;
.super Lmiuix/util/Log$Facade;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullFacade"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiuix/util/Log$Facade;-><init>(Lmiuix/internal/log/Logger;Lmiuix/util/Log$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/util/Log$1;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/util/Log$FullFacade;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLog(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V
    .locals 7

    sget-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/util/Log$Facade;->doLog(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    invoke-static {}, Lmiuix/util/Log$FileLoggerInstance;->instance()Lmiuix/util/Log$Facade;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/util/Log$Facade;->doLog(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    return-void
.end method
