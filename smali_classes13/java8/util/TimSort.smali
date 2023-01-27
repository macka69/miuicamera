.class Ljava8/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


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
.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private tmpBase:I

.field private tmpLen:I


# direct methods
.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Ljava8/util/TimSort;->minGallop:I

    const/4 v0, 0x0

    iput v0, p0, Ljava8/util/TimSort;->stackSize:I

    iput-object p1, p0, Ljava8/util/TimSort;->a:[Ljava/lang/Object;

    iput-object p2, p0, Ljava8/util/TimSort;->c:Ljava/util/Comparator;

    array-length p2, p1

    const/16 v1, 0x200

    if-ge p2, v1, :cond_0

    ushr-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    :goto_0
    if-eqz p3, :cond_2

    if-lt p5, v1, :cond_2

    add-int v2, p4, v1

    array-length v3, p3

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iput-object p3, p0, Ljava8/util/TimSort;->tmp:[Ljava/lang/Object;

    iput p4, p0, Ljava8/util/TimSort;->tmpBase:I

    iput p5, p0, Ljava8/util/TimSort;->tmpLen:I

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/TimSort;->tmp:[Ljava/lang/Object;

    iput v0, p0, Ljava8/util/TimSort;->tmpBase:I

    iput v1, p0, Ljava8/util/TimSort;->tmpLen:I

    :goto_2
    const/16 p1, 0x78

    if-ge p2, p1, :cond_3

    const/4 p1, 0x5

    goto :goto_3

    :cond_3
    const/16 p1, 0x606

    if-ge p2, p1, :cond_4

    const/16 p1, 0xa

    goto :goto_3

    :cond_4
    const p1, 0x1d16f

    if-ge p2, p1, :cond_5

    const/16 p1, 0x18

    goto :goto_3

    :cond_5
    const/16 p1, 0x31

    :goto_3
    new-array p2, p1, [I

    iput-object p2, p0, Ljava8/util/TimSort;->runBase:[I

    new-array p1, p1, [I

    iput-object p1, p0, Ljava8/util/TimSort;->runLen:[I

    return-void
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    if-ne p3, p1, :cond_0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    :cond_0
    if-ge p3, p2, :cond_5

    aget-object v0, p0, p3

    move v1, p1

    move v2, p3

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    add-int v4, v1, v2

    ushr-int/lit8 v3, v4, 0x1

    aget-object v4, p0, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int v2, p3, v1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v2

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p0, v1

    aput-object v3, p0, v2

    :goto_2
    aput-object v0, p0, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p0, v0

    aget-object v2, p0, p1

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v1}, Ljava8/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sub-int/2addr v1, p1

    return v1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    iget v0, p0, Ljava8/util/TimSort;->tmpLen:I

    if-ge v0, p1, :cond_1

    shr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljava8/util/TimSort;->a:[Ljava/lang/Object;

    array-length p1, p1

    ushr-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget-object v0, p0, Ljava8/util/TimSort;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava8/util/TimSort;->tmp:[Ljava/lang/Object;

    iput p1, p0, Ljava8/util/TimSort;->tmpLen:I

    const/4 p1, 0x0

    iput p1, p0, Ljava8/util/TimSort;->tmpBase:I

    :cond_1
    iget-object p0, p0, Ljava8/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object p0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    add-int v0, p2, p4

    aget-object v1, p1, v0

    invoke-interface {p5, p0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    sub-int/2addr p3, p4

    move v1, v3

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_1

    add-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    move v1, v3

    move v3, p3

    goto :goto_0

    :cond_0
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_1
    if-le v3, p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v3

    :goto_1
    add-int/2addr v1, p4

    add-int/2addr p3, p4

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p4, 0x1

    move v1, v3

    move v3, v2

    :goto_2
    if-ge v3, p3, :cond_5

    sub-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_5

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_4

    move v1, v3

    move v3, p3

    goto :goto_2

    :cond_4
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_2

    :cond_5
    if-le v3, p3, :cond_6

    goto :goto_3

    :cond_6
    move p3, v3

    :goto_3
    sub-int p3, p4, p3

    sub-int/2addr p4, v1

    move v1, p3

    move p3, p4

    :goto_4
    add-int/2addr v1, v2

    :goto_5
    if-ge v1, p3, :cond_8

    sub-int p4, p3, v1

    ushr-int/2addr p4, v2

    add-int/2addr p4, v1

    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p5, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_7

    add-int/lit8 p4, p4, 0x1

    move v1, p4

    goto :goto_5

    :cond_7
    move p3, p4

    goto :goto_5

    :cond_8
    return p3
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    add-int v0, p2, p4

    aget-object v1, p1, v0

    invoke-interface {p5, p0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_3

    add-int/lit8 p3, p4, 0x1

    move v1, v3

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_1

    sub-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    move v1, v3

    move v3, p3

    goto :goto_0

    :cond_0
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_1
    if-le v3, p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v3

    :goto_1
    sub-int p3, p4, p3

    sub-int/2addr p4, v1

    goto :goto_4

    :cond_3
    sub-int/2addr p3, p4

    move v1, v3

    move v3, v2

    :goto_2
    if-ge v3, p3, :cond_5

    add-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_4

    move v1, v3

    move v3, p3

    goto :goto_2

    :cond_4
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_2

    :cond_5
    if-le v3, p3, :cond_6

    goto :goto_3

    :cond_6
    move p3, v3

    :goto_3
    add-int v0, v1, p4

    add-int/2addr p4, p3

    move p3, v0

    :goto_4
    add-int/2addr p3, v2

    :goto_5
    if-ge p3, p4, :cond_8

    sub-int v0, p4, p3

    ushr-int/2addr v0, v2

    add-int/2addr v0, p3

    add-int v1, p2, v0

    aget-object v1, p1, v1

    invoke-interface {p5, p0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7

    move p4, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move p3, v0

    goto :goto_5

    :cond_8
    return p4
.end method

.method private mergeAt(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Ljava8/util/TimSort;->runBase:[I

    aget v9, v2, v1

    iget-object v3, v0, Ljava8/util/TimSort;->runLen:[I

    aget v10, v3, v1

    add-int/lit8 v4, v1, 0x1

    aget v15, v2, v4

    aget v14, v3, v4

    add-int v5, v10, v14

    aput v5, v3, v1

    iget v5, v0, Ljava8/util/TimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne v1, v5, :cond_0

    add-int/lit8 v1, v1, 0x2

    aget v5, v2, v1

    aput v5, v2, v4

    aget v1, v3, v1

    aput v1, v3, v4

    :cond_0
    iget v1, v0, Ljava8/util/TimSort;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ljava8/util/TimSort;->stackSize:I

    iget-object v4, v0, Ljava8/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v3, v4, v15

    const/4 v7, 0x0

    iget-object v8, v0, Ljava8/util/TimSort;->c:Ljava/util/Comparator;

    move v5, v9

    move v6, v10

    invoke-static/range {v3 .. v8}, Ljava8/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    add-int/2addr v9, v1

    sub-int/2addr v10, v1

    if-nez v10, :cond_1

    return-void

    :cond_1
    iget-object v12, v0, Ljava8/util/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v9, v10

    add-int/lit8 v1, v1, -0x1

    aget-object v11, v12, v1

    add-int/lit8 v1, v14, -0x1

    iget-object v2, v0, Ljava8/util/TimSort;->c:Ljava/util/Comparator;

    move v13, v15

    move v3, v15

    move v15, v1

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Ljava8/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-gt v10, v1, :cond_3

    invoke-direct {v0, v9, v10, v3, v1}, Ljava8/util/TimSort;->mergeLo(IIII)V

    goto :goto_0

    :cond_3
    invoke-direct {v0, v9, v10, v3, v1}, Ljava8/util/TimSort;->mergeHi(IIII)V

    :goto_0
    return-void
.end method

.method private mergeCollapse()V
    .locals 6

    :goto_0
    iget v0, p0, Ljava8/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_0

    iget-object v2, p0, Ljava8/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    aget v4, v2, v0

    add-int/lit8 v5, v0, 0x1

    aget v2, v2, v5

    add-int/2addr v4, v2

    if-le v3, v4, :cond_1

    :cond_0
    if-le v0, v1, :cond_2

    iget-object v1, p0, Ljava8/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-gt v2, v3, :cond_2

    :cond_1
    iget-object v1, p0, Ljava8/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Ljava8/util/TimSort;->runLen:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-le v2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Ljava8/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    :goto_0
    iget v0, p0, Ljava8/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava8/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava8/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v7, v0, Ljava8/util/TimSort;->a:[Ljava/lang/Object;

    invoke-direct {v0, v2}, Ljava8/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v8

    iget v9, v0, Ljava8/util/TimSort;->tmpBase:I

    invoke-static {v7, v1, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p1, p2

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    add-int v4, v9, v2

    sub-int/2addr v4, v10

    add-int/2addr v1, v2

    sub-int/2addr v1, v10

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v6, v3, -0x1

    aget-object v3, v7, v3

    aput-object v3, v7, v1

    add-int/lit8 v1, p2, -0x1

    if-nez v1, :cond_0

    add-int/lit8 v0, v2, -0x1

    sub-int/2addr v5, v0

    invoke-static {v8, v9, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    if-ne v2, v10, :cond_1

    sub-int/2addr v5, v1

    sub-int/2addr v6, v1

    add-int/2addr v6, v10

    add-int/lit8 v0, v5, 0x1

    invoke-static {v7, v6, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, v8, v4

    aput-object v0, v7, v5

    return-void

    :cond_1
    iget-object v11, v0, Ljava8/util/TimSort;->c:Ljava/util/Comparator;

    iget v3, v0, Ljava8/util/TimSort;->minGallop:I

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_2
    aget-object v15, v8, v4

    aget-object v12, v7, v6

    invoke-interface {v11, v15, v12}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_4

    add-int/lit8 v12, v5, -0x1

    add-int/lit8 v13, v6, -0x1

    aget-object v6, v7, v6

    aput-object v6, v7, v5

    add-int/2addr v14, v10

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_3

    move v6, v13

    goto/16 :goto_4

    :cond_3
    move v5, v12

    move v6, v13

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v12, v5, -0x1

    add-int/lit8 v14, v4, -0x1

    aget-object v4, v8, v4

    aput-object v4, v7, v5

    add-int/2addr v13, v10

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v10, :cond_5

    move v4, v14

    goto/16 :goto_4

    :cond_5
    move v5, v12

    move v4, v14

    const/4 v14, 0x0

    :goto_1
    or-int v12, v14, v13

    if-lt v12, v3, :cond_2

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    :goto_2
    aget-object v1, v8, v15

    add-int/lit8 v5, v12, -0x1

    move-object v2, v7

    move/from16 v3, p1

    move v4, v12

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljava8/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    sub-int v6, v12, v1

    if-eqz v6, :cond_7

    sub-int v1, v16, v6

    sub-int v2, v17, v6

    sub-int v3, v12, v6

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v7, v4, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v3, :cond_6

    move v12, v1

    move v6, v2

    move v1, v3

    move v2, v13

    move v3, v14

    move v4, v15

    goto/16 :goto_4

    :cond_6
    move/from16 v16, v1

    move/from16 v17, v2

    move v12, v3

    :cond_7
    add-int/lit8 v18, v16, -0x1

    add-int/lit8 v19, v15, -0x1

    aget-object v1, v8, v15

    aput-object v1, v7, v16

    add-int/lit8 v13, v13, -0x1

    if-ne v13, v10, :cond_8

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v6, v17

    move/from16 v12, v18

    :goto_3
    move/from16 v4, v19

    goto :goto_4

    :cond_8
    aget-object v1, v7, v17

    add-int/lit8 v5, v13, -0x1

    move-object v2, v8

    move v3, v9

    move v4, v13

    move v15, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljava8/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    sub-int v1, v13, v1

    if-eqz v1, :cond_a

    sub-int v2, v18, v1

    sub-int v4, v19, v1

    sub-int v3, v13, v1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v8, v5, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gt v3, v10, :cond_9

    move v1, v12

    move/from16 v6, v17

    move v12, v2

    move v2, v3

    move v3, v14

    goto :goto_4

    :cond_9
    move/from16 v18, v2

    move v13, v3

    move/from16 v19, v4

    :cond_a
    add-int/lit8 v16, v18, -0x1

    add-int/lit8 v2, v17, -0x1

    aget-object v3, v7, v17

    aput-object v3, v7, v18

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_e

    move v6, v2

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v12, v16

    goto :goto_3

    :goto_4
    if-ge v3, v10, :cond_b

    move v3, v10

    :cond_b
    iput v3, v0, Ljava8/util/TimSort;->minGallop:I

    if-ne v2, v10, :cond_c

    sub-int/2addr v12, v1

    sub-int/2addr v6, v1

    add-int/2addr v6, v10

    add-int/lit8 v0, v12, 0x1

    invoke-static {v7, v6, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, v8, v4

    aput-object v0, v7, v12

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    add-int/lit8 v0, v2, -0x1

    sub-int/2addr v12, v0

    invoke-static {v8, v9, v7, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparison method violates its general contract!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    add-int/lit8 v14, v14, -0x1

    const/4 v3, 0x7

    if-lt v15, v3, :cond_f

    move v4, v10

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    if-lt v1, v3, :cond_10

    move v1, v10

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v1, v4

    if-nez v1, :cond_12

    if-gez v14, :cond_11

    const/4 v14, 0x0

    :cond_11
    add-int/lit8 v3, v14, 0x2

    move v6, v2

    move v1, v12

    move v2, v13

    move/from16 v5, v16

    move/from16 v4, v19

    goto/16 :goto_0

    :cond_12
    move/from16 v17, v2

    move/from16 v15, v19

    goto/16 :goto_2
.end method

.method private mergeLo(IIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v7, v0, Ljava8/util/TimSort;->a:[Ljava/lang/Object;

    invoke-direct {v0, v2}, Ljava8/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v8

    iget v3, v0, Ljava8/util/TimSort;->tmpBase:I

    invoke-static {v7, v1, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, p3, 0x1

    aget-object v6, v7, p3

    aput-object v6, v7, v1

    add-int/lit8 v1, p4, -0x1

    if-nez v1, :cond_0

    invoke-static {v8, v3, v7, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    invoke-static {v7, v5, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v1

    aget-object v0, v8, v3

    aput-object v0, v7, v4

    return-void

    :cond_1
    iget-object v10, v0, Ljava8/util/TimSort;->c:Ljava/util/Comparator;

    iget v6, v0, Ljava8/util/TimSort;->minGallop:I

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_2
    aget-object v14, v7, v5

    aget-object v15, v8, v3

    invoke-interface {v10, v14, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_4

    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v14, v5, 0x1

    aget-object v5, v7, v5

    aput-object v5, v7, v4

    add-int/2addr v13, v9

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_3

    move v5, v14

    goto/16 :goto_4

    :cond_3
    move v4, v12

    move v5, v14

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v13, v4, 0x1

    add-int/lit8 v14, v3, 0x1

    aget-object v3, v8, v3

    aput-object v3, v7, v4

    add-int/2addr v12, v9

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v9, :cond_5

    move v12, v13

    move v3, v14

    goto/16 :goto_4

    :cond_5
    move v4, v13

    move v3, v14

    const/4 v13, 0x0

    :goto_1
    or-int v14, v12, v13

    if-lt v14, v6, :cond_2

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    :goto_2
    aget-object v1, v7, v16

    const/4 v5, 0x0

    move-object v2, v8

    move v3, v14

    move v4, v13

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Ljava8/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v8, v14, v7, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v15, v6

    add-int v3, v14, v6

    sub-int v2, v13, v6

    if-gt v2, v9, :cond_6

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v18, v12

    move v12, v1

    move/from16 v1, v18

    goto/16 :goto_4

    :cond_6
    move v15, v1

    move v13, v2

    move v14, v3

    :cond_7
    add-int/lit8 v5, v15, 0x1

    add-int/lit8 v4, v16, 0x1

    aget-object v1, v7, v16

    aput-object v1, v7, v15

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_8

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v6, v17

    move v12, v5

    move v5, v4

    goto :goto_4

    :cond_8
    aget-object v1, v8, v14

    const/4 v15, 0x0

    move-object v2, v7

    move v3, v4

    move v11, v4

    move v4, v12

    move v9, v5

    move v5, v15

    move v15, v6

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Ljava8/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v7, v11, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v9, v1

    add-int v5, v11, v1

    sub-int v3, v12, v1

    if-nez v3, :cond_9

    move v12, v2

    move v1, v3

    move v2, v13

    move v3, v14

    move/from16 v6, v17

    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    move v12, v3

    move/from16 v16, v5

    move v5, v2

    goto :goto_3

    :cond_a
    move v5, v9

    move/from16 v16, v11

    :goto_3
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v3, v14, 0x1

    aget-object v4, v8, v14

    aput-object v4, v7, v5

    add-int/lit8 v13, v13, -0x1

    const/4 v9, 0x1

    if-ne v13, v9, :cond_e

    move v1, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move v12, v2

    move v2, v13

    :goto_4
    if-ge v6, v9, :cond_b

    move v6, v9

    :cond_b
    iput v6, v0, Ljava8/util/TimSort;->minGallop:I

    if-ne v2, v9, :cond_c

    invoke-static {v7, v5, v7, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v1

    aget-object v0, v8, v3

    aput-object v0, v7, v12

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {v8, v3, v7, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparison method violates its general contract!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    add-int/lit8 v17, v17, -0x1

    const/4 v4, 0x7

    if-lt v15, v4, :cond_f

    move v5, v9

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    :goto_6
    if-lt v1, v4, :cond_10

    move v1, v9

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v1, v5

    if-nez v1, :cond_12

    if-gez v17, :cond_11

    const/4 v11, 0x0

    goto :goto_8

    :cond_11
    move/from16 v11, v17

    :goto_8
    add-int/lit8 v6, v11, 0x2

    move v4, v2

    move v1, v12

    move v2, v13

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_12
    move v15, v2

    move v14, v3

    goto/16 :goto_2
.end method

.method private static minRunLength(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method private pushRun(II)V
    .locals 2

    iget-object v0, p0, Ljava8/util/TimSort;->runBase:[I

    iget v1, p0, Ljava8/util/TimSort;->stackSize:I

    aput p1, v0, v1

    iget-object p1, p0, Ljava8/util/TimSort;->runLen:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava8/util/TimSort;->stackSize:I

    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 3

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_0

    aget-object v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-object v2, p0, p2

    aput-object v2, p0, p1

    add-int/lit8 p1, p2, -0x1

    aput-object v0, p0, p2

    move p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    invoke-static {p0, p1, p2, p3}, Ljava8/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result p4

    add-int/2addr p4, p1

    invoke-static {p0, p1, p2, p4, p3}, Ljava8/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    return-void

    :cond_1
    new-instance v7, Ljava8/util/TimSort;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Ljava8/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V

    invoke-static {v0}, Ljava8/util/TimSort;->minRunLength(I)I

    move-result p4

    :cond_2
    invoke-static {p0, p1, p2, p3}, Ljava8/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result p5

    if-ge p5, p4, :cond_4

    if-gt v0, p4, :cond_3

    move p6, v0

    goto :goto_0

    :cond_3
    move p6, p4

    :goto_0
    add-int v1, p1, p6

    add-int/2addr p5, p1

    invoke-static {p0, p1, v1, p5, p3}, Ljava8/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    move p5, p6

    :cond_4
    invoke-direct {v7, p1, p5}, Ljava8/util/TimSort;->pushRun(II)V

    invoke-direct {v7}, Ljava8/util/TimSort;->mergeCollapse()V

    add-int/2addr p1, p5

    sub-int/2addr v0, p5

    if-nez v0, :cond_2

    invoke-direct {v7}, Ljava8/util/TimSort;->mergeForceCollapse()V

    return-void
.end method
