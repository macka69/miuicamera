.class public final Ljava8/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/OptionalInt$OICache;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava8/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/OptionalInt;

    invoke-direct {v0}, Ljava8/util/OptionalInt;-><init>()V

    sput-object v0, Ljava8/util/OptionalInt;->EMPTY:Ljava8/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    iput v0, p0, Ljava8/util/OptionalInt;->value:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    iput p1, p0, Ljava8/util/OptionalInt;->value:I

    return-void
.end method

.method public static empty()Ljava8/util/OptionalInt;
    .locals 1

    sget-object v0, Ljava8/util/OptionalInt;->EMPTY:Ljava8/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Ljava8/util/OptionalInt;
    .locals 1

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    sget-object v0, Ljava8/util/OptionalInt$OICache;->cache:[Ljava8/util/OptionalInt;

    add-int/lit16 p0, p0, 0x80

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance v0, Ljava8/util/OptionalInt;

    invoke-direct {v0, p0}, Ljava8/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava8/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava8/util/OptionalInt;

    iget-boolean v1, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v1, :cond_2

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    iget p1, p1, Ljava8/util/OptionalInt;->value:I

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    iget-boolean p1, p1, Ljava8/util/OptionalInt;->isPresent:Z

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAsInt()I
    .locals 0

    invoke-virtual {p0}, Ljava8/util/OptionalInt;->orElseThrow()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ifPresent(Ljava8/util/function/IntConsumer;)V
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    invoke-interface {p1, p0}, Ljava8/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava8/util/function/IntConsumer;Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    invoke-interface {p1, p0}, Ljava8/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPresent()Z
    .locals 0

    iget-boolean p0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    return p0
.end method

.method public orElse(I)I
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Ljava8/util/OptionalInt;->value:I

    :cond_0
    return p1
.end method

.method public orElseGet(Ljava8/util/function/IntSupplier;)I
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/IntSupplier;->getAsInt()I

    move-result p0

    :goto_0
    return p0
.end method

.method public orElseThrow()I
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No value present"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public orElseThrow(Ljava8/util/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "+TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    return p0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public stream()Ljava8/util/stream/IntStream;
    .locals 1

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    invoke-static {p0}, Ljava8/util/stream/IntStreams;->of(I)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava8/util/stream/IntStreams;->empty()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Ljava8/util/OptionalInt;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "OptionalInt[%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "OptionalInt.empty"

    :goto_0
    return-object p0
.end method
