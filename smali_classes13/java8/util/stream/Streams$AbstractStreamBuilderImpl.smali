.class abstract Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava8/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava8/util/stream/Streams$1;)V
    .locals 0

    invoke-direct {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    const/16 p0, 0x4450

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget p0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    int-to-long v0, p0

    return-wide v0
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

    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p0

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
