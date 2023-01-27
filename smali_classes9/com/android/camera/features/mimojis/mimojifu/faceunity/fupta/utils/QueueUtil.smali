.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;
.super Ljava/lang/Object;
.source "QueueUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QueueUtil"


# instance fields
.field private arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private gifHardEncoder:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->size:I

    new-instance v1, Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-direct {v1}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->gifHardEncoder:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    sget-object v5, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_SIMPLE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

    const/16 v2, 0x12c

    const/16 v3, 0x12c

    const-string v4, ""

    const/16 v6, 0x1e

    invoke-virtual/range {v1 .. v6}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->init(IILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->size:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->buffer:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->size:I

    if-ge v0, v1, :cond_0

    const v1, 0x57e40

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->buffer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    return-void
.end method

.method public getBuffer()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFull()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->size:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFull:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public noUseFbo()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->buffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->gifHardEncoder:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->buffer:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->readBufferV2([B)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->buffer:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->gifHardEncoder:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->unUseFBO()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->gifHardEncoder:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->close()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->clear()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->buffer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public useFbo()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->gifHardEncoder:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->useFBO()Z

    return-void
.end method
