.class abstract Ljava8/util/stream/Nodes$EmptyNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EmptyNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$EmptyNode$OfDouble;,
        Ljava8/util/stream/Nodes$EmptyNode$OfLong;,
        Ljava8/util/stream/Nodes$EmptyNode$OfInt;,
        Ljava8/util/stream/Nodes$EmptyNode$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    return-void
.end method

.method public count()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava8/util/stream/Nodes;->getChild()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    invoke-static {}, Ljava8/util/stream/Nodes;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getShape()Ljava8/util/stream/StreamShape;
    .locals 0

    invoke-static {}, Ljava8/util/stream/Nodes;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object p0

    return-object p0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes;->truncate(Ljava8/util/stream/Node;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method
