.class final Ljava8/util/ImmutableCollections$SetN$SetNIterator;
.super Ljava8/util/Iterators$ImmutableIt;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ImmutableCollections$SetN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/Iterators$ImmutableIt<",
        "TE;>;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Ljava8/util/ImmutableCollections$SetN;


# direct methods
.method constructor <init>(Ljava8/util/ImmutableCollections$SetN;)V
    .locals 4

    iput-object p1, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava8/util/ImmutableCollections$SetN;

    invoke-direct {p0}, Ljava8/util/Iterators$ImmutableIt;-><init>()V

    iget v0, p1, Ljava8/util/ImmutableCollections$SetN;->size:I

    iput v0, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    sget-wide v0, Ljava8/util/ImmutableCollections;->SALT32L:J

    iget-object p1, p1, Ljava8/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length p1, p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget p0, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_3

    iget v0, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    iget-object v1, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava8/util/ImmutableCollections$SetN;

    iget-object v1, v1, Ljava8/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    sget-boolean v2, Ljava8/util/ImmutableCollections;->REVERSE:Z

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    :cond_2
    :goto_0
    iget-object v2, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava8/util/ImmutableCollections$SetN;

    iget-object v2, v2, Ljava8/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iput v0, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    iget v0, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava8/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    return-object v2

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
