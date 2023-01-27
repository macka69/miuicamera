.class public Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;
.super Ljava/lang/Object;
.source "GifHardEncoderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;,
        Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GifHardEncoderWrapper"


# instance fields
.field private b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:I

.field private k:[I

.field private l:D

.field private m:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    new-instance v1, Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-direct {v1}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;-><init>()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    iput p2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->f:I

    iput p3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->g:I

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->e:Ljava/lang/String;

    sget-object v5, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_SIMPLE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->init(IILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->h:J

    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;

    iget-object p2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;-><init>(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    return-object v0
.end method

.method static synthetic c(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic e(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->m:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    return-object p0
.end method

.method static synthetic f(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)D
    .locals 2

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->l:D

    return-wide v0
.end method

.method static synthetic g(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)J
    .locals 2

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->h:J

    return-wide v0
.end method


# virtual methods
.method public encodeFrame(I[F[F)V
    .locals 7

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    iget-object v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-eqz v2, :cond_2

    int-to-long v5, v2

    rem-long/2addr v0, v5

    sub-int/2addr v2, v3

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    array-length v5, v2

    int-to-long v5, v5

    rem-long/2addr v0, v5

    long-to-int v0, v0

    aget v0, v2, v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-eqz v3, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->updateTexture(I[F[F)J

    move-result-wide p1

    iget-object p3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_key_img"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    new-instance v1, Lcom/faceunity/pta_helper/gif/b;

    invoke-direct {v1, p0}, Lcom/faceunity/pta_helper/gif/b;-><init>(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDiscardAFraction(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    return-void
.end method

.method public setDiscardAFraction([I)V
    .locals 8

    if-eqz p1, :cond_8

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v6, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_6

    aget v7, p1, v4

    if-eqz v7, :cond_2

    if-ne v7, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The array can only contain 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-ne v6, v2, :cond_3

    move v6, v7

    :cond_3
    if-nez v5, :cond_5

    if-ne v6, v7, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v3

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The array contains only one type of element, and the array must contain both 0 and 1 elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public setFps(D)V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->l:D

    return-void
.end method

.method public setListener(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->m:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    return-void
.end method
