.class public Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;
.super Lorg/jcodec/containers/mp4/boxes/SampleEntry;
.source "VideoSampleEntry.java"


# instance fields
.field private clrTbl:S

.field private compressorName:Ljava/lang/String;

.field private depth:S

.field private frameCount:S

.field private hRes:F

.field private height:S

.field private revision:S

.field private spacialQual:I

.field private temporalQual:I

.field private vRes:F

.field private vendor:Ljava/lang/String;

.field private version:S

.field private width:S


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createVideoSampleEntry(Lorg/jcodec/containers/mp4/boxes/Header;SSLjava/lang/String;IISSJJSLjava/lang/String;SSS)Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    move-object v1, p0

    invoke-direct {v0, p0}, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    move/from16 v1, p15

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->drefInd:S

    move v1, p1

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->version:S

    move v1, p2

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->revision:S

    move-object v1, p3

    iput-object v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vendor:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->temporalQual:I

    move v1, p5

    iput v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->spacialQual:I

    move v1, p6

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->width:S

    move v1, p7

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->height:S

    move-wide v1, p8

    long-to-float v1, v1

    iput v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->hRes:F

    move-wide v1, p10

    long-to-float v1, v1

    iput v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vRes:F

    move v1, p12

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->frameCount:S

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->compressorName:Ljava/lang/String;

    move/from16 v1, p14

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->depth:S

    move/from16 v1, p16

    iput-short v1, v0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->clrTbl:S

    return-object v0
.end method

.method public static videoSampleEntry(Ljava/lang/String;Lorg/jcodec/common/model/Size;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;
    .locals 17

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Header;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/jcodec/common/model/Size;->getWidth()I

    move-result v1

    int-to-short v6, v1

    invoke-virtual/range {p1 .. p1}, Lorg/jcodec/common/model/Size;->getHeight()I

    move-result v1

    int-to-short v7, v1

    if-eqz p2, :cond_0

    move-object/from16 v13, p2

    goto :goto_0

    :cond_0
    const-string v1, "org/jcodec"

    move-object v13, v1

    :goto_0
    const/16 v14, 0x18

    const/4 v15, 0x1

    const/16 v16, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "jcod"

    const/4 v4, 0x0

    const/16 v5, 0x300

    const-wide/16 v8, 0x48

    const-wide/16 v10, 0x48

    const/4 v12, 0x1

    invoke-static/range {v0 .. v16}, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->createVideoSampleEntry(Lorg/jcodec/containers/mp4/boxes/Header;SSLjava/lang/String;IISSJJSLjava/lang/String;SSS)Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->doWrite(Ljava/nio/ByteBuffer;)V

    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->version:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->revision:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vendor:Ljava/lang/String;

    invoke-static {v0}, Lorg/jcodec/common/JCodecUtil2;->asciiString(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->temporalQual:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->spacialQual:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->width:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->height:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->hRes:F

    const/high16 v2, 0x47800000    # 65536.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vRes:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->frameCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->compressorName:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-static {p1, v0, v1}, Lorg/jcodec/common/io/NIOUtils;->writePascalStringL(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->depth:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->clrTbl:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->writeExtensions(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getClrTbl()S
    .locals 0

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->clrTbl:S

    return p0
.end method

.method public getCompressorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->compressorName:Ljava/lang/String;

    return-object p0
.end method

.method public getDepth()J
    .locals 2

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->depth:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getFrameCount()J
    .locals 2

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->frameCount:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->height:S

    return p0
.end method

.method public getRevision()S
    .locals 0

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->revision:S

    return p0
.end method

.method public getSpacialQual()I
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->spacialQual:I

    return p0
.end method

.method public getTemporalQual()I
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->temporalQual:I

    return p0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vendor:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()S
    .locals 0

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->version:S

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget-short p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->width:S

    return p0
.end method

.method public gethRes()F
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->hRes:F

    return p0
.end method

.method public getvRes()F
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vRes:F

    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->parse(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->version:S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->revision:S

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vendor:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->temporalQual:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->spacialQual:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->width:S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->height:S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->hRes:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->vRes:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->frameCount:S

    const/16 v0, 0x1f

    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->readPascalStringL(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->compressorName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->depth:S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;->clrTbl:S

    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->parseExtensions(Ljava/nio/ByteBuffer;)V

    return-void
.end method
