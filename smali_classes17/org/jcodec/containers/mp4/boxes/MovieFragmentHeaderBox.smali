.class public Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;
.super Lorg/jcodec/containers/mp4/boxes/FullBox;
.source "MovieFragmentHeaderBox.java"


# instance fields
.field private sequenceNumber:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMovieFragmentHeaderBox()Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "mfhd"

    return-object v0
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->doWrite(Ljava/nio/ByteBuffer;)V

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->sequenceNumber:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getSequenceNumber()I
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->sequenceNumber:I

    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->parse(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->sequenceNumber:I

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->sequenceNumber:I

    return-void
.end method
