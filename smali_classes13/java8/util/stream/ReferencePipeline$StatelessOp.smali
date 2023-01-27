.class abstract Ljava8/util/stream/ReferencePipeline$StatelessOp;
.super Ljava8/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatelessOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/ReferencePipeline<",
        "TE_IN;TE_OUT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Ljava8/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljava8/util/stream/ReferencePipeline;-><init>(Ljava8/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method final opIsStateful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/ReferencePipeline;->unordered()Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
