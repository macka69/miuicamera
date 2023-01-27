.class Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "FakeSatStreamConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarshalerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final NATIVE_SIZE:I = 0x18


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;",
            ">;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;Ljava/nio/ByteBuffer;)V
    .locals 0

    iget p0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStart:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStop:F

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->unused:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;->marshal(Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
    .locals 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    new-instance p0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;-><init>(FFIIII)V

    return-object p0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object p0

    return-object p0
.end method
