.class public final Ljava8/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Ljava8/util/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/OptionalDouble;

    invoke-direct {v0}, Ljava8/util/OptionalDouble;-><init>()V

    sput-object v0, Ljava8/util/OptionalDouble;->EMPTY:Ljava8/util/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Ljava8/util/OptionalDouble;->value:D

    return-void
.end method

.method private constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    iput-wide p1, p0, Ljava8/util/OptionalDouble;->value:D

    return-void
.end method

.method public static empty()Ljava8/util/OptionalDouble;
    .locals 1

    sget-object v0, Ljava8/util/OptionalDouble;->EMPTY:Ljava8/util/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Ljava8/util/OptionalDouble;
    .locals 1

    new-instance v0, Ljava8/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Ljava8/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava8/util/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava8/util/OptionalDouble;

    iget-boolean v1, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v1, :cond_2

    iget-wide v3, p0, Ljava8/util/OptionalDouble;->value:D

    iget-wide p0, p1, Ljava8/util/OptionalDouble;->value:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    iget-boolean p1, p1, Ljava8/util/OptionalDouble;->isPresent:Z

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAsDouble()D
    .locals 2

    invoke-virtual {p0}, Ljava8/util/OptionalDouble;->orElseThrow()D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava8/lang/Doubles;->hashCode(D)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ifPresent(Ljava8/util/function/DoubleConsumer;)V
    .locals 2

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava8/util/function/DoubleConsumer;Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPresent()Z
    .locals 0

    iget-boolean p0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    return p0
.end method

.method public orElse(D)D
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Ljava8/util/OptionalDouble;->value:D

    :cond_0
    return-wide p1
.end method

.method public orElseGet(Ljava8/util/function/DoubleSupplier;)D
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p0, p0, Ljava8/util/OptionalDouble;->value:D

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public orElseThrow()D
    .locals 2

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/OptionalDouble;->value:D

    return-wide v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No value present"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public orElseThrow(Ljava8/util/function/Supplier;)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "+TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p0, p0, Ljava8/util/OptionalDouble;->value:D

    return-wide p0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public stream()Ljava8/util/stream/DoubleStream;
    .locals 2

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava8/util/stream/DoubleStreams;->of(D)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava8/util/stream/DoubleStreams;->empty()Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Ljava8/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Ljava8/util/OptionalDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "OptionalDouble[%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "OptionalDouble.empty"

    :goto_0
    return-object p0
.end method
