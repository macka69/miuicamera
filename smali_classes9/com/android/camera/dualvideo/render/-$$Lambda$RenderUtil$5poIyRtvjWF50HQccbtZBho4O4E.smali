.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$5poIyRtvjWF50HQccbtZBho4O4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$5poIyRtvjWF50HQccbtZBho4O4E;->f$0:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$5poIyRtvjWF50HQccbtZBho4O4E;->f$0:F

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->lambda$getExpandRatio$1(FLcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
