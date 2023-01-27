.class public Lcom/android/camera/jcodec/MCoverBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "MCoverBox.java"


# static fields
.field private static final FOURCC:Ljava/lang/String; = "mcvr"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createCoverBox([B)Lcom/android/camera/jcodec/MCoverBox;
    .locals 4

    new-instance v0, Lcom/android/camera/jcodec/MCoverBox;

    const-string v1, "mcvr"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/jcodec/MCoverBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    iput-object p0, v0, Lcom/android/camera/jcodec/MCoverBox;->data:[B

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "mcvr"

    return-object v0
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/jcodec/MCoverBox;->data:[B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/jcodec/MCoverBox;->data:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/jcodec/MCoverBox;->data:[B

    return-object p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readBuf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/jcodec/MCoverBox;->data:[B

    return-void
.end method
