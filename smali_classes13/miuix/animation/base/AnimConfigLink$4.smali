.class final Lmiuix/animation/base/AnimConfigLink$4;
.super Ljava/lang/Object;
.source "AnimConfigLink.java"

# interfaces
.implements Lmiuix/animation/base/AnimConfigLink$IMapOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/base/AnimConfigLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/animation/base/AnimConfigLink$IMapOperation<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    iget p0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p0, p0, p2

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, p2

    if-nez p0, :cond_1

    iget p0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p1, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/base/AnimConfigLink$4;->process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
