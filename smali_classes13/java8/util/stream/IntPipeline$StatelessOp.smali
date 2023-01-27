.class abstract Ljava8/util/stream/IntPipeline$StatelessOp;
.super Ljava8/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatelessOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/IntPipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Ljava8/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljava8/util/stream/IntPipeline;-><init>(Ljava8/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/IntPipeline;->iterator()Ljava8/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/IntPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method final opIsStateful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/IntStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/IntStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/IntPipeline;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/IntPipeline;->unordered()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
