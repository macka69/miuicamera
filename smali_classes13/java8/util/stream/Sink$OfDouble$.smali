.class public Ljava8/util/stream/Sink$OfDouble$;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava8/util/stream/Sink;
.implements Ljava8/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Sink<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava8/util/function/DoubleConsumer;"
    }
.end annotation


# direct methods
.method public static bridge synthetic accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0, p1}, Ljava8/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method
