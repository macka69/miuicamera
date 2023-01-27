.class Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$MarshalerRect;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableChiRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;


# direct methods
.method protected constructor <init>(Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$MarshalerRect;->this$0:Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;Ljava/nio/ByteBuffer;)V
    .locals 0

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->left:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->top:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->width:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->height:I

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$MarshalerRect;->marshal(Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    new-instance v2, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;-><init>(IIII)V

    return-object v2
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$MarshalerRect;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    move-result-object p0

    return-object p0
.end method
