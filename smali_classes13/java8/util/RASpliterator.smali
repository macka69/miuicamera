.class final Ljava8/util/RASpliterator;
.super Ljava/lang/Object;
.source "RASpliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final MODCOUNT_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private final alist:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/RASpliterator;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/RASpliterator;->MODCOUNT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    iput p2, p0, Ljava8/util/RASpliterator;->index:I

    iput p3, p0, Ljava8/util/RASpliterator;->fence:I

    instance-of p2, p1, Ljava/util/AbstractList;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/util/AbstractList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    iput p4, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    return-void
.end method

.method private static checkAbsListModCount(Ljava/util/AbstractList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "*>;I)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava8/util/RASpliterator;->getModCount(Ljava/util/List;)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private getFence()I
    .locals 2

    iget-object v0, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    iget v1, p0, Ljava8/util/RASpliterator;->fence:I

    if-gez v1, :cond_1

    iget-object v1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava8/util/RASpliterator;->getModCount(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Ljava8/util/RASpliterator;->fence:I

    :cond_1
    return v1
.end method

.method private static getModCount(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    sget-object v0, Ljava8/util/RASpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/RASpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static spliterator(Ljava/util/List;)Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/RASpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava8/util/RASpliterator;-><init>(Ljava/util/List;III)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    const/16 p0, 0x4050

    return p0
.end method

.method public estimateSize()J
    .locals 2

    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v0

    iget p0, p0, Ljava8/util/RASpliterator;->index:I

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava8/util/RASpliterator;->index:I

    iput v1, p0, Ljava8/util/RASpliterator;->index:I

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_0
    iget-object p1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    iget p0, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    invoke-static {p1, p0}, Ljava8/util/RASpliterator;->checkAbsListModCount(Ljava/util/AbstractList;I)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
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

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/RASpliterator;->index:I

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Ljava8/util/RASpliterator;->index:I

    iget-object v0, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Ljava8/util/RASpliterator;->alist:Ljava/util/AbstractList;

    iget p0, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    invoke-static {p1, p0}, Ljava8/util/RASpliterator;->checkAbsListModCount(Ljava/util/AbstractList;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/RASpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/RASpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava8/util/RASpliterator;

    iget-object v3, p0, Ljava8/util/RASpliterator;->list:Ljava/util/List;

    iput v0, p0, Ljava8/util/RASpliterator;->index:I

    iget p0, p0, Ljava8/util/RASpliterator;->expectedModCount:I

    invoke-direct {v2, v3, v1, v0, p0}, Ljava8/util/RASpliterator;-><init>(Ljava/util/List;III)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method
