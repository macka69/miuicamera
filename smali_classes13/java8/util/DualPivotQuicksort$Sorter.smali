.class final Ljava8/util/DualPivotQuicksort$Sorter;
.super Ljava8/util/concurrent/CountedCompleter;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133ef52L


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/lang/Object;

.field final depth:I

.field final low:I

.field final offset:I

.field final size:I


# direct methods
.method constructor <init>(Ljava8/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iput-object p3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iput p4, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    iput p5, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    iput p6, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    iput p7, p0, Ljava8/util/DualPivotQuicksort$Sorter;->depth:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 10

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->depth:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CountedCompleter;->setPendingCount(I)V

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    shr-int/lit8 v8, v0, 0x1

    new-instance v9, Ljava8/util/DualPivotQuicksort$Sorter;

    iget-object v2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v4, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    iget v6, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v0, v9

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava8/util/DualPivotQuicksort$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v9}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    new-instance v9, Ljava8/util/DualPivotQuicksort$Sorter;

    iget-object v2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    add-int v4, v0, v8

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    sub-int v5, v0, v8

    iget v6, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava8/util/DualPivotQuicksort$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v9}, Ljava8/util/DualPivotQuicksort$Sorter;->compute()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    instance-of v2, v1, [I

    if-eqz v2, :cond_1

    check-cast v1, [I

    iget v2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava8/util/DualPivotQuicksort;->sort(Ljava8/util/DualPivotQuicksort$Sorter;[IIII)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_2

    check-cast v1, [J

    iget v2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava8/util/DualPivotQuicksort;->sort(Ljava8/util/DualPivotQuicksort$Sorter;[JIII)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, [F

    if-eqz v2, :cond_3

    check-cast v1, [F

    iget v2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava8/util/DualPivotQuicksort;->sort(Ljava8/util/DualPivotQuicksort$Sorter;[FIII)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, [D

    if-eqz v2, :cond_4

    check-cast v1, [D

    iget v2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava8/util/DualPivotQuicksort;->sort(Ljava8/util/DualPivotQuicksort$Sorter;[DIII)V

    :goto_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->tryComplete()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava8/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method forkSorter(III)V
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    iget-object v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    new-instance v0, Ljava8/util/DualPivotQuicksort$Sorter;

    iget-object v4, p0, Ljava8/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    sub-int v6, p3, p2

    iget v7, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    move-object v1, v0

    move-object v2, p0

    move v5, p2

    move v8, p1

    invoke-direct/range {v1 .. v8}, Ljava8/util/DualPivotQuicksort$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    return-void
.end method

.method public final onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    iget p1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->depth:I

    if-gez p1, :cond_6

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    iget v1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    add-int/2addr v0, v1

    and-int/2addr p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance p1, Ljava8/util/DualPivotQuicksort$Merger;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava8/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v1, v3

    :goto_1
    move v6, v1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget v1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    if-eqz v2, :cond_2

    iget v3, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v1, v3

    :cond_2
    move v8, v1

    if-eqz v2, :cond_3

    iget v1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int v1, v0, v1

    move v9, v1

    goto :goto_2

    :cond_3
    move v9, v0

    :goto_2
    iget-object v10, p0, Ljava8/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget v1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v0, v1

    :cond_4
    move v11, v0

    iget v0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->low:I

    if-eqz v2, :cond_5

    iget v1, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v0, v1

    iget p0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v0, p0

    goto :goto_3

    :cond_5
    iget p0, p0, Ljava8/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v0, p0

    :goto_3
    move v12, v0

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Ljava8/util/DualPivotQuicksort$Merger;-><init>(Ljava8/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    :cond_6
    return-void
.end method
