.class final Ljava8/util/DualPivotQuicksort$RunMerger;
.super Ljava8/util/concurrent/RecursiveTask;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/RecursiveTask<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133ef52L


# instance fields
.field private final a:Ljava/lang/Object;

.field private final aim:I

.field private final b:Ljava/lang/Object;

.field private final hi:I

.field private final lo:I

.field private final offset:I

.field private final run:[I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V
    .locals 0

    invoke-direct {p0}, Ljava8/util/concurrent/RecursiveTask;-><init>()V

    iput-object p1, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    iput p3, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iput p4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    iput-object p5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iput p6, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iput p7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    return-void
.end method


# virtual methods
.method protected final compute()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, [I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [I

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, [J

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, [J

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [J

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, [F

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, [F

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [F

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, v0, [D

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, [D

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [D

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method forkMe()Ljava8/util/DualPivotQuicksort$RunMerger;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    return-object p0
.end method

.method getDestination()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/concurrent/RecursiveTask;->getRawResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
