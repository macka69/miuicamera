.class Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$8;
.super Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
.source "IjkMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V
    .locals 0

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$8;->this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 2

    const-string p0, "sample_rate"

    invoke-virtual {p1, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%d Hz"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
