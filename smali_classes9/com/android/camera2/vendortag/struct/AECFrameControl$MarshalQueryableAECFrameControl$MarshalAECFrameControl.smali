.class Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl$MarshalAECFrameControl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "AECFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalAECFrameControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/AECFrameControl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;


# direct methods
.method protected constructor <init>(Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/AECFrameControl;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl$MarshalAECFrameControl;->this$0:Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    const/16 p0, 0x48

    return p0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/AECFrameControl;Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->access$000(Lcom/android/camera2/vendortag/struct/AECFrameControl;)[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v0

    aget-object v0, v0, p0

    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$100(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->access$000(Lcom/android/camera2/vendortag/struct/AECFrameControl;)[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v0

    aget-object v0, v0, p0

    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$200(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->access$000(Lcom/android/camera2/vendortag/struct/AECFrameControl;)[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v0

    aget-object v0, v0, p0

    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$300(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->access$000(Lcom/android/camera2/vendortag/struct/AECFrameControl;)[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v0

    aget-object v0, v0, p0

    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$400(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/vendortag/struct/AECFrameControl;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl$MarshalAECFrameControl;->marshal(Lcom/android/camera2/vendortag/struct/AECFrameControl;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/AECFrameControl;
    .locals 5

    const/4 p0, 0x3

    new-array v0, p0, [Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-instance v2, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    invoke-direct {v2}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$102(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;J)J

    aget-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$202(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F

    aget-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$302(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F

    aget-object v2, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->access$402(Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;

    invoke-direct {p0, v0}, Lcom/android/camera2/vendortag/struct/AECFrameControl;-><init>([Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;)V

    return-object p0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl$MarshalAECFrameControl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/AECFrameControl;

    move-result-object p0

    return-object p0
.end method
