.class public Lorg/jcodec/containers/mp4/boxes/SampleEntry;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "SampleEntry.java"


# instance fields
.field protected drefInd:S


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->drefInd:S

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public estimateSize()I
    .locals 0

    invoke-super {p0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->estimateSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getDrefInd()S
    .locals 0

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->drefInd:S

    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->drefInd:S

    return-void
.end method

.method protected parseExtensions(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->parse(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setDrefInd(S)V
    .locals 0

    iput-short p1, p0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->drefInd:S

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-direct {v0, p1}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    return-void
.end method

.method protected writeExtensions(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->doWrite(Ljava/nio/ByteBuffer;)V

    return-void
.end method
