.class final Ljava8/util/ArrayPrefixHelpers$CumulateTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final fence:I

.field final function:Ljava8/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final hi:I

.field in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final lo:I

.field final origin:I

.field out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    sub-int/2addr p5, p4

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    div-int/2addr p5, p1

    const/16 p1, 0x10

    if-gt p5, p1, :cond_0

    move p5, p1

    :cond_0
    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    return-void
.end method

.method constructor <init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;[TT;IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p6, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    iput p7, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    if-eqz v9, :cond_1d

    iget-object v11, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    if-eqz v11, :cond_1d

    iget v12, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    iget v13, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iget v14, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    move-object v15, v0

    :cond_0
    :goto_0
    iget v8, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ltz v8, :cond_1c

    iget v7, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    array-length v0, v11

    if-gt v7, v0, :cond_1c

    sub-int v0, v7, v8

    const/4 v1, 0x1

    if-le v0, v12, :cond_a

    iget-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    iget-object v2, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-nez v0, :cond_1

    add-int v0, v8, v7

    ushr-int/lit8 v16, v0, 0x1

    new-instance v6, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v0, v6

    move-object v1, v15

    move-object v2, v9

    move-object v3, v11

    move v4, v13

    move v5, v14

    move-object v10, v6

    move v6, v12

    move/from16 p0, v7

    move/from16 v7, v16

    move/from16 v17, v8

    move/from16 v8, p0

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v10, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    new-instance v8, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v0, v8

    move/from16 v7, v17

    move-object/from16 v18, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v10, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v15, v10

    move-object/from16 v6, v18

    goto :goto_6

    :cond_1
    move/from16 v17, v8

    iget-object v1, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    iput-object v1, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v3, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move/from16 v4, v17

    if-ne v4, v13, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v9, v1, v3}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    or-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x0

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_7

    move-object v0, v2

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    or-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1, v3}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    move-object v6, v2

    :goto_5
    if-nez v0, :cond_9

    goto/16 :goto_e

    :cond_9
    move-object v15, v0

    :goto_6
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    :cond_a
    move/from16 p0, v7

    move v4, v8

    :cond_b
    invoke-virtual {v15}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_c

    goto/16 :goto_e

    :cond_c
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x4

    if-eqz v2, :cond_d

    move v2, v5

    goto :goto_7

    :cond_d
    if-le v4, v13, :cond_e

    move v2, v3

    goto :goto_7

    :cond_e
    const/4 v2, 0x6

    :goto_7
    or-int v6, v0, v2

    invoke-virtual {v15, v0, v6}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eq v2, v3, :cond_10

    if-ne v4, v13, :cond_f

    aget-object v0, v11, v13

    add-int/lit8 v8, v13, 0x1

    goto :goto_8

    :cond_f
    iget-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move v8, v4

    :goto_8
    move/from16 v6, p0

    :goto_9
    if-ge v8, v6, :cond_12

    aget-object v4, v11, v8

    invoke-interface {v9, v0, v4}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    move/from16 v6, p0

    if-ge v6, v14, :cond_11

    aget-object v0, v11, v4

    add-int/lit8 v8, v4, 0x1

    :goto_a
    if-ge v8, v6, :cond_12

    aget-object v4, v11, v8

    invoke-interface {v9, v0, v4}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    iget-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    :cond_12
    iput-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    :cond_13
    :goto_b
    invoke-virtual {v15}, Ljava8/util/concurrent/CountedCompleter;->getCompleter()Ljava8/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-nez v0, :cond_14

    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_1c

    invoke-virtual {v15}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto :goto_e

    :cond_14
    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v4

    and-int v6, v4, v2

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_15

    move-object v15, v0

    goto :goto_b

    :cond_15
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1b

    iget-object v6, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v6, :cond_17

    iget-object v7, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v7, :cond_17

    iget-object v6, v6, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    iget v8, v7, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v8, v14, :cond_16

    goto :goto_c

    :cond_16
    iget-object v7, v7, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    invoke-interface {v9, v6, v7}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_c
    iput-object v6, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    :cond_17
    and-int/lit8 v6, v4, 0x1

    if-nez v6, :cond_18

    iget v6, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v6, v13, :cond_18

    move v6, v1

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_d
    or-int v7, v4, v2

    or-int/2addr v7, v6

    if-eq v7, v4, :cond_19

    invoke-virtual {v0, v4, v7}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_19
    if-eqz v6, :cond_1a

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_1a
    move-object v15, v0

    move v2, v3

    goto :goto_b

    :cond_1b
    or-int v6, v4, v2

    invoke-virtual {v0, v4, v6}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_1c
    :goto_e
    return-void

    :cond_1d
    const/4 v0, 0x0

    throw v0
.end method
