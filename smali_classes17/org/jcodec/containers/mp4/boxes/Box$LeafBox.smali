.class public Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodec/containers/mp4/boxes/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeafBox"
.end annotation


# instance fields
.field data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1, p0}, Lorg/jcodec/common/io/NIOUtils;->write(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public estimateSize()I
    .locals 1

    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p0}, Lorg/jcodec/containers/mp4/boxes/Header;->estimateHeaderSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method
