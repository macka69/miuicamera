.class public Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;
.super Lorg/jcodec/containers/mp4/boxes/FullBox;
.source "SoundMediaHeaderBox.java"


# instance fields
.field private balance:S


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createSoundMediaHeaderBox()Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "smhd"

    return-object v0
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->doWrite(Ljava/nio/ByteBuffer;)V

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;->balance:S

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getBalance()S
    .locals 0

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;->balance:S

    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->parse(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;->balance:S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    return-void
.end method
