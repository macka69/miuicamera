.class Lcom/xiaomi/mediacodec/VideoEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mediacodec/VideoEncoder;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/mediacodec/VideoEncoder$VideoEncoderCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mediacodec/VideoEncoder;


# direct methods
.method constructor <init>(Lcom/xiaomi/mediacodec/VideoEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " MediaCodec "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onError:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogE(Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    const-string p0, " Input Buffer Avail"

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$000(Lcom/xiaomi/mediacodec/VideoEncoder;)Lcom/xiaomi/mediacodec/VideoEncoder$VideoEncoderCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$000(Lcom/xiaomi/mediacodec/VideoEncoder;)Lcom/xiaomi/mediacodec/VideoEncoder$VideoEncoderCallBack;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaomi/mediacodec/VideoEncoder$VideoEncoderCallBack;->onVideoEncodedFrame(Z)V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$100(Lcom/xiaomi/mediacodec/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add video info.size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$208(Lcom/xiaomi/mediacodec/VideoEncoder;)J

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$300(Lcom/xiaomi/mediacodec/VideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$500(Lcom/xiaomi/mediacodec/VideoEncoder;)Landroid/media/MediaMuxer;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {v2}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$400(Lcom/xiaomi/mediacodec/VideoEncoder;)I

    move-result v2

    invoke-virtual {v0, v2, p1, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v3, [B

    invoke-virtual {p1, v4, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4, v1, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    new-instance p1, Lcom/xiaomi/mediacodec/MoviePlayer;

    invoke-direct {p1}, Lcom/xiaomi/mediacodec/MoviePlayer;-><init>()V

    new-instance v3, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;

    invoke-direct {v3, p1}, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;-><init>(Lcom/xiaomi/mediacodec/MoviePlayer;)V

    iput-object v2, v3, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, v3, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$600(Lcom/xiaomi/mediacodec/VideoEncoder;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$100(Lcom/xiaomi/mediacodec/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$000(Lcom/xiaomi/mediacodec/VideoEncoder;)Lcom/xiaomi/mediacodec/VideoEncoder$VideoEncoderCallBack;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "encode EOF mEncoderNums "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p2}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$200(Lcom/xiaomi/mediacodec/VideoEncoder;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$000(Lcom/xiaomi/mediacodec/VideoEncoder;)Lcom/xiaomi/mediacodec/VideoEncoder$VideoEncoderCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/mediacodec/VideoEncoder$VideoEncoderCallBack;->onVideoEncoderEOF()V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$402(Lcom/xiaomi/mediacodec/VideoEncoder;I)I

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$700(Lcom/xiaomi/mediacodec/VideoEncoder;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p0}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$800(Lcom/xiaomi/mediacodec/VideoEncoder;)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " found exception at dump "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "couldn\'t fetch buffer at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encoder Output Format changed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$400(Lcom/xiaomi/mediacodec/VideoEncoder;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/mediacodec/VideoEncoder$1;->this$0:Lcom/xiaomi/mediacodec/VideoEncoder;

    invoke-static {p0}, Lcom/xiaomi/mediacodec/VideoEncoder;->access$100(Lcom/xiaomi/mediacodec/VideoEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/mediacodec/VideoEncoder;->addMediaTrack(Landroid/media/MediaFormat;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "format changed twice"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
