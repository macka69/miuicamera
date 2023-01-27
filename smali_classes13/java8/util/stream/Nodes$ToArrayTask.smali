.class abstract Ljava8/util/stream/Nodes$ToArrayTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToArrayTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$ToArrayTask$OfDouble;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfLong;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfInt;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava8/util/stream/Node<",
        "TT;>;K:",
        "Ljava8/util/stream/Nodes$ToArrayTask<",
        "TT;TT_NODE;TK;>;>",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final node:Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final offset:I


# direct methods
.method constructor <init>(Ljava8/util/stream/Node;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/CountedCompleter;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    iput p2, p0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/Nodes$ToArrayTask;Ljava8/util/stream/Node;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT_NODE;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    iput p3, p0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method


# virtual methods
.method public compute()V
    .locals 7

    :goto_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v0}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v0}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CountedCompleter;->setPendingCount(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v2}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget v2, p0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava8/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask;

    move-result-object v2

    int-to-long v3, v1

    iget-object v1, v2, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava8/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask;

    move-result-object p0

    goto :goto_0
.end method

.method abstract copyNodeToArray()V
.end method

.method abstract makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation
.end method
