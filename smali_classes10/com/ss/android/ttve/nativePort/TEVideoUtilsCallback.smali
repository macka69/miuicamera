.class public Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;
.super Ljava/lang/Object;
.source "TEVideoUtilsCallback.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private listener:Lcom/ss/android/vesdk/VEFrameAvailableListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateFrame(II)Ljava/nio/ByteBuffer;
    .locals 0

    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static onFrameAvailable(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .locals 2

    instance-of v0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->listener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onFrameAvailable(Ljava/nio/ByteBuffer;III)Z
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->listener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ss/android/vesdk/VEFrameAvailableListener;

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->listener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    return-void
.end method
