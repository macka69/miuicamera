.class public Ljava8/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava8/util/function/DoubleConsumer;


# instance fields
.field private count:J

.field private max:D

.field private min:D

.field private simpleSum:D

.field private sum:D

.field private sumCompensation:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public constructor <init>(JDDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_7

    if-lez v0, :cond_6

    cmpl-double v0, p3, p5

    if-gtz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {p7, p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-lez v0, :cond_4

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Some, not all, of the minimum, maximum, or sum is NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    iput-wide p1, p0, Ljava8/util/DoubleSummaryStatistics;->count:J

    iput-wide p7, p0, Ljava8/util/DoubleSummaryStatistics;->sum:D

    iput-wide p7, p0, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ljava8/util/DoubleSummaryStatistics;->sumCompensation:D

    iput-wide p3, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    iput-wide p5, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum greater than maximum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative count value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sumWithCompensation(D)V
    .locals 4

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->sum:D

    add-double v2, v0, p1

    sub-double v0, v2, v0

    sub-double/2addr v0, p1

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->sumCompensation:D

    iput-wide v2, p0, Ljava8/util/DoubleSummaryStatistics;->sum:D

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 4

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-direct {p0, p1, p2}, Ljava8/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public combine(Ljava8/util/DoubleSummaryStatistics;)V
    .locals 4

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava8/util/DoubleSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v2, p1, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v0, p1, Ljava8/util/DoubleSummaryStatistics;->sum:D

    invoke-direct {p0, v0, v1}, Ljava8/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p1, Ljava8/util/DoubleSummaryStatistics;->sumCompensation:D

    neg-double v0, v0

    invoke-direct {p0, v0, v1}, Ljava8/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    iget-wide v2, p1, Ljava8/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    iget-wide v2, p1, Ljava8/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public final getAverage()D
    .locals 4

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getCount()J
    .locals 2

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()D
    .locals 2

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->max:D

    return-wide v0
.end method

.method public final getMin()D
    .locals 2

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->min:D

    return-wide v0
.end method

.method public final getSum()D
    .locals 4

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->sum:D

    iget-wide v2, p0, Ljava8/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v0, p0, Ljava8/util/DoubleSummaryStatistics;->simpleSum:D

    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Ljava8/util/DoubleSummaryStatistics;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getMin()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getAverage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/DoubleSummaryStatistics;->getMax()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
