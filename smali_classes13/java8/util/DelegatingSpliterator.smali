.class final Ljava8/util/DelegatingSpliterator;
.super Ljava/lang/Object;
.source "DelegatingSpliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation build Lbuild/IgnoreJava8API;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/DelegatingSpliterator$ConsumerDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final spliter:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result p0

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    new-instance v0, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;

    invoke-direct {v0, p1}, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;-><init>(Ljava8/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {p0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {p0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    new-instance v0, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;

    invoke-direct {v0, p1}, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;-><init>(Ljava8/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {p0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava8/util/DelegatingSpliterator;

    invoke-direct {v0, p0}, Ljava8/util/DelegatingSpliterator;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method
