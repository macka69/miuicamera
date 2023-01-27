.class final Ljava8/util/LinkedListSpliterator;
.super Ljava/lang/Object;
.source "LinkedListSpliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
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


# static fields
.field private static final BATCH_UNIT:I = 0x400

.field private static final FIRST_OFF:J

.field private static final IS_HARMONY:Z

.field private static final IS_JAVA6:Z

.field private static final MAX_BATCH:I = 0x2000000

.field private static final MODCOUNT_OFF:J

.field private static final NODE_ITEM_OFF:J

.field private static final NODE_NEXT_OFF:J

.field private static final SIZE_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private batch:I

.field private current:Ljava/lang/Object;

.field private final endOfList:Ljava/lang/Object;

.field private est:I

.field private expectedModCount:I

.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-boolean v0, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    sput-boolean v0, Ljava8/util/LinkedListSpliterator;->IS_HARMONY:Z

    sget-boolean v0, Ljava8/util/Spliterators;->IS_JAVA6:Z

    sput-boolean v0, Ljava8/util/LinkedListSpliterator;->IS_JAVA6:Z

    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/LinkedListSpliterator;->MODCOUNT_OFF:J

    sget-boolean v0, Ljava8/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz v0, :cond_0

    const-string v0, "voidLink"

    goto :goto_0

    :cond_0
    sget-boolean v0, Ljava8/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-eqz v0, :cond_1

    const-string v0, "header"

    goto :goto_0

    :cond_1
    const-string v0, "first"

    :goto_0
    sget-boolean v1, Ljava8/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz v1, :cond_2

    const-string v1, "java.util.LinkedList$Link"

    goto :goto_1

    :cond_2
    sget-boolean v1, Ljava8/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-eqz v1, :cond_3

    const-string v1, "java.util.LinkedList$Entry"

    goto :goto_1

    :cond_3
    const-string v1, "java.util.LinkedList$Node"

    :goto_1
    sget-boolean v2, Ljava8/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz v2, :cond_4

    const-string v2, "data"

    goto :goto_2

    :cond_4
    sget-boolean v2, Ljava8/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-eqz v2, :cond_5

    const-string v2, "element"

    goto :goto_2

    :cond_5
    const-string v2, "item"

    :goto_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    const-class v4, Ljava/util/LinkedList;

    const-string v5, "size"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Ljava8/util/LinkedListSpliterator;->SIZE_OFF:J

    sget-object v3, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    const-class v4, Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Ljava8/util/LinkedListSpliterator;->FIRST_OFF:J

    sget-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava8/util/LinkedListSpliterator;->NODE_ITEM_OFF:J

    sget-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    const-string v2, "next"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/LinkedListSpliterator;->NODE_NEXT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/LinkedList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    iput p2, p0, Ljava8/util/LinkedListSpliterator;->est:I

    iput p3, p0, Ljava8/util/LinkedListSpliterator;->expectedModCount:I

    sget-boolean p2, Ljava8/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-nez p2, :cond_1

    sget-boolean p2, Ljava8/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava8/util/LinkedListSpliterator;->getHeader(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Ljava8/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    return-void
.end method

.method private getEst()I
    .locals 2

    iget v0, p0, Ljava8/util/LinkedListSpliterator;->est:I

    if-gez v0, :cond_1

    iget-object v0, p0, Ljava8/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Ljava8/util/LinkedListSpliterator;->est:I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava8/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Ljava8/util/LinkedListSpliterator;->expectedModCount:I

    invoke-direct {p0, v0}, Ljava8/util/LinkedListSpliterator;->getFirst(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava8/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    invoke-static {v0}, Ljava8/util/LinkedListSpliterator;->getSize(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ljava8/util/LinkedListSpliterator;->est:I

    :cond_1
    :goto_0
    return v0
.end method

.method private getFirst(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-boolean v0, Ljava8/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ljava8/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v0, Ljava8/util/LinkedListSpliterator;->FIRST_OFF:J

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ljava8/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getHeader(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LinkedListSpliterator;->FIRST_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getModCount(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LinkedListSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static getNextNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LinkedListSpliterator;->NODE_NEXT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LinkedListSpliterator;->NODE_ITEM_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static getSize(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Ljava8/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LinkedListSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static spliterator(Ljava/util/LinkedList;)Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList<",
            "TE;>;)",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/LinkedListSpliterator;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava8/util/LinkedListSpliterator;-><init>(Ljava/util/LinkedList;II)V

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

    invoke-direct {p0}, Ljava8/util/LinkedListSpliterator;->getEst()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/LinkedListSpliterator;->getEst()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Ljava8/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    if-eq v2, v0, :cond_1

    iput-object v0, p0, Ljava8/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Ljava8/util/LinkedListSpliterator;->est:I

    :cond_0
    invoke-static {v2}, Ljava8/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava8/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    :cond_1
    iget p1, p0, Ljava8/util/LinkedListSpliterator;->expectedModCount:I

    iget-object p0, p0, Ljava8/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    invoke-static {p0}, Ljava8/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result p0

    if-ne p1, p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
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

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/LinkedListSpliterator;->getEst()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ljava8/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    if-eq v1, v0, :cond_1

    iget v0, p0, Ljava8/util/LinkedListSpliterator;->est:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Ljava8/util/LinkedListSpliterator;->est:I

    invoke-static {v1}, Ljava8/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava8/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava8/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p0, Ljava8/util/LinkedListSpliterator;->expectedModCount:I

    iget-object p0, p0, Ljava8/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    invoke-static {p0}, Ljava8/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result p0

    if-ne p1, p0, :cond_0

    return v2

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/LinkedListSpliterator;->getEst()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v2, p0, Ljava8/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    if-eq v2, v0, :cond_4

    iget v3, p0, Ljava8/util/LinkedListSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    if-le v3, v1, :cond_0

    move v3, v1

    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2}, Ljava8/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2}, Ljava8/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_3

    if-lt v7, v3, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    :goto_1
    iput-object v2, p0, Ljava8/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    iput v7, p0, Ljava8/util/LinkedListSpliterator;->batch:I

    sub-int/2addr v1, v7

    iput v1, p0, Ljava8/util/LinkedListSpliterator;->est:I

    const/16 p0, 0x10

    invoke-static {v4, v5, v7, p0}, Ljava8/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
