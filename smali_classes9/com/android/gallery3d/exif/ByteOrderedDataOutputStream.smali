.class Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ByteOrderedDataOutputStream.java"


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeShort(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeUnsignedInt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->writeInt(I)V

    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ByteOrderedDataOutputStream;->writeShort(S)V

    return-void
.end method
