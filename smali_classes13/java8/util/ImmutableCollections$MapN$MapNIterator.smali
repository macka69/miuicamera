.class Ljava8/util/ImmutableCollections$MapN$MapNIterator;
.super Ljava8/util/Iterators$ImmutableIt;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ImmutableCollections$MapN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/Iterators$ImmutableIt<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Ljava8/util/ImmutableCollections$MapN;


# direct methods
.method constructor <init>(Ljava8/util/ImmutableCollections$MapN;)V
    .locals 4

    iput-object p1, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava8/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava8/util/Iterators$ImmutableIt;-><init>()V

    iget v0, p1, Ljava8/util/ImmutableCollections$MapN;->size:I

    iput v0, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    sget-wide v0, Ljava8/util/ImmutableCollections;->SALT32L:J

    iget-object p1, p1, Ljava8/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length p1, p1

    shr-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    return-void
.end method

.method private nextIndex()I
    .locals 2

    iget v0, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    sget-boolean v1, Ljava8/util/ImmutableCollections;->REVERSE:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava8/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava8/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_1

    iget-object v0, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava8/util/ImmutableCollections$MapN;

    iget-object v0, v0, Ljava8/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :cond_1
    :goto_0
    iput v0, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget p0, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_1

    :goto_0
    iget-object v0, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava8/util/ImmutableCollections$MapN;

    iget-object v0, v0, Ljava8/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->nextIndex()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava8/util/KeyValueHolder;

    iget-object v2, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava8/util/ImmutableCollections$MapN;

    iget-object v2, v2, Ljava8/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v2, v1

    invoke-direct {v0, v3, v1}, Ljava8/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
