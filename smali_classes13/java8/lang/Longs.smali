.class public final Ljava8/lang/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 0

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static compareUnsigned(JJ)I
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Ljava8/lang/Longs;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static divideUnsigned(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Ljava8/lang/Longs;->compareUnsigned(JJ)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_1
    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    div-long/2addr p0, p2

    return-wide p0

    :cond_2
    invoke-static {p0, p1}, Ljava8/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava8/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static hashCode(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static max(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static min(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static remainderUnsigned(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    rem-long/2addr p0, p2

    return-wide p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava8/lang/Longs;->compareUnsigned(JJ)I

    move-result v0

    if-gez v0, :cond_1

    return-wide p0

    :cond_1
    invoke-static {p0, p1}, Ljava8/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava8/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static sum(JJ)J
    .locals 0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    long-to-int p0, p0

    invoke-static {v1}, Ljava8/lang/Integers;->toUnsignedLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0}, Ljava8/lang/Integers;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
