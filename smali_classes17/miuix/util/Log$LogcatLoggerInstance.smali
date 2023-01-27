.class Lmiuix/util/Log$LogcatLoggerInstance;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogcatLoggerInstance"
.end annotation


# static fields
.field static final INSTANCE:Lmiuix/util/Log$Facade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmiuix/util/Log$Facade;

    invoke-static {}, Lmiuix/internal/log/LoggerFactory;->getLogcatLogger()Lmiuix/internal/log/Logger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/util/Log$Facade;-><init>(Lmiuix/internal/log/Logger;Lmiuix/util/Log$1;)V

    sput-object v0, Lmiuix/util/Log$LogcatLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
