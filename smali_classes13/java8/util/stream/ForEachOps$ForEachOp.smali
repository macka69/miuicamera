.class abstract Ljava8/util/stream/ForEachOps$ForEachOp;
.super Ljava/lang/Object;
.source "ForEachOps.java"

# interfaces
.implements Ljava8/util/stream/TerminalOp;
.implements Ljava8/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ForEachOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/ForEachOps$ForEachOp$OfDouble;,
        Ljava8/util/stream/ForEachOps$ForEachOp$OfLong;,
        Ljava8/util/stream/ForEachOps$ForEachOp$OfInt;,
        Ljava8/util/stream/ForEachOps$ForEachOp$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/TerminalOp<",
        "TT;",
        "Ljava/lang/Void;",
        ">;",
        "Ljava8/util/stream/TerminalSink<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final ordered:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljava8/util/stream/ForEachOps$ForEachOp;->ordered:Z

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public begin(J)V
    .locals 0

    return-void
.end method

.method public cancellationRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v0, p1, p2, p0}, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)V

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava8/util/stream/ForEachOps$ForEachTask;

    invoke-virtual {p1, p0}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Ljava8/util/stream/ForEachOps$ForEachTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)V

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/ForEachOps$ForEachOp;

    invoke-virtual {p0}, Ljava8/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpFlags()I
    .locals 0

    iget-boolean p0, p0, Ljava8/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p0, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_0
    return p0
.end method

.method public inputShape()Ljava8/util/stream/StreamShape;
    .locals 0

    sget-object p0, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    return-object p0
.end method
