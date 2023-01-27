.class Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SatZoomSplineData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarshalerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
            ">;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/SatZoomSplineData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    sget p0, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    return p0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/SatZoomSplineData;Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-byte p0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte p0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte p0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v0, p0

    :goto_0
    iget-byte v1, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-byte v1, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->zooms:[F

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-byte v0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    if-ge p0, v0, :cond_3

    if-ge p0, v0, :cond_2

    iget-object v0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->times:[F

    aget v0, v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;->marshal(Lcom/android/camera2/vendortag/struct/SatZoomSplineData;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatZoomSplineData;
    .locals 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    new-array v4, v2, [F

    new-array v5, v2, [F

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, v3, :cond_1

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    aput v6, v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge p0, v3, :cond_3

    if-ge p0, v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    aput v0, v5, p0

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;-><init>(BBB[F[F)V

    return-object p0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    move-result-object p0

    return-object p0
.end method
