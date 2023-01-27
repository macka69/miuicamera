.class public Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
.super Ljava/lang/Object;
.source "MiMotionVelocity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/MiMotionVelocity$MiMotionVelocityMarshaler;,
        Lcom/android/camera2/vendortag/struct/MiMotionVelocity$MiMotionVelocityMarshalQueryable;
    }
.end annotation


# instance fields
.field public mVelocityFastRatio:F

.field public mVelocityMax:F

.field public mVelocityMean:F

.field public mVelocityMiddleRatio:F

.field public mVelocitySlowRatio:F

.field public mVelocityStaticRatio:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityStaticRatio:F

    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocitySlowRatio:F

    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMiddleRatio:F

    iput p4, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityFastRatio:F

    iput p5, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMax:F

    iput p6, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMean:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mVelocityStaticRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityStaticRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocitySlowRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocitySlowRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityMiddleRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMiddleRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityFastRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityFastRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVelocityMean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMean:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
