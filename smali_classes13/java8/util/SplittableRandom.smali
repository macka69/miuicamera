.class public final Ljava8/util/SplittableRandom;
.super Ljava/lang/Object;
.source "SplittableRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/SplittableRandom$RandomDoublesSpliterator;,
        Ljava8/util/SplittableRandom$RandomLongsSpliterator;,
        Ljava8/util/SplittableRandom$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field private static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field private static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field private static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final GOLDEN_GAMMA:J = -0x61c8864680b583ebL

.field private static final defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final gamma:J

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava8/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava8/util/SplittableRandom$1;

    invoke-direct {v0}, Ljava8/util/SplittableRandom$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v0, :cond_0

    shl-long/2addr v2, v0

    aget-byte v7, v1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava8/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava8/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x3c6ef372fe94f82aL    # 1.3422845051698468E-17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava8/util/SplittableRandom;->seed:J

    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava8/util/SplittableRandom;->gamma:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const-wide v0, -0x61c8864680b583ebL

    invoke-direct {p0, p1, p2, v0, v1}, Ljava8/util/SplittableRandom;-><init>(JJ)V

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava8/util/SplittableRandom;->seed:J

    iput-wide p3, p0, Ljava8/util/SplittableRandom;->gamma:J

    return-void
.end method

.method private static mix32(J)I
    .locals 2

    const/16 v0, 0x21

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0x62a9d9ed799705f5L    # 1.905503099867627E167

    mul-long/2addr p0, v0

    const/16 v0, 0x1c

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, -0x34db2f5a3773ca4dL    # -9.968418789810265E53

    mul-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static mix64(J)J
    .locals 2

    const/16 v0, 0x1e

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr p0, v0

    const/16 v0, 0x1b

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    mul-long/2addr p0, v0

    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static mixGamma(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide/16 v0, 0x1

    or-long/2addr p0, v0

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-wide v0, -0x5555555555555556L

    xor-long/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method private nextSeed()J
    .locals 4

    iget-wide v0, p0, Ljava8/util/SplittableRandom;->seed:J

    iget-wide v2, p0, Ljava8/util/SplittableRandom;->gamma:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/SplittableRandom;->seed:J

    return-wide v0
.end method


# virtual methods
.method public doubles()Ljava8/util/stream/DoubleStream;
    .locals 11

    new-instance v10, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava8/util/SplittableRandom;JJDD)V

    const/4 p0, 0x0

    invoke-static {v10, p0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public doubles(DD)Ljava8/util/stream/DoubleStream;
    .locals 11

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava8/util/SplittableRandom;JJDD)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be greater than origin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doubles(J)Ljava8/util/stream/DoubleStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava8/util/SplittableRandom;JJDD)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doubles(JDD)Ljava8/util/stream/DoubleStream;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    cmpg-double v0, p3, p5

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava8/util/SplittableRandom;JJDD)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final internalNextDouble(DD)D
    .locals 4

    invoke-virtual {p0}, Ljava8/util/SplittableRandom;->nextLong()J

    move-result-wide v0

    const/16 p0, 0xb

    ushr-long/2addr v0, p0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    cmpl-double p0, v0, p3

    if-ltz p0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 p2, 0x1

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 5

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix32(J)I

    move-result v0

    if-ge p1, p2, :cond_4

    sub-int v1, p2, p1

    add-int/lit8 v2, v1, -0x1

    and-int v3, v1, v2

    if-nez v3, :cond_0

    and-int p0, v0, v2

    add-int v0, p0, p1

    goto :goto_2

    :cond_0
    if-lez v1, :cond_2

    ushr-int/lit8 p2, v0, 0x1

    :goto_0
    add-int v0, p2, v2

    rem-int/2addr p2, v1

    sub-int/2addr v0, p2

    if-gez v0, :cond_1

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava8/util/SplittableRandom;->mix32(J)I

    move-result p2

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    add-int v0, p2, p1

    goto :goto_2

    :cond_2
    :goto_1
    if-lt v0, p1, :cond_3

    if-lt v0, p2, :cond_4

    :cond_3
    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix32(J)I

    move-result v0

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method final internalNextLong(JJ)J
    .locals 10

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-gez v2, :cond_4

    sub-long v2, p3, p1

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    and-long p3, v0, v4

    add-long v0, p3, p1

    goto :goto_2

    :cond_0
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    const/4 p3, 0x1

    :goto_0
    ushr-long/2addr v0, p3

    add-long v6, v0, v4

    rem-long/2addr v0, v2

    sub-long/2addr v6, v0

    cmp-long p4, v6, v8

    if-gez p4, :cond_1

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    add-long/2addr v0, p1

    goto :goto_2

    :cond_2
    :goto_1
    cmp-long v2, v0, p1

    if-ltz v2, :cond_3

    cmp-long v2, v0, p3

    if-ltz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    :goto_2
    return-wide v0
.end method

.method public ints()Ljava8/util/stream/IntStream;
    .locals 9

    new-instance v8, Ljava8/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava8/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJII)V

    const/4 p0, 0x0

    invoke-static {v8, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public ints(II)Ljava8/util/stream/IntStream;
    .locals 9

    if-ge p1, p2, :cond_0

    new-instance v8, Ljava8/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava8/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJII)V

    const/4 p0, 0x0

    invoke-static {v8, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be greater than origin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ints(J)Ljava8/util/stream/IntStream;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Ljava8/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJII)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ints(JII)Ljava8/util/stream/IntStream;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-ge p3, p4, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Ljava8/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJII)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be greater than origin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public longs()Ljava8/util/stream/LongStream;
    .locals 11

    new-instance v10, Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJJJ)V

    const/4 p0, 0x0

    invoke-static {v10, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public longs(J)Ljava8/util/stream/LongStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJJJ)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public longs(JJ)Ljava8/util/stream/LongStream;
    .locals 11

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJJJ)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be greater than origin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public longs(JJJ)Ljava8/util/stream/LongStream;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    cmp-long v0, p3, p5

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJJJ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextBoolean()Z
    .locals 2

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix32(J)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextBytes([B)V
    .locals 9

    array-length v0, p1

    shr-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x8

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava8/util/SplittableRandom;->nextLong()J

    move-result-wide v5

    move v1, v4

    :goto_1
    add-int/lit8 v7, v1, -0x1

    if-lez v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    long-to-int v8, v5

    int-to-byte v8, v8

    aput-byte v8, p1, v2

    ushr-long/2addr v5, v4

    move v2, v1

    move v1, v7

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava8/util/SplittableRandom;->nextLong()J

    move-result-wide v5

    :goto_2
    if-ge v2, v0, :cond_2

    add-int/lit8 p0, v2, 0x1

    long-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    ushr-long/2addr v5, v4

    move v2, p0

    goto :goto_2

    :cond_2
    return-void
.end method

.method public nextDouble()D
    .locals 4

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    const/16 p0, 0xb

    ushr-long/2addr v0, p0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    const/16 p0, 0xb

    ushr-long/2addr v0, p0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    cmpg-double p0, v0, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextDouble(DD)D
    .locals 1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava8/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be greater than origin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextInt()I
    .locals 2

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix32(J)I

    move-result p0

    return p0
.end method

.method public nextInt(I)I
    .locals 4

    if-lez p1, :cond_2

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix32(J)I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    and-int p0, v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    ushr-int/lit8 v0, v0, 0x1

    add-int v2, v0, v1

    rem-int/2addr v0, p1

    sub-int/2addr v2, v0

    if-gez v2, :cond_1

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava8/util/SplittableRandom;->mix32(J)I

    move-result v0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextInt(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava8/util/SplittableRandom;->internalNextInt(II)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be greater than origin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextLong()J
    .locals 2

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    and-long v6, p1, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    and-long p0, v2, v4

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    ushr-long/2addr v2, v6

    add-long v7, v2, v4

    rem-long/2addr v2, p1

    sub-long/2addr v7, v2

    cmp-long v7, v7, v0

    if-gez v7, :cond_1

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava8/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide p0, v2

    :goto_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextLong(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava8/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bound must be greater than origin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public split()Ljava8/util/SplittableRandom;
    .locals 5

    new-instance v0, Ljava8/util/SplittableRandom;

    invoke-virtual {p0}, Ljava8/util/SplittableRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {p0}, Ljava8/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava8/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava8/util/SplittableRandom;-><init>(JJ)V

    return-object v0
.end method
