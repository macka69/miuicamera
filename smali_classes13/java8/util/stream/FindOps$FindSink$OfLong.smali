.class final Ljava8/util/stream/FindOps$FindSink$OfLong;
.super Ljava8/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/FindOps$FindSink<",
        "Ljava/lang/Long;",
        "Ljava8/util/OptionalLong;",
        ">;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava8/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/FindOps$FindSink$OfLong;->get()Ljava8/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava8/util/OptionalLong;
    .locals 2

    iget-boolean v0, p0, Ljava8/util/stream/FindOps$FindSink;->hasValue:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava8/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/OptionalLong;->of(J)Ljava8/util/OptionalLong;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
