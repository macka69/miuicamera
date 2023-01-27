.class public Lcom/android/camera2/vendortag/struct/MiMotionVelocity$MiMotionVelocityMarshaler;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MiMotionVelocity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiMotionVelocityMarshaler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/MiMotionVelocity;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "Lcom/android/camera2/vendortag/struct/MiMotionVelocity;",
            ">;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/MiMotionVelocity;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/MiMotionVelocity;Ljava/nio/ByteBuffer;)V
    .locals 0

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityStaticRatio:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocitySlowRatio:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMiddleRatio:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityFastRatio:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMax:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->mVelocityMean:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity$MiMotionVelocityMarshaler;->marshal(Lcom/android/camera2/vendortag/struct/MiMotionVelocity;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
    .locals 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    new-instance p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;-><init>(FFFFFF)V

    return-object p0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity$MiMotionVelocityMarshaler;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    move-result-object p0

    return-object p0
.end method
