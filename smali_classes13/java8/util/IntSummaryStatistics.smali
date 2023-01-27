.class public Ljava8/util/IntSummaryStatistics;
.super Ljava/lang/Object;
.source "IntSummaryStatistics.java"

# interfaces
.implements Ljava8/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:I

.field private min:I

.field private sum:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Ljava8/util/IntSummaryStatistics;->min:I

    const/high16 v0, -0x80000000

    iput v0, p0, Ljava8/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public constructor <init>(JIIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Ljava8/util/IntSummaryStatistics;->min:I

    const/high16 v0, -0x80000000

    iput v0, p0, Ljava8/util/IntSummaryStatistics;->max:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    if-lez v0, :cond_1

    if-gt p3, p4, :cond_0

    iput-wide p1, p0, Ljava8/util/IntSummaryStatistics;->count:J

    iput-wide p5, p0, Ljava8/util/IntSummaryStatistics;->sum:J

    iput p3, p0, Ljava8/util/IntSummaryStatistics;->min:I

    iput p4, p0, Ljava8/util/IntSummaryStatistics;->max:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum greater than maximum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative count value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public accept(I)V
    .locals 4

    iget-wide v0, p0, Ljava8/util/IntSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava8/util/IntSummaryStatistics;->sum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Ljava8/util/IntSummaryStatistics;->min:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava8/util/IntSummaryStatistics;->min:I

    iget v0, p0, Ljava8/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljava8/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public combine(Ljava8/util/IntSummaryStatistics;)V
    .locals 4

    iget-wide v0, p0, Ljava8/util/IntSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava8/util/IntSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava8/util/IntSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljava8/util/IntSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Ljava8/util/IntSummaryStatistics;->min:I

    iget v1, p1, Ljava8/util/IntSummaryStatistics;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava8/util/IntSummaryStatistics;->min:I

    iget v0, p0, Ljava8/util/IntSummaryStatistics;->max:I

    iget p1, p1, Ljava8/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljava8/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public final getAverage()D
    .locals 4

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getCount()J

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

    iget-wide v0, p0, Ljava8/util/IntSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()I
    .locals 0

    iget p0, p0, Ljava8/util/IntSummaryStatistics;->max:I

    return p0
.end method

.method public final getMin()I
    .locals 0

    iget p0, p0, Ljava8/util/IntSummaryStatistics;->min:I

    return p0
.end method

.method public final getSum()J
    .locals 2

    iget-wide v0, p0, Ljava8/util/IntSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Ljava8/util/IntSummaryStatistics;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getSum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getAverage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava8/util/IntSummaryStatistics;->getMax()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
