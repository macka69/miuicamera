.class synthetic Lmiuix/internal/log/appender/LogcatAppender$2;
.super Ljava/lang/Object;
.source "LogcatAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/log/appender/LogcatAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miuix$internal$log$Level:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lmiuix/internal/log/Level;->values()[Lmiuix/internal/log/Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiuix/internal/log/appender/LogcatAppender$2;->$SwitchMap$miuix$internal$log$Level:[I

    :try_start_0
    sget-object v1, Lmiuix/internal/log/Level;->VERBOSE:Lmiuix/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lmiuix/internal/log/appender/LogcatAppender$2;->$SwitchMap$miuix$internal$log$Level:[I

    sget-object v1, Lmiuix/internal/log/Level;->DEBUG:Lmiuix/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lmiuix/internal/log/appender/LogcatAppender$2;->$SwitchMap$miuix$internal$log$Level:[I

    sget-object v1, Lmiuix/internal/log/Level;->INFO:Lmiuix/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lmiuix/internal/log/appender/LogcatAppender$2;->$SwitchMap$miuix$internal$log$Level:[I

    sget-object v1, Lmiuix/internal/log/Level;->WARNING:Lmiuix/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lmiuix/internal/log/appender/LogcatAppender$2;->$SwitchMap$miuix$internal$log$Level:[I

    sget-object v1, Lmiuix/internal/log/Level;->ERROR:Lmiuix/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lmiuix/internal/log/appender/LogcatAppender$2;->$SwitchMap$miuix$internal$log$Level:[I

    sget-object v1, Lmiuix/internal/log/Level;->FATAL:Lmiuix/internal/log/Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
