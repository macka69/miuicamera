.class public final Ljava8/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava8/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava8/util/Optional;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava8/util/Optional;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ljava8/util/Optional;->EMPTY:Ljava8/util/Optional;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method public static empty()Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/Optional;->EMPTY:Ljava8/util/Optional;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/Optional;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava8/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava8/util/Optional;->EMPTY:Ljava8/util/Optional;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava8/util/Optional;

    invoke-direct {v0, p0}, Ljava8/util/Optional;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava8/util/Optional;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Ljava8/util/Optional;

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    iget-object p1, p1, Ljava8/util/Optional;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public filter(Ljava8/util/function/Predicate;)Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public flatMap(Ljava8/util/function/Function;)Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/Optional<",
            "+TU;>;>;)",
            "Ljava8/util/Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/Optional;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/Optional;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public ifPresent(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava8/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPresent()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public map(Ljava8/util/function/Function;)Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava8/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public or(Ljava8/util/function/Supplier;)Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Optional<",
            "+TT;>;>;)",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/Optional;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/Optional;

    return-object p0
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public orElseGet(Ljava8/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public orElseThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No value present"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public orElseThrow(Ljava8/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public stream()Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava8/util/stream/RefStreams;->empty()Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/stream/RefStreams;->of(Ljava/lang/Object;)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Ljava8/util/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Optional[%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Optional.empty"

    :goto_0
    return-object p0
.end method
